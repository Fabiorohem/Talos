unit produto_importaEAN;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, wwdbedit, Wwdotdot, Wwdbcomb, ExtCtrls,
  Collection, TFlatPanelUnit, Menus, Grids, Wwdbigrd, Wwdbgrid, DB,
  ZAbstractRODataset, ZAbstractDataset, ZDataset, DBCtrls, Buttons,
  AdvGlowButton, RzPanel, dxGDIPlusClasses,
  AdvMetroButton, AdvSmoothPanel, AdvSmoothExpanderPanel, JvExMask, JvToolEdit,
  JvBaseEdits, JvDBControls, IdBaseComponent, IdComponent, IdTCPConnection,
  IdTCPClient, IdHTTP, Data.DBXJSON, System.JSON, AdvPicture, GIFImg,
  Vcl.OleCtrls, SHDocVw, cyBaseWebBrowser, cyCustomWebBrowser, cyWebBrowser;

type
  Tfrmproduto_importaEAN = class(TForm)
    FlatPanel1: TFlatPanel;
    Bevel1: TBevel;
    Label6: TLabel;
    loc: TEdit;
    Label7: TLabel;
    lvoltar: TLabel;
    AdvSmoothExpanderPanel1: TAdvSmoothExpanderPanel;
    Label20: TLabel;
    AdvMetroButton1: TAdvMetroButton;
    IdHTTP1: TIdHTTP;
    Button1: TButton;
    Memo1: TMemo;
    Label8: TLabel;
    edtNomeProduto: TEdit;
    Label9: TLabel;
    edtMaskPrecoMedio: TMaskEdit;
    Label10: TLabel;
    edtUnidadeMedida: TEdit;
    Label11: TLabel;
    edtNcm: TEdit;
    Label13: TLabel;
    edtCest: TEdit;
    Label14: TLabel;
    edtCodBarra: TEdit;
    cyWebBrowser1: TcyWebBrowser;
    bGravar: TAdvGlowButton;
    bLimpar: TAdvGlowButton;
    bCancelar: TAdvGlowButton;
    procedure Localizarpor1Click(Sender: TObject);
    procedure Referncia1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure locKeyPress(Sender: TObject; var Key: Char);
    procedure locChange(Sender: TObject);
    procedure ConsultarCosmos();
    procedure Button1Click(Sender: TObject);
    procedure ParseJson(aStringJson:string);
    procedure bLimparClick(Sender: TObject);
    procedure bCancelarClick(Sender: TObject);
    procedure bGravarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmproduto_importaEAN: Tfrmproduto_importaEAN;
  voltar: boolean;

implementation

uses modulo, produto, principal, produto_foto, xloc_servico, tabela_preco;

{$R *.dfm}


procedure Tfrmproduto_importaEAN.ParseJson(aStringJson : string);
var
  LJsonArr   : TJSONArray;
  LJsonValue : TJSONValue;
  LItem     : TJSONValue;
begin
   LJsonArr    := TJSONObject.ParseJSONValue(TEncoding.ASCII.GetBytes(aStringJson),0) as TJSONArray;
   for LJsonValue in LJsonArr do
   begin
      for LItem in TJSONArray(LJsonValue) do
        Writeln(Format('%s : %s',[TJSONPair(LItem).JsonString.Value, TJSONPair(LItem).JsonValue.Value]));
     Writeln;
   end;
end;

procedure Tfrmproduto_importaEAN.bCancelarClick(Sender: TObject);
begin
self.CloseModal;
self.Close;

end;

procedure Tfrmproduto_importaEAN.bGravarClick(Sender: TObject);
begin
   frmproduto.COMBOCODBARRA.Text := edtCodBarra.Text;
   frmproduto.DBEdit2.Text := edtNomeProduto.Text;
   frmproduto.DBEdit2.Text := edtNomeProduto.Text;
   if not string.Equals(edtNcm.Text,' Não Encontrado ') then
      frmproduto.eNCM.Text := edtNcm.Text;
   if not string.Equals(edtCest.Text,' Não Encontrado ') then
   begin
      frmproduto.eCEST.Text := edtCest.Text;
      frmproduto.ealiq.Clear;
      frmproduto.ecsosn.Text := '500';
      frmproduto.RzDBButtonEdit1.Text := '5405';
      frmproduto.RzDBButtonEdit2.Text := '6405';
      frmproduto.RzDBButtonEdit3.Text := '1411';
      frmproduto.RzDBButtonEdit4.Text := '2411';
      frmproduto.RzDBButtonEdit9.Text := '5411';
      frmproduto.RzDBButtonEdit8.Text := '6411';
      frmproduto.RzDBButtonEdit5.Text := '1949';
      frmproduto.RzDBButtonEdit6.Text := '2949';
      frmproduto.RzDBButtonEdit7.Text := '5405';
   end
   else
   begin
      frmproduto.ecsosn.Text := '102';
      frmproduto.RzDBButtonEdit1.Text := '5102';
      frmproduto.RzDBButtonEdit2.Text := '6102';
      frmproduto.RzDBButtonEdit3.Text := '1202';
      frmproduto.RzDBButtonEdit4.Text := '2202';
      frmproduto.RzDBButtonEdit9.Text := '5202';
      frmproduto.RzDBButtonEdit8.Text := '6202';
      frmproduto.RzDBButtonEdit5.Text := '1949';
      frmproduto.RzDBButtonEdit6.Text := '2949';
      frmproduto.RzDBButtonEdit7.Text := '5102';
   end;

   Self.Close;




end;

procedure Tfrmproduto_importaEAN.bLimparClick(Sender: TObject);
begin
  edtNomeProduto.Clear;
  edtMaskPrecoMedio.Clear;
  edtUnidadeMedida.Clear;
  edtNcm.Clear;
  edtCest.Clear;
  edtCodBarra.Clear;
  cyWebBrowser1.CleanupInstance;
end;

procedure Tfrmproduto_importaEAN.Button1Click(Sender: TObject);
begin
if not string.Equals(loc.Text,'') then
    Self.ConsultarCosmos();

end;

procedure Tfrmproduto_importaEAN.ConsultarCosmos();
var
str,url,urlImg: string;
  LJsonArr   : TJSONArray;
  LJsonValue : TJSONValue;
  LItem     : TJSONValue;
  MS : TMemoryStream;
  GIf: TGIFImage;
begin
try
    url := 'https://api.cosmos.bluesoft.com.br/gtins/' + loc.Text + '.json';


    IdHTTP1.Request.CustomHeaders.Values['X-Cosmos-Token']:= FRMMODULO.QRCONFIG.FIELDBYNAME('CHAVE_COSMOS').ASSTRING;

    IdHTTP1.Request.ContentType := 'application/json;charset=UTF-8';

    Memo1.Clear;


    Screen.Cursor := crHourGlass;
    str := IdHTTP1.Get(url);

    except on E: Exception do
  Begin
    Memo1.Lines.Add('Resposta da exceção:');
    Memo1.Lines.Add('--> '+E.Message);
  End;
end;

Memo1.Lines.Add('HTTP Status Code:');
Memo1.Lines.Add('--> '+IdHTTP1.ResponseText);



Memo1.Lines.Add('Resposta da consulta:');
Memo1.Lines.Add('--> ' + str);

MS := TMemoryStream.Create;
GIf := TGIFImage.Create;


LJsonValue := TJSONObject.ParseJSONValue(TEncoding.ASCII.GetBytes(str),0);


edtNomeProduto.Text := LJsonValue.GetValue<TJSONString>('description').Value;

try
edtMaskPrecoMedio.Text := LJsonValue.GetValue<TJSONString>('price').Value;
except on e : Exception do
edtMaskPrecoMedio.Text := 'R$ 0,00';
end;
//edtUnidadeMedida.Text := LJsonValue.GetValue<TJSONObject>('gtins').GetValue<TJSONObject>('commercial_unit').GetValue<TJSONString>('type_packaging').Value;

try
edtNcm.Text := LJsonValue.GetValue<TJSONObject>('ncm').GetValue<TJSONString>('code').Value + ' - ' + LJsonValue.GetValue<TJSONObject>('ncm').GetValue<TJSONString>('full_description').Value;
except on JsonError : EJSONException do
edtNcm.Text := ' Não Encontrado ';
end;

try
edtCest.Text := LJsonValue.GetValue<TJSONObject>('cest').GetValue<TJSONString>('code').Value + ' - ' + LJsonValue.GetValue<TJSONObject>('cest').GetValue<TJSONString>('description').Value;
except on JsonError : EJSONException do
edtCest.Text := ' Não Encontrado ';
end;

edtCodBarra.Text := LJsonValue.GetValue<TJSONString>('gtin').Value;
urlImg := LJsonValue.GetValue<TJSONString>('thumbnail').Value;

cyWebBrowser1.NavigateToURL(urlImg);



 try
//    IdHTTP1.get(urlImg,MS);
//    Ms.Seek(0,soFromBeginning);
//    Gif.LoadFromStream(MS);
//    imgProduto.Picture.Assign(GIF);
  finally
    FreeAndNil(GIF);
    FreeAndNil(MS);
  end;




Memo1.Update;
Screen.Cursor := crDefault;
end;


procedure Tfrmproduto_importaEAN.Localizarpor1Click(Sender: TObject);
var X: INTEGER;
begin

end;

procedure Tfrmproduto_importaEAN.Referncia1Click(Sender: TObject);
var X: INTEGER;
begin

end;

procedure Tfrmproduto_importaEAN.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  ACTION := CAFREE;
end;

procedure Tfrmproduto_importaEAN.locKeyPress(Sender: TObject; var Key: Char);
var ref, tipo: string;
begin

end;

procedure Tfrmproduto_importaEAN.locChange(Sender: TObject);
var ref, tipo: string;
begin

end;

end.
