unit principal;

interface

uses
  Winapi.Windows, Winapi.Messages,Winapi.TlHelp32, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, MidasLib,
  JvBaseDlg, JvSelectDirectory, ACBrValidador, ACBrBase, ACBrDFe, ACBrNFe,
  System.Actions, Vcl.ActnList, Data.DB, MemDS, DBAccess, Uni, TFlatHintUnit,
  LockApplication, ResizeKit, AdvOfficeStatusBar, AdvOfficeStatusBarStylers,
  System.ImageList, Vcl.ImgList, AdvSmoothButton, Vcl.Buttons, cyBaseSpeedButton,
  cySpeedButton, AdvMetroButton, AdvSmoothPanel, AdvSmoothExpanderPanel,
  dxGDIPlusClasses, Vcl.ExtCtrls, dxTileControl, cxClasses, dxCustomTileControl,
  IniFiles, ACBrBAL, ACBrDevice;

type
  TImpressora = (SemImpressora, NaoFiscal, Fiscal);

  TGaveta = (SemGaveta, GavImpNaoFiscal, GavImpFiscal);

  TTipoCupom = (tcNFCE, tcSAT, tcSimples);

  TStatusTeclado = (stON, stOFF);

  TTipoTeclado = (ttNumerico, ttTefone, ttAlphaNumerico);

type
  TfrmPrincipal = class(TForm)
    pstatus: TAdvOfficeStatusBar;
    ImageList1: TImageList;
    AdvOfficeStatusBarOfficeStyler1: TAdvOfficeStatusBarOfficeStyler;
    ResizeKit1: TResizeKit;
    AdvSmoothExpanderPanel1: TAdvSmoothExpanderPanel;
    Label17: TLabel;
    AdvMetroButton1: TAdvMetroButton;
    AdvMetroButton2: TAdvMetroButton;
    imgFundo: TImage;
    AdvSmoothExpanderPanel3: TAdvSmoothExpanderPanel;
    Label1: TLabel;
    AdvSmoothExpanderPanel4: TAdvSmoothExpanderPanel;
    FlatHint1: TFlatHint;
    IBCDataSource1: TUniDataSource;
    qrForma: TUniQuery;
    query: TUniQuery;
    query2: TUniQuery;
    query3: TUniQuery;
    ActionList1: TActionList;
    vender: TAction;
    configuracoes: TAction;
    menu_fiscal: TAction;
    balanca: TAction;
    ecf: TAction;
    sobre: TAction;
    sair: TAction;
    usuario: TAction;
    mudarsenha: TAction;
    logoff: TAction;
    ACBrNFe1: TACBrNFe;
    AdvSmoothButton4: TAdvSmoothButton;
    AdvSmoothButton6: TAdvSmoothButton;
    AdvSmoothButton7: TAdvSmoothButton;
    CheckCPF1: TACBrValidador;
    TestaCnpj: TACBrValidador;
    GerenciarNFCe: TAction;
    DIretorio: TJvSelectDirectory;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Sair1Click(Sender: TObject);
    procedure NotaFiscalMod2SerieD1Click(Sender: TObject);
    procedure Balana1Click(Sender: TObject);
    procedure Geral1Click(Sender: TObject);
    procedure AdvGlowButton175Click(Sender: TObject);
    procedure AdvGlowButton1Click(Sender: TObject);
    procedure AdvGlowButton4Click(Sender: TObject);
    procedure CarregaSistemaVenda;
    procedure VendasPDV1Click(Sender: TObject);
    procedure tlPhotosClick(Sender: TdxTileControlItem);
    procedure tlAgentsClick(Sender: TdxTileControlItem);
    procedure dxtlcntrltmTileItem1Click(Sender: TdxTileControlItem);
    procedure tlSystemInformationClick(Sender: TdxTileControlItem);
    procedure dxTileItem1Click(Sender: TdxTileControlItem);
    procedure V1Click(Sender: TObject);
    procedure S1Click(Sender: TObject);
    procedure C1Click(Sender: TObject);
    procedure B1Click(Sender: TObject);
    procedure pstatusClick(Sender: TObject);
    procedure AdvMetroButton2Click(Sender: TObject);
    procedure bt_menu02Click(Sender: TObject);
    procedure bt_menu07Click(Sender: TObject);
    procedure AdvMetroButton1Click(Sender: TObject);
    procedure venderExecute(Sender: TObject);
    procedure configuracoesExecute(Sender: TObject);
    procedure balancaExecute(Sender: TObject);
    procedure sairExecute(Sender: TObject);
  private
    iGaveta: Integer;
    { Private declarations }
    function LerFormasPagto: Boolean;
  public
    { Public declarations }
    TipoImpressora: TImpressora;
    GavetaImpressora: TGaveta;
    procedure GravaIni(sArquivo, Secao, Linha, Valor: string);
    function LerIni(sArquivo, Secao, Linha: string; Def: string): string;
    function ApenasNumerosStr(pStr: string): string;
    function IsInteger(s: string): integer;
    function codifica(Tabela: string; qtde_digitos: integer): string;
    function ProcessExists(exeFileName: string): boolean;
  end;

const
  StRecDinheiro = 'DINHEIRO';
  StRecConvenio = 'CONVENIO';
  StRecCrediario = 'CARTEIRA';
  StRecCartaoCR = 'CARTAO CREDITO';
  StRecCartaoDE = 'CARTAO DEBITO';
  StRecCheque = 'CHEQUE';
  StRecTEF = 'TEF';

type
 // tipo de bandeira tef
  Tbandeira_tef = (Tef_Redecard, Tef_Visanet, Tef_Amex, Tef_TecBan, Tef_Hipercard, Tef_Tribanco);

var
  frmPrincipal: TfrmPrincipal;
  TipoDeCupom: TTipoCupom;
  ExibeTecladoVirtual, AtivaTouch: Boolean;

  // configurações

  sModelo: string;
  bHabGuilhotina: Boolean;
  bEdicaoRelatorio:Boolean;
  bNao_utiliza_extra :Boolean;
  // retorno da busca de produtos
  sProd_nome, sProd_barra, sProd_unidade, sProd_CST: string;
  iImpressora, iProd_codigo: integer;
  rProd_aliquota, rProd_Estoque, rProd_preco, rProd_qtde, rProd_total, rProd_desconto_maximo, rProd_acrescimo_maximo: real; // armazenar o desconto maximo permitido por produto
  rProd_desconto, rProd_acrescimo: real; // armazenar o desconto e acrescimo no item
  sProd_Tamanho: string;
  sProd_Cor, sProd_Compl_Pizza: string;

  (* Retorno do ECF *)
  sMsg: string;

  (* Lista de Formas de Pagamento que exigem tratamento especial no fechamento da venda*)
  lForma_pgto_Cheque_Avista, lForma_pgto_Cheque_Aprazo, lForma_pgto_Crediario, lForma_pgto_Cartao_Debito, lForma_pgto_Cartao_Credito, lForma_pgto_dinheiro, lForma_pgto_Convenio: string;
  (* Dados do ECF *)
  sCaixa: string; // numero do caixa
  sECF_Operador: string; // numero do operadoro do ECF
  iECF_Modelo: integer; // modelo do ECF - 1 Bema / 2 Daruma / 3 Sweda
  sECF_Codigo_Sefa: string; // Cod do ECf na Sefa - Ver sistema VALIDADOR ECF
  sECF_MF_Adicional: string; // Letra indicativa da MF adicional do ECF (geralmente em branco)
  sECF_Tipo: string; // tipo do ecf ECF-IF ou ECF-PDV
  sECF_Marca: string; // Marcao do Ecf
  sECF_Modelo: string; // Modelo do ECF
  sECF_Versao_SB: string; // Versao do Software Basico do ECF
  sECF_Data_SB: string; // data de instalacao do Software basico do ecf
  sECF_Hora_SB: string; // hora de instalacao do software basico
  sECF_Porta: string;
  sECF_usuario: string;
  sECF_Desconto_Iss: string;
  sECF_Diretorio_MFD: string; // diretorio onde serah gravado o arquivo mdf feito por sistema
                                 // externo
  (* Informacoes temporarias do ECF *)
  dData_Sistema: Tdatetime;
  dData_Movimento: Tdatetime;
  hHora_Cupom: TDateTime;
  sNumero_Cupom: string; // numero do coo atual
  sNumero_Venda: string; // Numero do cupom fiscal atual
  sNumero_contador_cupom: string; // numero de contador do cupom fiscal atual
  sCOO, sGNF, sGRG, sCDC, sCER: string; // outros contadores do ecf
  (* Display do Teclado *)
//  men: array[0..40] of byte; // armazenar dados para impressao no display do teclado
  (* Dados da empresa *)
  sEmpresa_CNPJ, sEmpresa_Nome, sEmpresa_IE, sEmpresa_IM, sEmpresa_Endereco, sempresa_Rua, sempresa_Numero, sempresa_Bairro, sEmpresa_Cidade, sempresa_complemento, sempresa_CEP, sempresa_telefone, sempresa_fax, sempresa_email, sEmpresa_UF, sempresa_Codigo, sempresa_ibge: string;
  (* Dados do Sistema / Empresa Desenvolvedora *)
  sPAF_Nome: string;
  sPAF_Versao: string;
  sPAF_Executavel: string;
  sPAF_Empresa: string;
  sPAF_CNPJ: string;
  sPAF_IE: string;
  sPAF_IM: string;
  sPAF_Endereco: string;
  sPAF_Telefone: string;
  sPAF_Contato: string;
  sPAF_Laudo: string;
  sPAF_MD5: string;
  (* Classificar o tipo de venda do sistema*)
  iTipo_Venda: integer; // 1 Super 2 Prevenda 3 Posto
  (* Configuraçoes do Banco de Dados *)
  iTamanho_codigo_balanca: integer; // tamanho do codigo da balaca 4 ou 5
  bMuda_qtde: boolean; // configuracao para permitir a edicao da qtde
  bMuda_total, bMudouProvisorio, bMuda_unitario, bMensagem_Cupom,
  Men_Cup_Simples, Men_Cup_NFCE, Men_Cup_SAT, Men_Cup_Cozinha: boolean; // configuracao para permitir a edicao do preco unitario
  bPesagemAutomatica: Boolean;
  bSenha_Cancel_Item: boolean; // exigir senha no cancelamento do item
  bSenha_Cancel_Cupom: boolean; // exigir senha no cancelamento do cupom

  iBal_time: integer; // configuracao de time out da balanca
  sBal_Resposta: string; // resposta da balanca
  rBal_peso: real; // peso lido na balanca

  sPasta_foto_produto: string; // pasta onde estao as fotos dos produtos
  sPasta_config: string;
  sArquivo_config: string;
  sPasta_sistema: string;
  bHabLogoMarca: Boolean; // Logo Marca PDV

  bBusca_foto_produto: boolean; // buscar foto do produto

  bPerguntaTipoCupom: Boolean; // Se aparece a pergunta do tipo de cupom depois de fechar a venda

  iPesquisa_produto: integer; // listar no grid do form produto_consulta os itens filtrados
                                 // 0 - pesquisa feita no form de pesquisa
                                 // 1 - pesquisa feita na venda
                                 // 2 - pesquisa feita no form de consulta de preco

  SDAV_ATUALIZADO: string;

  (* Dados do Consumidor *)
  sCli_Nome, sCli_Endereco, sCli_CPF, sCli_Cidade, sCli_Placa, sCli_Km, sCli_uf, sCli_codigo, scli_cep, scli_vendedor, sCLi_PegoPor: string;

  (* Controles de venda *)
  bVenda_Cartao, bVenda_Crediario, bVenda_Cheque, bVenda_dinheiro, bVenda_Convenio: boolean; // verificar se foi vendido nas formas de pagamento que exigem
                               // tratamento especial
  bConsulta_crediario: boolean; // verificar se a consulta na tela de clientes eh para o
                                   // crediario;
  iCrediario_prestacao: integer; // armazenar a qtde de prestacoes no crediario
  sCrediario_Nome: string; // nome da forma de pagamento de creadiario

  bCadastra_Cheque, bCadastra_Placa, bCadastra_Convenio, bCadastra_Crediario: boolean; // verificar cadastramentos no final da venda

  sTotalizador_Crediario, sNome_Totalizador_Crediario: string; // nome do totalizador gravado no ecf para emissao de compro-
                                     // vante nao fiscal no final da venda em crediario.

  sTotalizador_Recebimento, sNome_Totalizador_Recebimento: string; // nome do totalizador gravado no ecf para emissao de compro-
                                     // vante nao fiscal no final da venda em crediario.

  sIndice_Sangria, sIndice_Suprimento: string; // numero do indice gravado na impressora da
                                           // sangria e do suprimento
  iComprovente_Crediario: integer; // Imprimir comprovante nao fiscal do crediairo


  (* Outras*)
  bContinua: boolean; // Continuar ou nao um procedimento/funcao
  bSair_campo: boolean; // forçar a edicao do campo
  bSupervisor_autenticado: boolean; // verifiar se o supervisor foi logado

  (* Usuario e Senha *)
  sFuncao_Senha: string; // determinar a funcao para a tela de senha
  busuario_autenticado: boolean; // verificar se o usuario foi autenticado
  icodigo_Usuario: integer; // codigo do usuario logado
  sNome_Operador: string; // nome do operador
  iNumCaixa: integer; // Identificação do caixa
  iCFOP: string; // cfop de venda paf
  bFechamentoCego:Boolean;

  (* Identificacao do consumidor no inicio da venda --> CAt52 *)
  bIdentifica_consumidor: boolean;
  sConsumidor_CPF, sConsumidor_Nome, sConsumidor_Endereco: string;

  (* variaveis de comunicao com o servidor *)
  sServidor_host, sServidor_Base: string;
  bServidor_Conexao: boolean;

  (* Pre venda *)
  bLanca_pre_venda: boolean; // flag para fazer o fechamento da pre-venda
  sPre_Venda_Numero: string; // armazenar o numero da prevenda para ser impresso no final do cupom
  iPre_venda_codigo, iPre_Venda_Vendedor, iPre_venda_cliente: integer; // codigo do vendedor e do cliente
  rPre_venda_desconto, rPre_venda_acrescimo: real; // acrescimo e desconto no fechamento


  (* OS *)
  bLanca_OS: boolean; // flag para fazer o fechamento da OS
  sOS_Numero: string; // armazenar o numero da prevenda para ser impresso no final do cupom
  iOS_codigo, iOS_Vendedor, iOS_cliente: integer; // codigo do vendedor e do cliente
  rOS_desconto, rOS_acrescimo: real; // acrescimo e desconto no fechamento


  (* Abasteciento *)
  bLanca_Abastecimento: boolean; // flag para fazer o fechamento do abastecimento

  (* Mesas *)
  bLanca_Mesa: boolean; // flag para fazer o fechamento da Mesa
  bLanca_Comanda: boolean; // flag para fazer o fechamento da Comanda/Mesa
  sMesa_Numero: string; // armazenar o numero da mesa para ser impresso no final do cupom
  iMesa_codigo, iID_Delivery: integer; // codigo da Mesa
  bLanca_Delivery: boolean; // flag para fazer o fechamento do Delivery


  (* dav *)
  sDav_numero: string; // armazenar o numero do dav caso for ser impresso no final do cupom

  (* atualizacao de dados *)
  sCarga_data, scarga_hora: string; // data e hora da ultima atualizacao de dados
  Arquivo_ini: TIniFile; // nome do arquivo .ini

  (*flag de retorno da situacao do caixa e da venda*)
  bCaixa_aberto: boolean;
  bativa_venda: boolean;

  // ramo de atividade
  sRamo_Tipo: string;

  // posto - rodape do cupom fiscal
  sPosto_rodape: string;
  iCodigo_abastecimento, ilinha_abastecimento: integer;

  // posto - porta de comunicacao com Concentrador
  iPosto_porta: integer;

  // verificar se o cupom estah aberto, caso o comando direto da ecf falhe
  bcupom_aberto: boolean;
  bVerifica_Caixa:Boolean;

  // verificar se pede senha ao dar desconto
  isenha_desconto: integer;
  rDesconto_maximo, racrescimo_maximo: real;

  // Verificar se vai pedir para identificar o vendedor no fechamento
  // da venda ou não
  bIdentificarVendedor: Integer;
  sCodigoSegurancaFicha, sImpressora_Venda_Simples, sImpressora_Cozinha, sImpressora_Ficha: string;
  bAtivaImpFicha,bImpressaoCozinha, bExibeCumponNFTela: Boolean;
  //  Identifica qual o campo será mostrado na coluna onde ´tem o código
  // de barras na consulta do produto
  // 0 - Código de Barras, 1 - Referência, 2 - Referência+Tamanho+Cor
  iColunaCOnsultaProdutos: Integer;
  sPortaGaveta: string; // Porta de Impressora e gaveta nao Fiscal
  iModeloGaveta:Integer;
  iQtdLinhasFinal: Integer; // quantidade de linhas no final da nota 40c

implementation

uses
  modulo, funcoes, venda, senha, msg_Operador, Orcamento, produto_consulta,
  Orcamento_Abrir, Math, caixa_abertura, notafiscal_menu, config_balanca, Config,
  UtiSplash, UFuncoes, sobre, contasreceber, frmNFCEs, senha_supervisor,
  FechamentoCego, caixa_fechamento, Tipo_Cupom, UnitVersao;


{$R *.dfm}

function tfrmprincipal.codifica(tabela: string; qtde_digitos: integer): string;
begin
  frmmodulo.qrmestre.close;
  frmmodulo.qrmestre.sql.Clear;
  frmmodulo.qrmestre.sql.add('select * from c000000 where codigo = ''' + tabela + '''');
  frmmodulo.qrMestre.Open;
  if frmmodulo.qrmestre.RecNo = 1 then begin
    if frmmodulo.qrmestre.FieldByName('sequencia').asinteger < 1 then begin
      result := '0000000001';
      frmmodulo.qrMestre.Edit;
      frmmodulo.qrMestre.fieldbyname('sequencia').asinteger := 2;
      frmmodulo.qrMestre.Post;

    end
    else begin
      result := zerar(inttostr(frmmodulo.qrMestre.fieldbyname('sequencia').asinteger), qtde_digitos);
      frmmodulo.qrMestre.Edit;
      frmmodulo.qrMestre.fieldbyname('sequencia').asinteger := frmmodulo.qrMestre.fieldbyname('sequencia').asinteger + 1;
      frmmodulo.qrMestre.Post;
    end;
  end
  else begin
    Showmessage('Não foi possível concluir com a operação!' + #13 + 'Erro: Código de sequência não encontrado na tabela de códigos.');
  end;
end;

function TfrmPrincipal.ProcessExists(exeFileName: string): Boolean;
var
 ContinueLoop: BOOL;
 FSnapshotHandle: THandle;
 FProcessEntry32: TProcessEntry32;
begin
 FSnapshotHandle := CreateToolhelp32Snapshot(TH32CS_SNAPPROCESS, 0);
 FProcessEntry32.dwSize := SizeOf(FProcessEntry32);
 ContinueLoop := Process32First(FSnapshotHandle, FProcessEntry32);
 Result := False;
 while Integer(ContinueLoop) <> 0 do
 begin
    if ((UpperCase(ExtractFileName(FProcessEntry32.szExeFile)) =
     UpperCase(ExeFileName)) or (UpperCase(FProcessEntry32.szExeFile) =
     UpperCase(ExeFileName))) then
   begin
     Result := True;
   end;
   ContinueLoop := Process32Next(FSnapshotHandle, FProcessEntry32);
 end;
 CloseHandle(FSnapshotHandle);
end;

procedure TfrmPrincipal.configuracoesExecute(Sender: TObject);
begin
  frmsenha_supervisor := tfrmsenha_supervisor.create(self);
  frmsenha_supervisor.Configuracoes := True;
  frmsenha_supervisor.showmodal;

  if not bSupervisor_autenticado then
    Exit;
  frmconfig := tfrmconfig.create(self);
  frmconfig.showmodal;
end;

procedure TfrmPrincipal.bt_menu07Click(Sender: TObject);
begin

end;

// -------------------------------------------------------------------------- //

procedure TfrmPrincipal.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  application.Terminate;
end;

// -------------------------------------------------------------------------- //

procedure TfrmPrincipal.FormCreate(Sender: TObject);
var
  hMutex : integer;
begin

   hMutex := CreateMutex(0, TRUE, 'Pdv');
    if GetLastError = ERROR_ALREADY_EXISTS then begin
    beep;
    ShowMessage('Já existe PDV em execução. Verifique a sua barra de tarefas!');
    Application.Terminate;
    end;

  iImpressora := 1;
  iGaveta := StrToInt(frmPrincipal.LerINi(ExtractFilePath(Application.ExeName) + 'CFG\cfg.ini', 'GAVETA', 'LOCAL', '0'));

  case iImpressora of
    0:
      begin // Sem Impressora
        TipoImpressora := SemImpressora;
      end;
    1:
      begin // Nao Fiscal
        TipoImpressora := NaoFiscal;
      end;
    2:
      begin // Fiscal
        TipoImpressora := Fiscal;
      end;

  end;

  case iGaveta of
    0:
      begin // Sem Gaveta
        GavetaImpressora := SemGaveta;
      end;
    1:
      begin // Gaveta Impressora Nao Fiscal
        GavetaImpressora := GavImpNaoFiscal;
      end;
    2:
      begin // Gaveta Impressora Fiscal
        GavetaImpressora := GavImpFiscal;
      end;

  end;

  Top := 0;
  Left := 0;

  try
    AcertaPadraoData;
  except
  end;

  frmModulo := TfrmModulo.create(self);

  frmModulo.conexao.Connected := false;
  frmModulo.conexao.Database := LerINi(ExtractFilePath(Application.ExeName) + 'CFG\cfg.ini', 'CONFIGURACOES', 'BDLOCAL', 'C:\TALOS\pdv\bd\nfce_datpdv.fdb');
  frmModulo.conexao.Connected := true;

  try
    frmModulo.Conexao_Servidor.Connected := false;
    frmModulo.Conexao_Servidor.Server := LerINi(ExtractFilePath(Application.ExeName) + 'CFG\cfg.ini', 'CONFIGURACOES', 'SERVIDOR', 'localhost');
    frmModulo.Conexao_Servidor.Database := LerINi(ExtractFilePath(Application.ExeName) + 'CFG\cfg.ini', 'CONFIGURACOES', 'BDSERVIDOR', 'C:\TALOS\server\bd\base.fdb');
    frmModulo.Conexao_Servidor.Connected := true;

    frmModulo.Conexao_Numerador.Connected := false;
    frmModulo.Conexao_Numerador.Server := LerINi(ExtractFilePath(Application.ExeName) + 'CFG\cfg.ini', 'CONFIGURACOES', 'SERVIDOR', 'localhost');
    frmModulo.Conexao_Numerador.Database := LerINi(ExtractFilePath(Application.ExeName) + 'CFG\cfg.ini', 'CONFIGURACOES', 'BDSERVIDOR', 'C:\TALOS\server\bd\base.fdb');
    frmModulo.Conexao_Numerador.Connected := true;

    bServidor_Conexao := true;
  except
    bServidor_Conexao := false;
  end;
  try
    if strtoint(LerINi(ExtractFilePath(Application.ExeName) + 'CFG\cfg.ini', 'BALANCA', 'Modelo', '0')) <> 0 then begin
      frmmodulo.balanca.Modelo           := TACBrBALModelo(StrToInt(LerIni(ExtractFilePath(Application.ExeName) + 'CFG\cfg.ini', 'BALANCA', 'Modelo', '0')));
      frmmodulo.balanca.Device.HandShake := TACBrHandShake(StrToInt(LerIni(ExtractFilePath(Application.ExeName) + 'CFG\cfg.ini', 'BALANCA', 'Handshaking', '0')));
      frmmodulo.balanca.Device.Parity    := TACBrSerialParity(StrToInt(LerIni(ExtractFilePath(Application.ExeName) + 'CFG\cfg.ini', 'BALANCA', 'Parity', ' 0')));
      frmmodulo.balanca.Device.Stop      := TACBrSerialStop(StrToInt(LerIni(ExtractFilePath(Application.ExeName) + 'CFG\cfg.ini', 'BALANCA', 'Stopbits', '0')));
      frmmodulo.balanca.Device.Data      := StrToInt(LerIni(ExtractFilePath(Application.ExeName) + 'CFG\cfg.ini', 'BALANCA', 'Databits', '0'));
      frmmodulo.balanca.Device.Baud      := StrToInt(LerIni(ExtractFilePath(Application.ExeName) + 'CFG\cfg.ini', 'BALANCA', 'Baudrate', '0'));
      frmmodulo.balanca.Device.Porta     := LerIni(ExtractFilePath(Application.ExeName) + 'CFG\cfg.ini', 'BALANCA', 'Porta', '');
      frmmodulo.balanca.Device.TimeOut   := StrToInt(LerIni(ExtractFilePath(Application.ExeName) + 'CFG\cfg.ini', 'BALANCA', 'Timeout', '1000'));
      iBal_time := StrToInt(LerIni(ExtractFilePath(Application.ExeName) + 'CFG\cfg.ini', 'BALANCA', 'Timeout', '1000'));
    end;
  except
    Application.MessageBox('As Configurações da balança são inválidas, verifique!', 'Atenção!', MB_ICONINFORMATION);
  end;

  sECF_Porta := LerINi(ExtractFilePath(Application.ExeName) + 'CFG\cfg.ini', 'ECF', 'Porta', '');


  AtivaTouch := LerINi(ExtractFilePath(Application.ExeName) + 'CFG\cfg.ini', 'Geral', 'UTILIZA TOUCH', '0') = '1';
  bVerifica_Caixa := LerINi(ExtractFilePath(Application.ExeName) + 'CFG\cfg.ini', 'Geral', 'VERIFICA_CAIXA', '1') = '1';

  ExibeTecladoVirtual := LerINi(ExtractFilePath(Application.ExeName) + 'CFG\cfg.ini', 'Geral', 'UTILIZA TECLADO', '0') = '1';

  bHabGuilhotina := StrToBool(LerIni(ExtractFilePath(Application.ExeName) + 'CFG\cfg.ini', 'GUILHOTINA', 'HABILITA', BoolToStr(False)));
  sModelo := LerIni(ExtractFilePath(Application.ExeName) + 'CFG\cfg.ini', 'GUILHOTINA', 'MODELO', 'PADRÃO');

  Arquivo_ini := TIniFile.Create('.\cfg\Paf.ini');

  //[PAF]
  //NOME

  sPAF_Nome := Cript('D', Arquivo_ini.ReadString('D37DEB63', 'C84EC847C0', ''));
  //VERSAO
  sPAF_Versao := Cript('D', Arquivo_ini.ReadString('D37DEB63', '49C659FA0271F3', ''));
  //MD5
  sPAF_MD5 := Cript('D', Arquivo_ini.ReadString('D37DEB63', '2329383C', ''));
  //LAUDO
  sPAF_LAUDO := Cript('D', Arquivo_ini.ReadString('D37DEB63', '2329383D', ''));

  pStatus.Panels[1].Text := sPAF_Nome + ' - ' + sPAF_Versao;
  pStatus.Panels[2].Text := 'Laudo PAF-ECF: ' + sPAF_Laudo;

  //EXECUTAVEL
  sPaf_Executavel := Cript('D', Arquivo_ini.ReadString('D37DEB63', '75E369FF0F569991D64CD1', ''));


  //[EMPRESA DESENVOLVEDORA]
  //NOME
  sPAF_Empresa := Cript('D', Arquivo_ini.ReadString('F764E464FA72F673A2B6B253DE145AE870948F9DA2B9B1', '61F613313A', ''));
  //CNPJ
  sPAF_CNPJ := Cript('D', Arquivo_ini.ReadString('F764E464FA72F673A2B6B253DE145AE870948F9DA2B9B1', '031F38D968', ''));
  //IE
  sPAF_IE := Cript('D', Arquivo_ini.ReadString('F764E464FA72F673A2B6B253DE145AE870948F9DA2B9B1', '75E778', ''));
  //IM
  sPAF_IM := Cript('D', Arquivo_ini.ReadString('F764E464FA72F673A2B6B253DE145AE870948F9DA2B9B1', '8696B6', ''));
  //TELEFONE
  sPAF_Telefone := Cript('D', Arquivo_ini.ReadString('F764E464FA72F673A2B6B253DE145AE870948F9DA2B9B1', '8FBA55F07AF271F40B', ''));
  //ENDERECO
  SPAF_Endereco := Cript('D', Arquivo_ini.ReadString('F764E464FA72F673A2B6B253DE145AE870948F9DA2B9B1', '8FBA55F07AF271F40c', ''));
  //CONTATO
  sPAF_Contato := Cript('D', Arquivo_ini.ReadString('F764E464FA72F673A2B6B253DE145AE870948F9DA2B9B1', '8FBA55F07AF271F40D', ''));


  //[ECF]
  //MARCA
  sECF_Marca := Cript('D', Arquivo_ini.ReadString('B9A7BF57', '13392FD058AB', ''));
  // COD DO ECF
  if Arquivo_ini.ReadString('B9A7BF57', '13392FD058AC', '0') <> '0' then
    iECF_Modelo := strtoint(Cript('D', Arquivo_ini.ReadString('B9A7BF57', '13392FD058AC', '0')))
  else
    iECF_Modelo := 0;
  //MODELO
  sECF_Modelo := Cript('D', Arquivo_ini.ReadString('B9A7BF57', 'A4A8A2B7B0CE2D', ''));
  //TIPO
  sECF_Tipo := Cript('D', Arquivo_ini.ReadString('B9A7BF57', '6E9BB153EE', ''));
  //CNIF
  sECF_Codigo_Sefa := Cript('D', Arquivo_ini.ReadString('B9A7BF57', '5CC640D853', ''));
  //USUARIO
  sECF_Usuario := Cript('D', Arquivo_ini.ReadString('B9A7BF57', 'B655FD020F53AFB5', ''));
  //PERMITE_ISSQN
  sECF_Desconto_Iss := Cript('D', Arquivo_ini.ReadString('B9A7BF57', 'B058C84ADB1758D607001A38CF27', ''));
  //DIRETORIO_:= Cript('D',Arquivo_FISCAL
  sECF_Diretorio_MFD := Cript('D', Arquivo_ini.ReadString('B9A7BF57', 'BC58F41617599BA6DE7E948094DC020A2526D354D36AE6609C', ''));


  //[USUARIO]

  //NOME
  sEmpresa_Nome := Cript('D', Arquivo_ini.ReadString('4CF8193FCC2D45DF', '5EF5100C1D', ''));
  //CNPJ
  sEmpresa_CNPJ := Cript('D', Arquivo_ini.ReadString('4CF8193FCC2D45DF', 'C855F6162C', ''));
  //IE
  sEmpresa_IE := Cript('D', Arquivo_ini.ReadString('4CF8193FCC2D45DF', '292B25', ''));
  //IM
  sEmpresa_IM := Cript('D', Arquivo_ini.ReadString('4CF8193FCC2D45DF', '3ADA7D', ''));
  //ENDERECO
  sEmpresa_Endereco := Cript('D', Arquivo_ini.ReadString('4CF8193FCC2D45DF', '3ADA7E', '')) + ' ' +
  {BAIRRO}Cript('D', Arquivo_ini.ReadString('4CF8193FCC2D45DF', '3ADA7F', '')) + ' ' +
  {CIDADE}Cript('D', Arquivo_ini.ReadString('4CF8193FCC2D45DF', '3ADA7G', '')) + ' ' +
  {UF}Cript('D', Arquivo_ini.ReadString('4CF8193FCC2D45DF', '3ADA7H', '')) + ' ' +
  {CEP}Cript('D', Arquivo_ini.ReadString('4CF8193FCC2D45DF', '3ADA7I', ''));
  // UF
  sEmpresa_UF := Cript('D', Arquivo_ini.ReadString('4CF8193FCC2D45DF', '3ADA7H', ''));

  // TIPO DE ATIVIDADE
  // 1 NORMAL, 2 AUTOPECAS , 3 POSTO , 4 RESTAURANTE
  sRamo_Tipo := Cript('D', Arquivo_ini.ReadString('4CF8193FCC2D45DF', '3ADA80', ''));

  // liberar arquivo ini da memoria
  Arquivo_ini.Free;

  // codigo da empresa
  if bServidor_Conexao then begin
    frmmodulo.qrfilial.open;
    sempresa_Codigo := frmModulo.qrfilial.fieldbyname('codigo').asstring;
    sempresa_ibge := frmModulo.qrfilial.fieldbyname('COD_MUNICIPIO_IBGE').asstring;
    sempresa_Rua := frmModulo.qrfilial.fieldbyname('endereco').asstring;
    sempresa_Numero := frmModulo.qrfilial.fieldbyname('numero').asstring;
    sempresa_Bairro := frmModulo.qrfilial.fieldbyname('bairro').asstring;
    sEmpresa_Cidade := frmModulo.qrfilial.fieldbyname('cidade').asstring;
    sempresa_complemento := frmModulo.qrfilial.fieldbyname('complemento').asstring;
    sempresa_CEP := frmModulo.qrfilial.fieldbyname('Cep').asstring;
    sempresa_telefone := frmModulo.qrfilial.fieldbyname('telefone').asstring;
    sempresa_fax := frmModulo.qrfilial.fieldbyname('fax').asstring;
    sempresa_email := frmModulo.qrfilial.fieldbyname('email').asstring;
  end
  else begin
    sempresa_Codigo := '';
    sempresa_ibge := '';
    sempresa_Rua := '';
    sempresa_Numero := '';
    sempresa_Bairro := '';
    sEmpresa_Cidade := '';
    sempresa_complemento := '';
    sempresa_CEP := '';
    sempresa_telefone := '';
    sempresa_fax := '';
    sempresa_email := '';
  end;

  // abrir banco de dados de configuracoes local
  frmmodulo.query.close;
  frmmodulo.query.sql.clear;
  frmmodulo.query.sql.add('select * from config');
  frmmodulo.query.open;

  isenha_desconto := frmModulo.query.fieldbyname('senha_desconto').AsInteger;

  iComprovente_Crediario := frmModulo.query.fieldbyname('COMPROVANTE_CREDIARIO').asinteger;

  sTotalizador_Crediario := frmmodulo.query.fieldbyname('TOTALIZADOR_NF_CREDIARIO').asstring;
  sNome_Totalizador_Crediario := frmmodulo.query.fieldbyname('Nome_TOTALIZADOR_NF_CREDIARIO').asstring;

  sTotalizador_Recebimento := frmmodulo.query.fieldbyname('TOTALIZADOR_NF_RECEBIMENTO').asstring;
  sNome_Totalizador_Recebimento := frmmodulo.query.fieldbyname('Nome_TOTALIZADOR_NF_RECEBIMENTO').asstring;

  sIndice_Sangria := frmModulo.query.fieldbyname('totalizador_sangria').asstring;
  sIndice_Suprimento := frmModulo.query.fieldbyname('totalizador_suprimento').asstring;

  bNao_utiliza_extra := frmModulo.query.fieldbyname('nao_utiliza_extra').asstring = 'S';

  // alimentar as variaveis com as formas de pagamentos pre-definidas que exigem tratamentos
  // especiais no fechamento da venda
  if frmmodulo.query.RecordCount > 0 then begin
    lForma_pgto_Cheque_Avista := frmmodulo.query.fieldbyname('forma_cheque').asstring;
    lForma_pgto_Cheque_Aprazo := frmmodulo.query.fieldbyname('forma_cheque_aprazo').asstring;
    lForma_pgto_Cartao_Debito := frmmodulo.query.fieldbyname('forma_cartao').asstring;
    lForma_pgto_Cartao_Credito := frmmodulo.query.fieldbyname('forma_cartao_credito').asstring;
    lForma_pgto_Crediario := frmmodulo.query.fieldbyname('forma_crediario').asstring;
    lForma_pgto_Convenio := frmmodulo.query.fieldbyname('forma_convenio').asstring;
    lForma_pgto_Dinheiro := frmmodulo.query.fieldbyname('forma_dinheiro').asstring;
  end;

  LerFormasPagto;

  // alimentando as variaveis globais do sistema


  if frmmodulo.query.fieldbyname('muda_qtde').asinteger = 1 then
    bMuda_qtde := true
  else
    bMuda_qtde := false;

  if frmmodulo.query.fieldbyname('muda_unitario').asinteger = 1 then
    bMuda_unitario := true
  else
    bMuda_unitario := false;

  if frmModulo.query.fieldbyname('muda_total').asinteger = 1 then
    bMuda_total := true
  else
    bmuda_total := false;

  bMensagem_Cupom := frmModulo.query.fieldbyname('imprime_mensagem_cupom').AsString = 'S';
  Men_Cup_Simples := frmModulo.query.fieldbyname('men_cup_simples').AsString = 'S';
  Men_Cup_NFCE := frmModulo.query.fieldbyname('men_cup_nfce').AsString = 'S';
  Men_Cup_SAT := frmModulo.query.fieldbyname('men_cup_sat').AsString = 'S';
  Men_Cup_Cozinha := frmModulo.query.fieldbyname('men_cup_cozinha').AsString = 'S';
  bPesagemAutomatica := frmModulo.query.fieldbyname('pesagem_automatica').AsString = 'S';
  bSenha_Cancel_Item := frmModulo.query.fieldbyname('solicita_senha_cancelamento').AsString = 'S';
  bSenha_Cancel_Cupom := frmModulo.query.fieldbyname('solicita_senha_cancelamento').AsString = 'S';
  rDesconto_maximo := frmModulo.query.fieldbyname('desconto_maximo_venda').AsFloat;
  bCadastra_cheque := true;

  bCadastra_Crediario := true;

  sPasta_config := ExtractFilePath(Application.ExeName) + '\cfg';
  sArquivo_config := 'cfg.ini';
  sConfiguracoes := sPasta_config + '\' + sArquivo_config;

  iTamanho_codigo_balanca := StrToInt(LerIni(sConfiguracoes, 'BALANCA', 'NDIGITOS', '5'));

  bBusca_foto_produto := StrToBool(LerINI(sConfiguracoes, 'PDV', 'HAB_IMG', BoolToStr(false)));
  sPasta_foto_produto := LerINI(sConfiguracoes, 'PDV', 'CAMINHO_IMG', ExtractFilePath(Application.ExeName) + '\img\produtos\');

  bHabLogoMarca := StrToBool(LerINI(sConfiguracoes, 'PDV', 'HAB_LOGO', BoolToStr(false)));
  EditLogoMarca := LerINI(sConfiguracoes, 'PDV', 'CAMINHO_LOGO', '');

  sPasta_sistema := ExtractFilePath(Application.ExeName);

  // alimentacao das variaveis de identificaco de consumidor para atender
  // CAT52 - Nf paulista

  if frmmodulo.query.fieldbyname('nf_paulista').asinteger = 1 then
    bIdentifica_consumidor := true
  else
    bIdentifica_consumidor := false;

  frmversao:= TFrmVersao.Create(Self);
  Label17.Caption := 'TALOS ' + FrmVersao.GetBuildInfoAsString + ' - Ponto de Vendas';
  Label1.Caption := 'TALOS ' + FrmVersao.GetBuildInfoAsString;

end;

// -------------------------------------------------------------------------- //

procedure TfrmPrincipal.FormShow(Sender: TObject);
begin
  imgFundo.Picture.LoadFromFile('C:\TALOS\PDV\img\fundo_inicial.jpg');
end;

// -------------------------------------------------------------------------- //

procedure TfrmPrincipal.Sair1Click(Sender: TObject);
begin
  close;
end;

procedure TfrmPrincipal.sairExecute(Sender: TObject);
begin
  close;
end;

procedure TfrmPrincipal.NotaFiscalMod2SerieD1Click(Sender: TObject);
begin
  frmNotafiscal_menu := tfrmNotaFiscal_menu.create(self);
  frmNotafiscal_menu.showmodal;
end;

procedure TfrmPrincipal.pstatusClick(Sender: TObject);
begin

end;

// -------------------------------------------------------------------------- //

procedure TfrmPrincipal.Balana1Click(Sender: TObject);
begin
  frmconfig_balanca := tfrmconfig_balanca.create(self);
  frmconfig_balanca.showmodal;
end;

procedure TfrmPrincipal.balancaExecute(Sender: TObject);
begin
  frmsenha_supervisor := tfrmsenha_supervisor.create(self);
  frmsenha_supervisor.Configuracoes := True;
  frmsenha_supervisor.showmodal;

  if not bSupervisor_autenticado then
    Exit;
  frmconfig_balanca := tfrmconfig_balanca.create(self);
  frmconfig_balanca.showmodal;
end;

procedure TfrmPrincipal.bt_menu02Click(Sender: TObject);
begin

end;

// -------------------------------------------------------------------------- //

procedure TfrmPrincipal.Geral1Click(Sender: TObject);
begin
  frmconfig := tfrmconfig.create(self);
  frmconfig.showmodal;
  frmconfig.free;
end;

// -------------------------------------------------------------------------- //

procedure TfrmPrincipal.venderExecute(Sender: TObject);
begin
  try
    AdvSmoothButton4.Enabled := False;
    CarregaSistemaVenda;
  finally
    AdvSmoothButton4.Enabled := True;
  end;
end;

procedure TfrmPrincipal.AdvGlowButton175Click(Sender: TObject);
begin
  frmconfig := tfrmconfig.create(self);
  frmconfig.showmodal;
end;

// -------------------------------------------------------------------------- //

procedure TfrmPrincipal.AdvGlowButton1Click(Sender: TObject);
begin
  frmNotafiscal_menu := tfrmNotaFiscal_menu.create(self);
  frmNotafiscal_menu.showmodal;
end;

// -------------------------------------------------------------------------- //

procedure TfrmPrincipal.AdvGlowButton4Click(Sender: TObject);
begin
  Close;
end;

procedure TfrmPrincipal.AdvMetroButton1Click(Sender: TObject);
begin
  Application.Minimize;
end;

procedure TfrmPrincipal.AdvMetroButton2Click(Sender: TObject);
begin
  close;
end;

procedure TfrmPrincipal.CarregaSistemaVenda;
var
  sForma: string;
  i, x: integer;
// variaveis para acertar a data e hora
  dDataHora: TSystemTime;
  Ano, Mes, Dia, H, M, S, Mil: word;
  sLinha: string;
  txt: textFile;
  TipoCupom:string;
begin
  frmModulo.spCupom_Temp_delete.prepare;
  frmModulo.spCupom_Temp_delete.execute;

  TipoCupom := UpperCase(frmPrincipal.LerINi(ExtractFilePath(Application.ExeName) + 'CFG\cfg.ini', 'Geral', 'TIPO CUPOM', 'NFCE'));
  if TipoCupom = 'SAT' then
    TipoDeCupom := tcSAT
  else if TipoCupom = 'NFC-E' then
    TipoDeCupom := tcNFCE
  else
    TipoDeCupom := tcSimples;

  bPerguntaTipoCupom := Boolean.Parse(LerINi(ExtractFilePath(Application.ExeName) + 'CFG\cfg.ini','Geral', 'PerguntaTipoCupom', 'True'));

  dData_Sistema := Date;
  dData_Movimento := dData_Sistema;

  bAtiva_Venda := true;
  sPortaGaveta := LerIni(sConfiguracoes, 'GAVETA', 'gavnaof', 'LPT1');
  iModeloGaveta := IsInteger(LerIni(sConfiguracoes, 'GAVETA', 'MODELO', '0'));
  iQtdLinhasFinal := IsInteger(LerIni(sConfiguracoes, 'IMPRESSORA', 'qtdlfin', '8'));

  sFuncao_Senha := '001';
  frmSenha := tfrmSenha.create(self);

  if Length(LerIni(sConfiguracoes, 'LOGIN', 'USUARIO', '')) = 0 then
    frmSenha.showmodal
  else
    frmSenha.LogarAutomaticamente;

  if busuario_Autenticado then
    frmSenha.Free
  else
    Exit;

  iNumCaixa := icodigo_Usuario;
  iCFOP := (LerIni(sConfiguracoes, 'Emitente', 'CFOP', ''));
  if iNumCaixa = 0 then begin
    Application.MessageBox('Número do caixa nao definido, favor verificar', 'Mensagem');
    exit;
  end;

  try
    // tem que ser verificado antes da ecf
    if busuario_Autenticado then begin
      frmmodulo.query.close;
      frmmodulo.query.sql.clear;
      frmmodulo.query.sql.add('select * from config');
      frmmodulo.query.open;
      if bVerifica_Caixa then begin
        bcaixa_aberto := True;
        if (frmmodulo.query.fieldbyname('caixa_situacao').asstring = 'ABERTO') and
          (frmmodulo.query.fieldbyname('caixa_data_movto').AsDateTime <> Date) then begin
          if Application.MessageBox('Não foi realizado o Fechamento deste caixa ainda, impossível acessar a tela de vendas.'+#13+'Deseja Efetuar o Fechamento do Mesmo?','Atenção!',MB_ICONINFORMATION+MB_YESNO) = mrYes then begin

            frmSenha_Supervisor := TfrmSenha_Supervisor.create(Self);
            frmSenha_Supervisor.FechaCaixa := True;
            frmSenha_Supervisor.showmodal;

            if not bSupervisor_autenticado then
              Exit;

            if bFechamentoCego then begin
              frmFechamentoCego := TfrmFechamentoCego.create(Self);
              frmFechamentoCego.showmodal;
            end else begin
              frmCaixa_Fechamento := TfrmCaixa_Fechamento.create(Self);
              frmCaixa_Fechamento.showmodal;
            end;

            frmmodulo.query.close;
            frmmodulo.query.sql.clear;
            frmmodulo.query.sql.add('select * from config');
            frmmodulo.query.open;
            bcaixa_aberto := True;
            if (frmmodulo.query.fieldbyname('caixa_situacao').asstring = 'ABERTO') and
              (frmmodulo.query.fieldbyname('caixa_data_movto').AsDateTime <> Date) then begin
              Application.MessageBox('Não foi identificado o fechamento do caixa atual, impossível acessar a tela de vendas.','Atenção!',MB_ICONINFORMATION+MB_YESNO);
              Exit;
            end;

          end else begin
            Exit;
          end;

        end;
      end;






      // antes de iniciar a tela venda, verificar as configuracoes necessarias
      if bVerifica_Caixa then begin
        with frmModulo do begin
          query_servidor.Close;
          query_servidor.SQL.Clear;
          query_servidor.SQL.Add('select * from c000045 where codigo = '+QuotedStr('000099'));
          query_servidor.Open;
          if query_servidor.IsEmpty then begin
            Application.MessageBox('Não foi identificado o Caixa Geral "99" no Gerencial, impossivel realizar vendas!','Atenção!',MB_ICONINFORMATION);
            Exit;
          end;
          if query_servidor.FieldByName('DATA').AsDateTime <> dData_Sistema then begin
            Application.MessageBox('Não foi aberto um novo Caixa Geral "99" no Gerencial, impossivel realizar vendas!','Atenção!',MB_ICONINFORMATION);
            Exit;
          end;
          if query_servidor.FieldByName('SITUACAO').AsInteger <> 1 then begin
            Application.MessageBox('O Caixa Geral "99" no Gerencial não esta aberto, impossivel realizar vendas!','Atenção!',MB_ICONINFORMATION);
            Exit;
          end;
        end;
      end;

      if frmmodulo.query.fieldbyname('caixa_situacao').asstring = 'FECHADO' then begin

        if Application.MessageBox(pwidechar('C A I X A   F E C H A D O!' + #13 + 'Deseja realizar a sua abertura?'), 'Aviso', mb_yesno + MB_ICONQUESTION) = idYes then begin
          bcaixa_aberto := false;
          bAtiva_Venda := true;
        end
        else begin
          Application.MessageBox(pwidechar('As funções de venda serão bloqueadas!'), 'Atenção', mb_ok + MB_ICONWARNING);
          bAtiva_Venda := false;
        end;

      end else
        bcaixa_aberto := True;

      if not bCaixa_aberto then begin
        frmsenha_supervisor := tfrmsenha_supervisor.create(self);
        frmsenha_supervisor.AbrirCaixa := True;
        frmsenha_supervisor.showmodal;
        if not bSupervisor_autenticado then begin
          Exit;
        end;

        frmCaixa_Abertura := TfrmCaixa_Abertura.create(Self);
        frmCaixa_Abertura.showmodal;
        frmModulo.spCupom_Temp_delete.prepare;
        frmModulo.spCupom_Temp_delete.execute;
        if not bCaixa_aberto then begin
          Application.messagebox(PWideChar('As funções de venda serão bloqueadas!'), 'Atenção', MB_OK + MB_ICONWARNING);
          Exit;
        end;
      end;


      if bAtiva_Venda then begin
        frmvenda := Tfrmvenda.CREATE(SELF);
        frmvenda.cpBarra.Panels.Items[3].Text := sCaixa;
        frmvenda.cpBarra.Panels.Items[1].Text := copy(sNome_Operador, 1, 10);
        frmvenda.SHOWMODAL;
      end;

    end
    else begin
      Application.Terminate;
    end;
  finally
    if frmvenda <> nil then
      FreeAndNil(frmVenda);
  end;

end;

procedure TfrmPrincipal.VendasPDV1Click(Sender: TObject);
begin
  CarregaSistemaVenda;
end;

procedure TfrmPrincipal.GravaIni(sArquivo, Secao, Linha, Valor: string);
var
  Ini: TIniFile;
  Arquivo: string;
begin

  Arquivo := sArquivo;
  Ini := TIniFile.Create(Arquivo);
  Ini.WriteString(Secao, Linha, Valor);
  Ini.Free;

end;

function TfrmPrincipal.LerIni(sArquivo, Secao, Linha, Def: string): string;
var
  Ini: TIniFile;
begin

  Ini := TIniFile.Create(sArquivo);
  Result := Ini.ReadString(Secao, Linha, Def);
  Ini.Free;

end;

function TfrmPrincipal.LerFormasPagto: Boolean;
var
  formas: string;
  c: integer;
begin
  try
    Result := False;
    frmModulo.tbForma_pgto.Close;
    frmModulo.tbForma_pgto.Open;

    if frmModulo.tbForma_pgto.RecordCount > 0 then
      frmModulo.tbForma_pgto.Delete;

    c := 0;
     //Dinheiro
    Inc(c);
    frmModulo.tbForma_pgto.Insert;
    frmModulo.tbForma_Pgtoid.Value := c;
    frmModulo.tbForma_PgtoNome.Value := lForma_pgto_dinheiro;
    frmModulo.tbForma_pgto.Post;

     //Cheque
    Inc(c);
    frmModulo.tbForma_pgto.Insert;
    frmModulo.tbForma_Pgtoid.Value := c;
    frmModulo.tbForma_PgtoNome.Value := lForma_pgto_Cheque_Avista;
    frmModulo.tbForma_pgto.Post;

    Inc(c);
    frmModulo.tbForma_pgto.Insert;
    frmModulo.tbForma_Pgtoid.Value := c;
    frmModulo.tbForma_PgtoNome.Value := lForma_pgto_Cheque_Aprazo;
    frmModulo.tbForma_pgto.Post;

    //Cartao
    Inc(c);
    frmModulo.tbForma_pgto.Insert;
    frmModulo.tbForma_Pgtoid.Value := c;
    frmModulo.tbForma_PgtoNome.Value := lForma_pgto_Cartao_Debito;
    frmModulo.tbForma_pgto.Post;

    Inc(c);
    frmModulo.tbForma_pgto.Insert;
    frmModulo.tbForma_Pgtoid.Value := c;
    frmModulo.tbForma_PgtoNome.Value := lForma_pgto_Cartao_Credito;
    frmModulo.tbForma_pgto.Post;

    Inc(c);
    frmModulo.tbForma_pgto.Insert;
    frmModulo.tbForma_Pgtoid.Value := c;
    frmModulo.tbForma_PgtoNome.Value := lForma_pgto_Crediario;
    frmModulo.tbForma_pgto.Post;

    //Convenio
    Inc(c);
    frmModulo.tbForma_pgto.Insert;
    frmModulo.tbForma_Pgtoid.Value := c;
    frmModulo.tbForma_PgtoNome.Value := lForma_pgto_Convenio;
    frmModulo.tbForma_pgto.Post;
    Result := True;
  except
    Result := False;
    ShowMessage('Erro ao carregar formas de pagamento');

  end;
end;

function TfrmPrincipal.ApenasNumerosStr(pStr: string): string;
var
  I: Integer;
begin

  Result := '';

  for I := 1 to Length(pStr) do
    if pStr[I] in ['1', '2', '3', '4', '5', '6', '7', '8', '9', '0'] then
      Result := Result + pStr[I];

end;

function TfrmPrincipal.IsInteger(s: string): integer;
begin
  try
    Result := strtoint(s);

  except
    Result := 0;
  end;
end;

procedure TfrmPrincipal.tlPhotosClick(Sender: TdxTileControlItem);
begin
  CarregaSistemaVenda;
end;

procedure TfrmPrincipal.tlAgentsClick(Sender: TdxTileControlItem);
begin
  Close;
end;

procedure TfrmPrincipal.dxtlcntrltmTileItem1Click(Sender: TdxTileControlItem);
begin
  frmconfig := tfrmconfig.create(self);
  frmconfig.showmodal;

end;

procedure TfrmPrincipal.tlSystemInformationClick(Sender: TdxTileControlItem);
begin
  frmconfig := tfrmconfig.create(self);
  frmconfig.showmodal;
end;

procedure TfrmPrincipal.dxTileItem1Click(Sender: TdxTileControlItem);
begin
  frmconfig_balanca := tfrmconfig_balanca.create(self);
  frmconfig_balanca.showmodal;
end;

procedure TfrmPrincipal.V1Click(Sender: TObject);
begin
  CarregaSistemaVenda
end;

procedure TfrmPrincipal.S1Click(Sender: TObject);
begin
  Close
end;

procedure TfrmPrincipal.C1Click(Sender: TObject);
begin
  frmconfig := tfrmconfig.create(self);
  frmconfig.showmodal;
end;

procedure TfrmPrincipal.B1Click(Sender: TObject);
begin
  frmconfig_balanca := tfrmconfig_balanca.create(self);
  frmconfig_balanca.showmodal;
end;

end.

