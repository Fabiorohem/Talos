unit contingencia;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, NxColumnClasses, NxColumns,
  NxScrollControl, NxCustomGridControl, NxCustomGrid, NxGrid, AdvGlowButton,
  Vcl.StdCtrls, Vcl.Mask, JvExMask, JvToolEdit, Vcl.ExtCtrls, AdvMetroButton,
  AdvSmoothPanel, AdvSmoothExpanderPanel, Vcl.ComCtrls, PageView, principal,
  Data.DB, MemDS, DBAccess, Uni, sMaskEdit, sCustomComboEdit, sToolEdit,
  Vcl.Grids, Vcl.DBGrids, JvExDBGrids, JvDBGrid, System.Generics.Collections,
  NxDBColumns, NxDBGrid, ACBrBase, ACBrDFe, ACBrNFe, System.IniFiles, AcBrDFeSSL, pcnConversao, pcnConversaoNFe,
  ACBrUtil, System.Math, blcksock;

type
  TvNFe = (v310, v400);

  TForm1 = class(TForm)
    PageView1: TPageView;
    PageSheet1: TPageSheet;
    Panel3: TPanel;
    Label3: TLabel;
    ed_server: TEdit;
    ed_server_database: TEdit;
    PageSheet2: TPageSheet;
    Memo1: TMemo;
    Label2: TLabel;
    Label1: TLabel;
    Label4: TLabel;
    AdvGlowButton1: TAdvGlowButton;
    qrPDV_Contingencia: TUniQuery;
    dataini: TsDateEdit;
    datafim: TsDateEdit;
    grid: TJvDBGrid;
    ds_nfce: TDataSource;
    qrTemp: TUniQuery;
    Label5: TLabel;
    cbResolvido: TComboBox;
    btnEnviar: TAdvGlowButton;
    NextDBGrid1: TNextDBGrid;
    NxDBTextColumn1: TNxDBTextColumn;
    NxDBTextColumn2: TNxDBTextColumn;
    NxDBTextColumn3: TNxDBTextColumn;
    NxDBTextColumn4: TNxDBTextColumn;
    NxDBTextColumn5: TNxDBTextColumn;
    NxDBTextColumn6: TNxDBTextColumn;
    NxDBTextColumn7: TNxDBTextColumn;
    NxDBTextColumn8: TNxDBTextColumn;
    NxDBCheckBoxColumn1: TNxDBCheckBoxColumn;
    ACBRNFCe: TACBrNFe;
    Label6: TLabel;
    cbPDV: TComboBox;
    Label7: TLabel;
    Label8: TLabel;
    procedure LerConfiguracao;
    procedure FormCreate(Sender: TObject);
    procedure AdvGlowButton1Click(Sender: TObject);
    procedure btnEnviarClick(Sender: TObject);
  private
    { Private declarations }
  public

  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.AdvGlowButton1Click(Sender: TObject);
var
I,J: Integer;
begin
 if frmPrincipal.conexao_servidor.Connected then begin
      try




        if cbPDV.Text = 'Todos' then begin




        for I := 0 to frmPrincipal.grid.RowCount - 1 do begin
          if frmPrincipal.grid.Cell[4, I].AsBoolean then begin
            if frmPrincipal.verifica_conexao('PDV', frmPrincipal.grid.CELL[1, I].ASSTRING, frmPrincipal.GRID.CELL[2, I].ASSTRING) then begin
              frmPrincipal.grid.CELL[3, I].AsInteger := 0;
               // E S T A C A O   PARA   S E R V I D O R

                ds_nfce.Enabled := true;
                qrPDV_Contingencia.SQL.Clear;
                qrPDV_Contingencia.SQL.Add('select nf.*,' + frmPrincipal.grid.CELL[0, I].ASSTRING + ' as PDV, case when situacao = 0 then ' + QuotedStr('Emitido') + ' else ' + QuotedStr('Cancelado') + ' end des_sit, case when enviadocontingencia=' + QuotedStr('N') + ' then ' + QuotedStr('True') + ' else ' + QuotedStr('False') + 'end enviar');
                qrPDV_Contingencia.SQL.Add('from NFCE nf where contingencia =' + QuotedStr('S'));

                if dataini.Date > 0 then begin
                  qrPDV_Contingencia.SQL.Add('and data >= :pdataini ');
                  qrPDV_Contingencia.ParamByName('pdataini').AsDateTime := dataini.Date;
                end;

                if datafim.Date > 0 then begin
                  qrPDV_Contingencia.SQL.Add('and data <= :pdatafin ');
                  qrPDV_Contingencia.ParamByName('pdatafin').AsDateTime := datafim.Date;
                 end;

                if cbResolvido.Text = 'Sim' then
                qrPDV_Contingencia.SQL.Add('and ENVIADOCONTINGENCIA ='  + QuotedStr('S'))
                else if cbResolvido.Text = 'Não' then
                qrPDV_Contingencia.SQL.Add('and ENVIADOCONTINGENCIA ='  + QuotedStr('N'));



                qrPDV_Contingencia.SQL.Add('order by numero');
                qrPDV_Contingencia.Open;
                qrPDV_Contingencia.First;

                grid.Refresh;




               end else begin
                frmPrincipal.verifica_conexao('PDV', frmPrincipal.grid.CELL[1, I-1].ASSTRING, frmPrincipal.GRID.CELL[2, I-1].ASSTRING);

                ds_nfce.Enabled := true;
                qrPDV_Contingencia.SQL.Clear;
                qrPDV_Contingencia.SQL.Add('select nf.*,' + frmPrincipal.grid.CELL[0, I].ASSTRING + ' as PDV, case when situacao = 0 then ' + QuotedStr('Emitido') + ' else ' + QuotedStr('Cancelado') + ' end des_sit, case when enviadocontingencia=' + QuotedStr('N') + ' then ' + QuotedStr('True') + ' else ' + QuotedStr('False') + 'end enviar');
                qrPDV_Contingencia.SQL.Add('from NFCE nf where contingencia =' + QuotedStr('S'));

                if dataini.Date > 0 then begin
                  qrPDV_Contingencia.SQL.Add('and data >= :pdataini ');
                  qrPDV_Contingencia.ParamByName('pdataini').AsDateTime := dataini.Date;
                end;

                if datafim.Date > 0 then begin
                  qrPDV_Contingencia.SQL.Add('and data <= :pdatafin ');
                  qrPDV_Contingencia.ParamByName('pdatafin').AsDateTime := datafim.Date;
                 end;

                if cbResolvido.Text = 'Sim' then
                qrPDV_Contingencia.SQL.Add('and ENVIADOCONTINGENCIA ='  + QuotedStr('S'))
                else if cbResolvido.Text = 'Não' then
                qrPDV_Contingencia.SQL.Add('and ENVIADOCONTINGENCIA ='  + QuotedStr('N'));






                qrPDV_Contingencia.SQL.Add('order by numero');
                qrPDV_Contingencia.Open;
                qrPDV_Contingencia.First;


               end;
          end;
        end;
        end else begin

         frmPrincipal.verifica_conexao('PDV', frmPrincipal.grid.CELL[1, Integer.Parse(cbPDV.Text) - 1].ASSTRING, frmPrincipal.GRID.CELL[2, Integer.Parse(cbPDV.Text)-1].ASSTRING);

                ds_nfce.Enabled := true;
                qrPDV_Contingencia.SQL.Clear;
                qrPDV_Contingencia.SQL.Add('select nf.*,' + frmPrincipal.grid.CELL[0, Integer.Parse(cbPDV.Text)].ASSTRING + ' as PDV, case when situacao = 0 then ' + QuotedStr('Emitido') + ' else ' + QuotedStr('Cancelado') + ' end des_sit, case when enviadocontingencia=' + QuotedStr('N') + ' then ' + QuotedStr('True') + ' else ' + QuotedStr('False') + 'end enviar');
                qrPDV_Contingencia.SQL.Add('from NFCE nf where contingencia =' + QuotedStr('S'));

                if dataini.Date > 0 then begin
                  qrPDV_Contingencia.SQL.Add('and data >= :pdataini ');
                  qrPDV_Contingencia.ParamByName('pdataini').AsDateTime := dataini.Date;
                end;

                if datafim.Date > 0 then begin
                  qrPDV_Contingencia.SQL.Add('and data <= :pdatafin ');
                  qrPDV_Contingencia.ParamByName('pdatafin').AsDateTime := datafim.Date;
                 end;

                if cbResolvido.Text = 'Sim' then
                qrPDV_Contingencia.SQL.Add('and ENVIADOCONTINGENCIA ='  + QuotedStr('S'))
                else if cbResolvido.Text = 'Não' then
                qrPDV_Contingencia.SQL.Add('and ENVIADOCONTINGENCIA ='  + QuotedStr('N'));






                qrPDV_Contingencia.SQL.Add('order by numero');
                qrPDV_Contingencia.Open;
                qrPDV_Contingencia.First;


        end;
      finally

      end;
 end;


end;

procedure TForm1.btnEnviarClick(Sender: TObject);
var
I: Integer;
teste: TStringStream;
begin


  qrTemp := qrPDV_Contingencia;
  qrTemp.First;



  while not qrTemp.Eof do begin

            if qrTemp.FieldByName('enviar').Value = True then begin



            teste := TStringStream.Create;
            ACBRNFCe.NotasFiscais.Clear;
            TBlobField(qrTemp.FieldByName('XMLENVIO')).SaveToStream(teste);
            ACBRNFCe.NotasFiscais.LoadFromStream(teste);
            ACBRNFCe.Enviar(ACBRNFCe.NotasFiscais.Items[0].NFe.Ide.nNF, False, True);
            if ACBRNFCe.NotasFiscais.Items[0].Confirmada then begin
              if ACBRNFCe.WebServices.Enviar.cStat = 100 then begin
                qrTemp.Edit;
                qrTemp.FieldByName('ENVIADOCONTINGENCIA').AsString := 'S';
                qrTemp.FieldByName('EX').AsInteger := 0;
                qrTemp.FieldByName('ALTERADO').AsString := 'S';
                qrTemp.Post;
//                qrTemp.ApplyUpdates;
              end;
            end

          end;
          qrTemp.Next;
end;

Application.MessageBox('Processo concluído com sucesso.', 'Envio', MB_OK);
end;

procedure TForm1.FormCreate(Sender: TObject);
var
I: Integer;
pdv: string;
begin
    ed_server.Text := principal.frmPrincipal.ed_server.Text;
    ed_server_database.text := principal.frmPrincipal.ed_server_database.Text;
    qrPDV_Contingencia.Connection := principal.frmPrincipal.conexao_pdv;
    NextDBGrid1.DataSource := ds_nfce;
    LerConfiguracao;



     for I := 0 to frmPrincipal.grid.RowCount - 1 do begin
       if frmPrincipal.grid.CELL[3, I].AsInteger = 0 then begin

          pdv := (I+1).ToString;
          cbPDV.Items.Add(pdv);


       end;

     end;




end;

procedure TForm1.LerConfiguracao;
var
  arquivo_ini: TIniFile;
  VersaoNFE: TvNFe;
  Ok: Boolean;
  MotivoContigencia: string;
begin

try
    arquivo_ini := TIniFile.Create(sDir_Sistema + '\cfg\cfg.ini');

    ACBRNFCe.Configuracoes.Certificados.ArquivoPFX := arquivo_ini.ReadString('Certificado', 'Caminho', '');
    ACBRNFCe.Configuracoes.Certificados.Senha := arquivo_ini.ReadString('Certificado', 'Senha', '');

    ACBRNFCe.Configuracoes.Certificados.NumeroSerie := arquivo_ini.ReadString('Certificado', 'NumSerie', '');

    ACBRNFCe.SSL.DescarregarCertificado;

    with ACBRNFCe.Configuracoes.Geral do begin
      SSLLib := TSSLLib(arquivo_ini.ReadInteger('Certificado', 'SSLLib', 0));
      SSLCryptLib := TSSLCryptLib(arquivo_ini.ReadInteger('Certificado', 'CryptLib', 0));
      SSLHttpLib := TSSLHttpLib(arquivo_ini.ReadInteger('Certificado', 'HttpLib', 0));
      SSLXmlSignLib := TSSLXmlSignLib(arquivo_ini.ReadInteger('Certificado', 'XmlSignLib', 0));
      AtualizarXMLCancelado := arquivo_ini.ReadBool('Geral', 'AtualizarXML', True);
      ExibirErroSchema := arquivo_ini.ReadBool('Geral', 'ExibirErroSchema', True);
      RetirarAcentos := arquivo_ini.ReadBool('Geral', 'RetirarAcentos', True);
      FormatoAlerta := arquivo_ini.ReadString('Geral', 'FormatoAlerta', 'TAG:%TAGNIVEL% ID:%ID%/%TAG%(%DESCRICAO%) - %MSG%.');
      ModeloDF := TpcnModeloDF(moNFCe);
      VersaoDF := TpcnVersaoDF(arquivo_ini.ReadInteger('Geral', 'VersaoDF', 0));
      IdCSC := arquivo_ini.ReadString('Geral', 'IdToken', '');
      CSC := arquivo_ini.ReadString('Geral', 'Token', '');
      Salvar := arquivo_ini.ReadBool('Geral', 'Salvar', True);
      VersaoQRCode := TpcnVersaoQrCode(arquivo_ini.ReadInteger('WebService', 'VersaoQRCode', 0));
    end;
    if ACBRNFCe.Configuracoes.Geral.VersaoDF = ve400 then
      VersaoNFE := v400
    else
      VersaoNFE := v310;

    with ACBRNFCe.Configuracoes.WebServices do begin
      UF := arquivo_ini.ReadString('WebService', 'UF', 'SP');
      Ambiente := StrToTpAmb(Ok, IntToStr(arquivo_ini.ReadInteger('WebService', 'Ambiente', 0) + 1));
      Visualizar := arquivo_ini.ReadBool('WebService', 'Visualizar', False);
      Salvar := arquivo_ini.ReadBool('WebService', 'SalvarSOAP', False);
      AjustaAguardaConsultaRet := arquivo_ini.ReadBool('WebService', 'AjustarAut', False);
      if NaoEstaVazio(arquivo_ini.ReadString('WebService', 'Aguardar', '0')) then
        AguardarConsultaRet := ifThen(StrToInt(arquivo_ini.ReadString('WebService', 'Aguardar', '0')) < 1000, StrToInt(arquivo_ini.ReadString('WebService', 'Aguardar', '0')) * 1000, StrToInt(arquivo_ini.ReadString('WebService', 'Aguardar', '0')));

      if NaoEstaVazio(arquivo_ini.ReadString('WebService', 'Tentativas', '5')) then
        Tentativas := StrToInt(arquivo_ini.ReadString('WebService', 'Tentativas', '5'));

      if NaoEstaVazio(arquivo_ini.ReadString('WebService', 'Intervalo', '0')) then
        IntervaloTentativas := ifThen(StrToInt(arquivo_ini.ReadString('WebService', 'Intervalo', '0')) < 1000, StrToInt(arquivo_ini.ReadString('WebService', 'Intervalo', '0')) * 1000, StrToInt(arquivo_ini.ReadString('WebService', 'Intervalo', '0')));

      TimeOut := arquivo_ini.ReadInteger('WebService', 'TimeOut', 5000);
      ProxyHost := arquivo_ini.ReadString('Proxy', 'Host', '');
      ProxyPort := arquivo_ini.ReadString('Proxy', 'Porta', '');
      ProxyUser := arquivo_ini.ReadString('Proxy', 'User', '');
      ProxyPass := arquivo_ini.ReadString('Proxy', 'Pass', '');
    end;
    MotivoContigencia := arquivo_ini.ReadString('WebService','MotivoContingencia','Sem conexão com a Internet.');
    ACBRNFCe.SSL.SSLType := TSSLType(arquivo_ini.ReadInteger('WebService', 'SSLType', 0));

    with ACBRNFCe.Configuracoes.Arquivos do begin
      Salvar := arquivo_ini.ReadBool('Arquivos', 'Salvar', false);
      SepararPorMes := arquivo_ini.ReadBool('Arquivos', 'PastaMensal', false);
      AdicionarLiteral := arquivo_ini.ReadBool('Arquivos', 'AddLiteral', false);
      EmissaoPathNFe := arquivo_ini.ReadBool('Arquivos', 'EmissaoPathNFe', false);
      SalvarEvento := arquivo_ini.ReadBool('Arquivos', 'SalvarPathEvento', false);
      SepararPorCNPJ := arquivo_ini.ReadBool('Arquivos', 'SepararPorCNPJ', false);
      SepararPorModelo := arquivo_ini.ReadBool('Arquivos', 'SepararPorModelo', false);
      PathSalvar := arquivo_ini.ReadString('Geral', 'PathSalvar', PathWithDelim(ExtractFilePath(Application.ExeName)) + 'Logs');
      PathSchemas := arquivo_ini.ReadString('Geral', 'PathSchemas', '');
      PathNFe := arquivo_ini.ReadString('Arquivos', 'PathNFe', '');
      PathInu := arquivo_ini.ReadString('Arquivos', 'PathInu', '');
      PathEvento := arquivo_ini.ReadString('Arquivos', 'PathEvento', '');
    end;

//    EditLogoMarca := Ini.ReadString('PDV', 'CAMINHO_LOGO', '');
//    if ACBRNFCe.DANFE <> nil then
//      ACBRNFCe.DANFE.TipoDANFE := tiNFCe;
//    if (EditLogoMarca <> '') and (FileExists(EditLogoMarca)) then
//      ACBRNFCe.DANFE.Logo := EditLogoMarca;
//    ACBRDANFENFCe.FastFile := 'C:\TALOS\pdv\Schemas\DANFeNFCe.fr3';
//
//    edtcfop := Ini.ReadString('Geral', 'CFOP_PADRAO', '5101');
//
//    EdFormatoOff := Ini.ReadInteger('WebService', 'FormatoOFF', 0);
//    ContigenciaPermanente := Ini.ReadBool('WebService', 'ContingenciaPermanente', false);
//    edtEmitCNPJ := Ini.ReadString('Emitente', 'CNPJ', '');
//    edtEmitIE := Ini.ReadString('Emitente', 'IE', '');
//    edtEmitIM := Ini.ReadString('Emitente', 'IM', '');
//    edtEmitRazao := Ini.ReadString('Emitente', 'RazaoSocial', '');
//    edtEmitFantasia := Ini.ReadString('Emitente', 'Fantasia', '');
//    edtEmitFone := Ini.ReadString('Emitente', 'Fone', '');
//    edtEmitCEP := Ini.ReadString('Emitente', 'CEP', '');
//    edtEmitLogradouro := Ini.ReadString('Emitente', 'Logradouro', '');
//    edtEmitNumero := Ini.ReadString('Emitente', 'Numero', '');
//    edtEmitComp := Ini.ReadString('Emitente', 'Complemento', '');
//    edtEmitBairro := Ini.ReadString('Emitente', 'Bairro', '');
//    edtEmitCodCidade := Ini.ReadString('Emitente', 'CodCidade', '');
//    edtEmitCidade := Ini.ReadString('Emitente', 'Cidade', '');
//    edtEmitUF := Ini.ReadString('Emitente', 'UF', '');
//    edtSerie := Ini.ReadString('Emitente', 'Serie', '');
//
//    edDescEsta := Ini.ReadString('Impressao', 'Descricao via estabelecimento', 'Via do Consumidor');
//    edMargem := Ini.ReadInteger('Impressao', 'Espessura Margem', 1);
//    edMargEsq := Ini.ReadFloat('Impressao', 'Margem Esquerda', 0.6);
//    edMargDir := Ini.ReadFloat('Impressao', 'Margem Direita', 0.51);
//    edMargSup := Ini.ReadFloat('Impressao', 'Margem Superior', 0.8);
//    edMarginf := Ini.ReadFloat('Impressao', 'Margem Inferior', 0.8);

   finally
    arquivo_ini.Free;
  end;
end;


end.
