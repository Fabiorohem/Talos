unit Ncm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset, Menus,
  Grids, Wwdbigrd, Wwdbgrid, StdCtrls, Wwkeycb, AdvGlowButton, ExtCtrls,
  RzPanel, Vcl.Mask, vcl.Wwdbedit, vcl.Wwdotdot, vcl.Wwdbcomb;

type
  TfrmNcm = class(TForm)
    RzPanel1: TRzPanel;
    dsNcm: TDataSource;
    pop1: TPopupMenu;
    Retornar1: TMenuItem;
    qrNcm: TZQuery;
    query: TZQuery;
    bretornar: TAdvGlowButton;
    RzPanel2: TRzPanel;
    LOC: TwwIncrementalSearch;
    Label1: TLabel;
    GRID: TwwDBGrid;
    qrNcmNCM: TWideStringField;
    qrNcmDESCRICAO: TWideStringField;
    qrNcmUNIDADE: TWideStringField;
    lbl2: TLabel;
    wwDBComboBox1: TwwDBComboBox;
    procedure bretornarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Retornar1Click(Sender: TObject);
    procedure LOCKeyPress(Sender: TObject; var Key: Char);
    procedure GRIDDblClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure LOCEnter(Sender: TObject);
    procedure GRIDEnter(Sender: TObject);
    procedure GRIDExit(Sender: TObject);
    procedure LOCKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure LOCExit(Sender: TObject);
    procedure LOCChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmNcm: TfrmNcm;
  voltar: boolean;

implementation

uses modulo, principal;

{$R *.dfm}

procedure TfrmNcm.bretornarClick(Sender: TObject);
begin
  CLOSE;
end;

procedure TfrmNcm.FormShow(Sender: TObject);
begin
  voltar := false;
  frmmodulo.qrNCM.close;
  frmmodulo.qrNCM.SQL.clear;
  frmmodulo.qrNCM.SQL.add('select * from ncm order by NCM');
  frmmodulo.qrNCM.open;
end;

procedure TfrmNcm.Retornar1Click(Sender: TObject);
begin
  CLOSE;
end;

procedure TfrmNcm.LOCKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then grid.setfocus;
end;


procedure TfrmNcm.GRIDDblClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmNcm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if voltar then loc.setfocus else
    close;
end;

procedure TfrmNcm.LOCChange(Sender: TObject);
begin

    frmmodulo.qrNCM.close;
    frmmodulo.qrNCM.SQL.clear;
    if LOC.text = '' then
    begin
      frmmodulo.qrNcm.sql.add('select * from NCM');
    end
    else if (LOC.Text <> '') then
    begin
      frmmodulo.qrNcm.sql.add('select * from NCM WHERE DESCRICAO like ' + QuotedStr('%'+LOC.text+'%'));
    end;
    frmmodulo.qrNcm.Open;





end;

procedure TfrmNcm.LOCEnter(Sender: TObject);
begin
  voltar := false;
  tedit(sender).Color := $00A0FAF8;
end;

procedure TfrmNcm.GRIDEnter(Sender: TObject);
begin
  voltar := true;
end;

procedure TfrmNcm.GRIDExit(Sender: TObject);
begin
  VOLTAR := FALSE;
end;

procedure TfrmNcm.LOCKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = vk_down then
  begin
    grid.setfocus;
  end;
end;

procedure TfrmNcm.LOCExit(Sender: TObject);
begin
  tedit(sender).Color := clwindow;
end;

end.
