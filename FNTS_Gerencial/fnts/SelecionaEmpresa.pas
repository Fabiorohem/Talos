unit SelecionaEmpresa;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, frxCtrls, modulo;

type
  TfrmSelecionaEmpresa = class(TForm)
    Panel1: TPanel;
    lbl1: TLabel;
    lblStatus: TLabel;
    frxComboBox1: TfrxComboBox;
    Label1: TLabel;
    btnAtivar: TButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure btnAtivarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmSelecionaEmpresa: TfrmSelecionaEmpresa;

implementation

{$R *.dfm}

uses principal;

procedure TfrmSelecionaEmpresa.btnAtivarClick(Sender: TObject);
begin

    frmmodulo.qrFilial.SQL.Clear;

    frmmodulo.qrFilial.SQL.Add('select * from c000004 where c000004.codigo = ' + frxComboBox1.Items[frxComboBox1.ItemIndex].Substring(0,6));
    frmmodulo.qrFilial.Open;
    if frmmodulo.qrFilial.RecordCount > 0 then
    begin
    frmprincipal.lbNomeEmpresa.caption := frmmodulo.qrFilialFILIAL.asstring;
    frmprincipal.vfil_codigo := frmmodulo.qrFilialCODIGO.asstring;
    frmprincipal.vfil_nome := frmmodulo.qrFilialFILIAL.asstring;
    frmprincipal.vfil_cnpj := frmmodulo.qrFilialCNPJ.asstring;
    frmprincipal.vfil_ie := frmmodulo.qrFilialIE.asstring;
    frmprincipal.vfil_cipi := frmmodulo.qrFilialCONTRIBUINTE_IPI.asstring;
    frmprincipal.vfil_cst := frmmodulo.qrFilialSUBSTITUTO_TRIBUTARIO.asstring;
    frmprincipal.vfil_simples := frmmodulo.qrFilialOPTANTE_SIMPLES.asstring;
    frmprincipal.vfil_ssimples := frmmodulo.qrFilialOPTANTE_SUPER_SIMPLES.asstring;
    frmprincipal.vfil_estadual := frmmodulo.qrFilialEMPRESA_ESTADUAL.asstring;
    end;

   self.Close;


end;

procedure TfrmSelecionaEmpresa.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := cafree;
end;

procedure TfrmSelecionaEmpresa.FormShow(Sender: TObject);
begin
frxComboBox1.ReadOnly := true;
modulo.frmmodulo.qrFilial.SQL.Clear;
modulo.frmmodulo.qrFilial.SQL.Add('select * from c000004 order by codigo');
modulo.frmmodulo.qrFilial.Open;
while not frmmodulo.qrFilial.Eof do
begin
 frxComboBox1.AddItem(frmmodulo.QRFILIAL.fieldbyname('CODIGO').asstring + ' - ' + frmmodulo.QRFILIAL.fieldbyname('FILIAL').asstring,frmmodulo.QRFILIAL);
 frmmodulo.qrFilial.Next;
end;

frxComboBox1.Refresh;

frxComboBox1.ItemIndex := 0;

frmmodulo.qrFilial.Close;

end;

end.