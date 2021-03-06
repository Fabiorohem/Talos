unit senha;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DB, DBCtrls, ExtDlgs, CellEditors, jpeg, ExtCtrls,
  AdvGlowButton, dxGDIPlusClasses, acPNG, AdvPanel, AdvTouchKeyboard, ACBrBase,
  ACBrEnterTab, AdvReflectionImage;

type
  Tfrmsenha = class(TForm)
    button1: TAdvGlowButton;
    button2: TAdvGlowButton;
    lblFunc: TLabel;
    EditUsuario: TEdit;
    EditSenha: TEdit;
    ACBrEnterTab1: TACBrEnterTab;
    LbUsuario: TLabel;
    LbSenha: TLabel;
    Panel2: TPanel;
    Panel4: TPanel;
    Panel1: TPanel;
    Panel3: TPanel;
    Image1: TImage;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure BUTTON2Click(Sender: TObject);
    procedure BUTTON1Click(Sender: TObject);
    procedure combobox1Enter(Sender: TObject);
    procedure edit2Exit(Sender: TObject);
    procedure EditUsuarioExit(Sender: TObject);
    procedure EditSenhaExit(Sender: TObject);
    procedure EditUsuarioKeyPress(Sender: TObject; var Key: Char);
    procedure EditSenhaKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmsenha: Tfrmsenha;

implementation

uses
  Principal, modulo;

{$R *.dfm}

procedure Tfrmsenha.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := cafree;
end;

procedure Tfrmsenha.FormShow(Sender: TObject);
begin
  AUTENTICADO := False;

end;

procedure Tfrmsenha.BUTTON2Click(Sender: TObject);
begin
  AUTENTICADO := False;
  lblFunc.Caption := '';
  lblFunc.Visible := False;
  close;
end;

procedure Tfrmsenha.BUTTON1Click(Sender: TObject);
var
  senha: Integer;
begin
  try
    senha := frmPrincipal.iCloud.VerificaLogin(EditUsuario.text, EditSenha.text, True);
    if senha = 0 then begin
      AUTENTICADO := True;
    end
    else begin
      if APPLICATION.MESSAGEBOX('Usu�rio ou Senha inv�lida, ou usu�rio n�o tem permiss�o!' + #13 + 'Deseja tentar outra vez?          ', 'Aten��o', mb_yesno + mb_iconerror) = idYes then begin
        EditUsuario.text := '';
        EditSenha.text := '';
        EditUsuario.SetFocus;
        exit;
      end
      else begin
        BUTTON2Click(frmsenha);
      end;
    end;
  except
    if APPLICATION.MESSAGEBOX('Usu�rio ou Senha inv�lida,ou usu�rio n�o tem permiss�o!' + #13 + 'Deseja tentar outra vez?          ', 'Aten��o', mb_yesno + mb_iconerror) = idYes then begin
      EditUsuario.text := '';
      EditSenha.text := '';
      EditUsuario.SetFocus;
      exit;
    end
    else begin
      BUTTON2Click(frmsenha);
    end;
  end;
  lblFunc.Caption := '';
  lblFunc.Visible := False;
  close;
end;

procedure Tfrmsenha.combobox1Enter(Sender: TObject);
begin
  TEdit(Sender).Color := $00A0FAF8;
end;

procedure Tfrmsenha.edit2Exit(Sender: TObject);
begin
  TEdit(Sender).Color := clwindow;
end;

procedure Tfrmsenha.EditSenhaExit(Sender: TObject);
begin
  button1.SetFocus;
end;

procedure Tfrmsenha.EditSenhaKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    BUTTON1Click(Self);
end;

procedure Tfrmsenha.EditUsuarioExit(Sender: TObject);
begin
  EditSenha.SetFocus;
end;

procedure Tfrmsenha.EditUsuarioKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    EditSenha.Text
end;

end.

