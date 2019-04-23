unit Tipo_Cupom;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, dxGDIPlusClasses, Vcl.ExtCtrls,
  AdvGlowButton, System.Actions, Vcl.ActnList, Vcl.StdCtrls, Data.DB, AdvSmoothButton;

type
  Tfrmtipo_cupom = class(TForm)
    Panel1: TPanel;
    AdvSmoothButton4: TAdvSmoothButton;
    AdvSmoothButton1: TAdvSmoothButton;
    procedure AdvSmoothButton4Click(Sender: TObject);
    procedure AdvSmoothButton1Click(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmtipo_cupom: Tfrmtipo_cupom;

implementation

{$R *.dfm}

uses venda, Recebimento, principal,Thread.CheckConnection;

procedure Tfrmtipo_cupom.AdvSmoothButton1Click(Sender: TObject);
begin
TipoDeCupom := tcNFCE;
frmPrincipal.TipoImpressora := SemImpressora;
frmVenda.CheckConnect := TThreadCheckConnection.GetInstance;
    with frmVenda.CheckConnect do begin
      OnStatusChange := frmVenda.OnInternetChange;
      Start;
    end;
frmtipo_cupom.Close;
end;

procedure Tfrmtipo_cupom.AdvSmoothButton4Click(Sender: TObject);
begin
TipoDeCupom := tcSimples;
frmPrincipal.TipoImpressora := NaoFiscal;
frmtipo_cupom.Close;
end;
procedure Tfrmtipo_cupom.FormKeyPress(Sender: TObject; var Key: Char);
begin
if key = #27 then
close;
end;

end.
