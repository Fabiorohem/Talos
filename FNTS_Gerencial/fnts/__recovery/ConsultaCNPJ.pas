unit ConsultaCNPJ;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Buttons, ACBrBase, ACBrSocket, ACBrConsultaCNPJ,
  Mask, AdvMetroButton, System.JSON,IdHTTP, GIFImg, IdBaseComponent,
  IdComponent, IdTCPConnection, IdTCPClient;

{$IFDEF CONDITIONALEXPRESSIONS}
   {$IF CompilerVersion >= 20.0}
     {$DEFINE DELPHI2009_UP}
   {$IFEND}
{$ENDIF}

{.$DEFINE SUPPORT_PNG}  // Remova o Ponto, se seu Delphi suporta PNG

{$IFDEF DELPHI2009_UP}
  {$DEFINE SUPPORT_PNG}
{$ENDIF}

type
  TRetornoCNPJSefaz = record
    Confirma: Boolean;
    TipoEmpresa, RazaoSocial, Porte, Fantasia, Endereco, Numero, Complemento,
    Bairro, Cidade, UF, CEP, Situacao, Email, Telefone, CNAEPrincipal,
    CNAESegundarios, IBGEMunic, IBGEUF, CNPJ: string;
    Abertura: TDate;
  end;

  TfrmConsultaCNPJ = class(TForm)
    Panel2: TPanel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    EditTipo: TEdit;
    EditRazaoSocial: TEdit;
    EditAbertura: TEdit;
    EditEndereco: TEdit;
    EditNumero: TEdit;
    EditComplemento: TEdit;
    EditBairro: TEdit;
    EditCidade: TEdit;
    EditUF: TEdit;
    EditCEP: TEdit;
    EditIBGEMunic: TEdit;
    Panel1: TPanel;
    Label1: TLabel;
    ButBuscar: TBitBtn;
    EditFantasia: TEdit;
    Label13: TLabel;
    EditCNPJ: TMaskEdit;
    ckRemoverEspacosDuplos: TCheckBox;
    Label15: TLabel;
    EditCNAE1: TEdit;
    EditEmail: TEdit;
    Label17: TLabel;
    EditTelefone: TEdit;
    Label18: TLabel;
    Label19: TLabel;
    EditPorte: TEdit;
    Panel4: TPanel;
    Label20: TLabel;
    AdvMetroButton1: TAdvMetroButton;
    Button1: TButton;
    lbSituacao: TLabel;
    EditIBGEUF: TEdit;
    Label21: TLabel;
    IdHTTP1: TIdHTTP;
    EditCNAE1Desc: TEdit;
    procedure ButBuscarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure AdvMetroButton1Click(Sender: TObject);
    function ConsultaReceitaWS(Sender: TObject): Boolean;
    procedure EditCNPJKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
  private
    { Private declarations }
    Confirma: Boolean;
  public
    { Public declarations }
  end;

function ConsultaCNPJSefaz(cnpj: string = ''): TRetornoCNPJSefaz;

var
  frmConsultaCNPJ: TfrmConsultaCNPJ;

implementation

uses
  JPEG
{$IFDEF SUPPORT_PNG}
    , pngimage
{$ENDIF}
;

{$R *.dfm}

function ConsultaCNPJSefaz(cnpj: string = ''): TRetornoCNPJSefaz;
begin
  Application.CreateForm(TfrmConsultaCNPJ, frmConsultaCNPJ);
  with frmConsultaCNPJ do begin
    Confirma := False;
    if cnpj <> '' then
      EditCNPJ.Text := cnpj;
    ShowModal;
    Result.Confirma := Confirma;
    if Confirma then begin
      Result.TipoEmpresa := EditTipo.Text;
      Result.RazaoSocial := EditRazaoSocial.Text;
      Result.Porte := EditPorte.Text;
      Result.Fantasia := EditFantasia.Text;
      Result.Endereco := EditEndereco.Text;
      Result.Numero := EditNumero.Text;
      Result.Complemento := EditComplemento.Text;
      Result.Bairro := EditBairro.Text;
      Result.Cidade := EditCidade.Text;
      Result.UF := EditUF.Text;
      Result.CEP := EditCEP.Text;
      Result.Situacao := lbSituacao.Caption;
      Result.Email := EditEmail.Text;
      Result.Telefone := EditTelefone.Text;
      Result.CNAEPrincipal := EditCNAE1.Text;
//      Result.CNAESegundarios := ListCNAE2.Items.CommaText;
      Result.Abertura := StrToDate(EditAbertura.Text);
      Result.IBGEMunic := EditIBGEMunic.Text;
      Result.IBGEUF := EditIBGEUF.Text;
      Result.CNPJ := EditCNPJ.Text;
    end;
  end;
  FreeAndNil(frmConsultaCNPJ);
end;

procedure TfrmConsultaCNPJ.AdvMetroButton1Click(Sender: TObject);
begin
  Confirma := False;
  Close;
end;

procedure TfrmConsultaCNPJ.ButBuscarClick(Sender: TObject);
var
  I: Integer;
begin
  frmConsultaCNPJ.ConsultaReceitaWS(Sender);
end;

procedure TfrmConsultaCNPJ.Button1Click(Sender: TObject);
begin
  if EditRazaoSocial.Text = '' then begin
    Application.MessageBox('Dados não localizado!', 'Atenção!', MB_ICONINFORMATION);
    Exit;
  end;
  Confirma := True;
  Close;

end;


procedure TfrmConsultaCNPJ.EditCNPJKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_RETURN then
    if not frmConsultaCNPJ.ConsultaReceitaWS(Sender) then begin
      EditCNPJ.Clear;
      EditCNPJ.SetFocus;
      E
    end
      else
      begin
      Exit;
      end;






end;

procedure TfrmConsultaCNPJ.FormShow(Sender: TObject);
begin

end;

//procedure TfrmConsultaCNPJ.LabAtualizarCaptchaClick(Sender: TObject);
//var
//  Stream: TMemoryStream;
////  Jpg: TJPEGImage;
//{$IFDEF DELPHI2009_UP}
//  png: TPngImage;
//{$ELSE}
//  ImgArq: string;
//{$ENDIF}
//begin
//  {$IFNDEF SUPPORT_PNG}
//  ShowMessage('Atenção: Seu Delphi não dá suporte nativo a imagens PNG. Queira verificar o código fonte deste exemplo para saber como proceder.');
//  Exit;
//    // COMO PROCEDER:
//    //
//    // 1) Caso o site da receita esteja utilizando uma imagem do tipo JPG, você pode utilizar o código comentado abaixo.
//    //    * Comente ou apague o código que trabalha com PNG, incluindo o IFDEF/ENDIF;
//    //    * descomente a declaração da variável jpg
//    //    * descomente o código abaixo;
//    // 2) Caso o site da receita esteja utilizando uma imagem do tipo PNG, você terá que utilizar uma biblioteca de terceiros para
//    //conseguir trabalhar com imagens PNG.
//    //  Neste caso, recomendamos verificar o manual da biblioteca em como fazer a implementação. Algumas sugestões:
//    //    * Procure no Fórum do ACBr sobre os erros que estiver recebendo. Uma das maneiras mais simples está no link abaixo:
//    //      - http://www.projetoacbr.com.br/forum/topic/20087-imagem-png-delphi-7/
//    //    * O exemplo acima utiliza a biblioteca GraphicEX. Mas existem outras bibliotecas, caso prefira:
//    //      - http://synopse.info/forum/viewtopic.php?id=115
//    //      - http://graphics32.org/wiki/
//    //      - http://cc.embarcadero.com/Item/25631
//    //      - Várias outras: http://torry.net/quicksearchd.php?String=png&Title=Yes
//  {$ENDIF}
//
//  Stream := TMemoryStream.Create;
//  try
//    ACBrConsultaCNPJ1.Captcha(Stream);
//
//   {$IFDEF DELPHI2009_UP}
//    //Use esse código quando a imagem do site for do tipo PNG
//    png := TPngImage.Create;
//    try
//      png.LoadFromStream(Stream);
//      Image1.Picture.Assign(png);
//    finally
//      png.Free;
//    end;
//    { //Use esse código quando a imagem do site for do tipo JPG
//      Jpg:= TJPEGImage.Create;
//      try
//        Jpg.LoadFromStream(Stream);
//        Image1.Picture.Assign(Jpg);
//      finally
//        Jpg.Free;
//      end;
//    }
//   {$ELSE}
//    ImgArq := ExtractFilePath(ParamStr(0)) + PathDelim + 'captch.png';
//    Stream.SaveToFile(ImgArq);
//    Image1.Picture.LoadFromFile(ImgArq);
//   {$ENDIF}
//
//    EditCaptcha.Clear;
//    EditCaptcha.SetFocus;
//  finally
//    Stream.Free;
//  end;
//end;


function TfrmConsultaCNPJ.ConsultaReceitaWS(Sender: TObject): Boolean;
var
str,url,urlImg: string;
  LJsonArr   : TJSONArray;
  LJsonValue : TJSONValue;
  LItem     : TJSONValue;
  MS : TMemoryStream;
  GIf: TGIFImage;
begin
try
    url := 'https://www.receitaws.com.br/v1/cnpj/' + EditCNPJ.Text;

    IdHTTP1.Request.CustomHeaders.Values['Token']:= 'd529bcb0b4c608aabb4ddada44340953238e8497c0e37e486d17f651469f4563' ;

    IdHTTP1.Request.ContentType := 'application/json;charset=UTF-8';

    Screen.Cursor := crHourGlass;
    str := IdHTTP1.Get(url);

    except on E: Exception do
  Begin

  End;
end;

IdHTTP1.ResponseText;



MS := TMemoryStream.Create;
GIf := TGIFImage.Create;



LJsonValue := TJSONObject.ParseJSONValue(TEncoding.ASCII.GetBytes(str),0);

if LJsonValue.GetValue<TJSONString>('status').Value = 'ERROR' then begin
  Application.MessageBox('CNPJ Inválido ou Rejeitado pela RFB', 'Atenção!', MB_ICONINFORMATION);
  Result := False;

end
else begin


EditRazaoSocial.Text := LJsonValue.GetValue<TJSONString>('nome').Value;
EditPorte.Text := LJsonValue.GetValue<TJSONString>('porte').Value;
EditAbertura.Text := LJsonValue.GetValue<TJSONString>('abertura').Value;
EditFantasia.Text := LJsonValue.GetValue<TJSONString>('fantasia').Value;
EditEndereco.Text := LJsonValue.GetValue<TJSONString>('logradouro').Value;
EditNumero.Text := LJsonValue.GetValue<TJSONString>('numero').Value;
EditComplemento.Text := LJsonValue.GetValue<TJSONString>('complemento').Value;
EditBairro.Text := LJsonValue.GetValue<TJSONString>('bairro').Value;
EditCidade.Text := LJsonValue.GetValue<TJSONString>('municipio').Value;
EditUF.Text := LJsonValue.GetValue<TJSONString>('uf').Value;
EditCEP.Text := LJsonValue.GetValue<TJSONString>('cep').Value;
EditTipo.Text := LJsonValue.GetValue<TJSONString>('tipo').Value;
EditEmail.Text := LJsonValue.GetValue<TJSONString>('email').Value;
EditTelefone.Text := LJsonValue.GetValue<TJSONString>('telefone').Value;
EditCNAE1.Text := LJsonValue.GetValue<TJSONArray>('atividade_principal').Get(0).GetValue<TJSONString>('code').Value;
EditCNAE1Desc.Text := LJsonValue.GetValue<TJSONArray>('atividade_principal').Get(0).GetValue<TJSONString>('text').Value;



Screen.Cursor := crDefault;
Result :=  True;
end;

end;



end.
