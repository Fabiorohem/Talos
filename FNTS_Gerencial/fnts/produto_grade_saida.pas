unit produto_grade_saida;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset, StdCtrls,
  Buttons, ExtCtrls, TFlatPanelUnit, Collection, Grids, Wwdbigrd, Wwdbgrid,
  Menus, Mask, JvExMask, JvToolEdit, JvBaseEdits;

type
  Tfrmproduto_grade_saida = class(TForm)
    dsgrade_produto: TDataSource;
    wwDBGrid1: TwwDBGrid;
    ViewSplit1: TViewSplit;
    pgravar: TFlatPanel;
    bgravar: TBitBtn;
    qrgrade_saida: TZQuery;
    FlipPanel1: TFlipPanel;
    Label1: TLabel;
    Label2: TLabel;
    RTOTAL: TJvCalcEdit;
    RDIGITADO: TJvCalcEdit;
    Label3: TLabel;
    RDIFERENCA: TJvCalcEdit;
    Pop2: TPopupMenu;
    Gravar1: TMenuItem;
    Fechar1: TMenuItem;
    qrgrade_saidaCODIGO: TWideStringField;
    qrgrade_saidaCODPRODUTO: TWideStringField;
    qrgrade_saidaCODNOTA: TWideStringField;
    qrgrade_saidaQTDE: TFloatField;
    qrgrade_saidaCODGRADE: TWideStringField;
    qrgrade_saidaCODITEM: TWideStringField;
    qrgrade_saidaNUMERACAO: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure bgravarClick(Sender: TObject);
    procedure bcancelarClick(Sender: TObject);
    procedure RDIFERENCAChange(Sender: TObject);
    procedure qrgrade_saidaBeforeEdit(DataSet: TDataSet);
    procedure qrgrade_saidaBeforeInsert(DataSet: TDataSet);
    procedure qrgrade_saidaAfterPost(DataSet: TDataSet);
    procedure wwDBGrid1Enter(Sender: TObject);
    procedure wwDBGrid1Exit(Sender: TObject);
    procedure qrgrade_saidaAfterInsert(DataSet: TDataSet);
    procedure Fechar1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmproduto_grade_saida: Tfrmproduto_grade_saida;
  qtde_anterior: real;
  nao_incluir: boolean;

implementation

uses modulo, principal;

{$R *.dfm}

procedure Tfrmproduto_grade_saida.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action := cafree;
end;

procedure Tfrmproduto_grade_saida.FormShow(Sender: TObject);
begin
  {
  nao_incluir := false;


 // qrgrade_saida.close;
//  qrgrade_saida.SQL.clear;
//  qrgrade_saida.SQL.add('select * from c000033 where codITEM = ''' + frmPRODUTO_saida.qrsaida_ITEM.fieldbyname('codigo').asstring + ''' order by codigo');
//  qrgrade_saida.open;


  if QRGRADE_saida.RecordCount = 0 then
  begin
    frmmodulo.qrgrade_produto.close;
    frmmodulo.qrgrade_produto.sql.clear;
    frmmodulo.qrgrade_produto.sql.add('select * from c000021 where codproduto = ''' + frmmodulo.qrproduto.fieldbyname('codigo').asstring + ''' order by codigo');
    frmmodulo.qrgrade_produto.Open;
    frmmodulo.qrgrade_produto.First;
    while not frmmodulo.qrgrade_produto.eof do
    begin
      qrgrade_saida.Insert;
      qrgrade_saida.fieldbyname('codigo').asstring := frmprincipal.codifica('000033');
      qrgrade_saida.fieldbyname('codproduto').asstring := frmproduto_saida.qrsaida_item.fieldbyname('codproduto').asstring;
      qrgrade_saida.fieldbyname('codnota').asstring := frmmodulo.qrsaida_produto.fieldbyname('codigo').asstring;
      qrgrade_saida.fieldbyname('coditem').asstring := frmproduto_saida.qrsaida_item.fieldbyname('codigo').asstring;
      qrgrade_saida.fieldbyname('codgrade').asstring := frmmodulo.qrgrade_produto.fieldbyname('codigo').asstring;
      qrgrade_saida.fieldbyname('qtde').asfloat := 0;
      qrgrade_saida.post;
      frmmodulo.qrgrade_produto.Next;
    end;
    RTOTAL.Value := frmproduto_saida.qrsaida_item.fieldbyname('qtde').asfloat;
    rdigitado.Value := 0;
    Rdiferenca.Value := frmproduto_saida.qrsaida_item.fieldbyname('qtde').asfloat;
  end
  else
  begin

    RTOTAL.Value := 0;
    rdigitado.Value := 0;
    Rdiferenca.Value := 0;
    qrgrade_saida.first;
    RTOTAL.Value := frmproduto_saida.qrsaida_item.fieldbyname('qtde').asfloat;
    while not qrgrade_saida.eof do
    begin
      rdigitado.Value := qrgrade_saida.fieldbyname('qtde').asfloat + rdigitado.value;
      qrgrade_saida.Next;
    end;
    rdiferenca.Value := rdigitado.Value - rtotal.value;
  end;

  qrgrade_saida.Refresh;
  wwDBGrid1.setfocus;   }
end;

procedure Tfrmproduto_grade_saida.bgravarClick(Sender: TObject);
begin



  if qrgrade_saida.State = dsedit then
    qrgrade_saida.Post;


  application.ProcessMessages;



  if (rdiferenca.value <> 0) then
  begin
    if rdigitado.Value <> 0 then
    begin
      application.MessageBox('Os valores digitados nesta grade n�o confere com a quantidade deste produto! Caso n�o queira utilizar esta grade, favor zerar todos os valores no campo "QTDE".', 'Aten��o', mb_ok + MB_ICONWARNING);
      wwdbgrid1.setfocus;
    end
    else
    begin
      qrgrade_saida.Refresh;
      close;
    end;
  end
  else
  begin
    qrgrade_saida.Refresh;
    close;
  end;
end;

procedure Tfrmproduto_grade_saida.bcancelarClick(Sender: TObject);
begin
  close;
end;

procedure Tfrmproduto_grade_saida.RDIFERENCAChange(Sender: TObject);
begin
  try
    if rdiferenca.Value = 0 then rdiferenca.Font.Color := clblue else rdiferenca.Font.Color := clred;
  except
  end;
end;

procedure Tfrmproduto_grade_saida.qrgrade_saidaBeforeEdit(DataSet: TDataSet);
begin
  qtde_anterior := qrgrade_saida.fieldbyname('qtde').asfloat;
end;

procedure Tfrmproduto_grade_saida.qrgrade_saidaBeforeInsert(DataSet: TDataSet);
begin
  qtde_anterior := 0;
end;

procedure Tfrmproduto_grade_saida.qrgrade_saidaAfterPost(DataSet: TDataSet);
begin
  if frmmodulo.qrgrade_produto.Locate('codigo', qrgrade_saida.fieldbyname('codgrade').asstring, [loCaseInsensitive]) then
  begin
    frmmodulo.qrgrade_produto.Edit;
    frmmodulo.qrgrade_produto.fieldbyname('estoque').asfloat := frmmodulo.qrgrade_produto.fieldbyname('estoque').asfloat -
      qrgrade_saida.fieldbyname('qtde').asfloat +
      qtde_anterior;
    frmmodulo.qrgrade_produto.Post;
  end;

  rdigitado.Value := rdigitado.value + qrgrade_saida.fieldbyname('qtde').asfloat - qtde_anterior;
  rdiferenca.Value := rdigitado.value - rtotal.value;
end;

procedure Tfrmproduto_grade_saida.wwDBGrid1Enter(Sender: TObject);
begin
  nao_incluir := true;
end;

procedure Tfrmproduto_grade_saida.wwDBGrid1Exit(Sender: TObject);
begin
  nao_incluir := false;
end;

procedure Tfrmproduto_grade_saida.qrgrade_saidaAfterInsert(DataSet: TDataSet);
begin
  if nao_incluir then qrgrade_saida.Cancel;
end;

procedure Tfrmproduto_grade_saida.Fechar1Click(Sender: TObject);
begin
  bgravarclick(frmproduto_grade_saida);
end;

end.
