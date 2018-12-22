unit principal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, FileCtrl, Zlib, IBServices, IniFiles, ComCtrls,
  DBCtrls, Mask, IBUpdateSQL, IBQuery, Buttons, Grids, DBGrids, ExtCtrls,
  ShellApi, Menus, AppEvnts, Spin, ZAbstractRODataset, ZAbstractDataset,
  ZDataset, ZConnection, XPMan, PageView, AdvGlowButton,
  Registry, RzEdit, RzDBEdit, RzDBBnEd, DB, ZAbstractConnection, IdMessage, IdBaseComponent, IdComponent,
  IdTCPConnection, IdTCPClient, IdMessageClient, IdSMTP, sSkinManager, jpeg,
  AdvReflectionImage, AdvMetroButton, JvExMask, JvToolEdit, MidasLib,
  IdExplicitTLSClientServerBase, IdFTP;
const
  WM_TRAYICON = WM_USER + 1;
type
  TFprincipal = class(TForm)
    ds_agendamento: TDataSource;
    Timer1: TTimer;
    PopupMenu1: TPopupMenu;
    Opo11: TMenuItem;
    Sair1: TMenuItem;
    base: TZConnection;
    tbagenda: TZQuery;
    qragendado: TZQuery;
    OpenDialog1: TOpenDialog;
    PageView1: TPageView;
    PageSheet1: TPageSheet;
    DBGrid2: TDBGrid;
    PageSheet2: TPageSheet;
    DBGrid1: TDBGrid;
    Panel1: TPanel;
    LBMSG: TLabel;
    PopupMenu2: TPopupMenu;
    EfetuarCpia1: TMenuItem;
    Fechar1: TMenuItem;
    pConfig: TPanel;
    Label3: TLabel;
    Label2: TLabel;
    DBEdit1: TDBEdit;
    Label1: TLabel;
    DBEdit6: TDBEdit;
    Label7: TLabel;
    cbtipo: TDBComboBox;
    Label6: TLabel;
    DBEdit5: TDBEdit;
    Label5: TLabel;
    pgravar: TPanel;
    bvoltar: TAdvGlowButton;
    Ini1: TMenuItem;
    Alterar1: TMenuItem;
    Excluir1: TMenuItem;
    Sair2: TMenuItem;
    qrmestre: TZQuery;
    Backup: TIBBackupService;
    IBRestoreService1: TIBRestoreService;
    ListBox1: TListBox;
    SaveDialog1: TSaveDialog;
    GroupBox2: TGroupBox;
    CBDesativarIndices: TCheckBox;
    CBSemValidar: TCheckBox;
    CBSemShadow: TCheckBox;
    CBDetalhes: TCheckBox;
    CBUmaTabela: TCheckBox;
    CBSubstituir: TCheckBox;
    AdvGlowButton1: TAdvGlowButton;
    AdvGlowButton2: TAdvGlowButton;
    pbackup: TPanel;
    OpenDialog2: TOpenDialog;
    DBEdit3: TJvDirectoryEdit;
    DBEdit2: TRzDBButtonEdit;
    FlatPanel1: TPanel;
    BitBtn1: TAdvGlowButton;
    BitBtn4: TAdvGlowButton;
    BitBtn5: TAdvGlowButton;
    PopupMenu3: TPopupMenu;
    MenuItem5: TMenuItem;
    MenuItem6: TMenuItem;
    pgravar2: TPanel;
    BitBtn2: TAdvGlowButton;
    BitBtn3: TAdvGlowButton;
    eorigem: TEdit;
    BitBtn6: TBitBtn;
    Label4: TLabel;
    OpenDialog3: TOpenDialog;
    Label8: TLabel;
    edestino: TEdit;
    BitBtn7: TBitBtn;
    SaveDialog2: TSaveDialog;
    econexao: TZConnection;
    Timer2: TTimer;
    BASE3: TZConnection;
    timer3: TTimer;
    qrapoio2: TZQuery;
    qrapoio3: TZQuery;
    qremitente: TZQuery;
    MEMORECEBER: TMemo;
    qrconfig: TZQuery;
    C1: TMenuItem;
    N1: TMenuItem;
    Panel2: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    Panel5: TPanel;
    bck0001: TAdvGlowButton;
    bck0002: TAdvGlowButton;
    AdvMetroButton2: TAdvMetroButton;
    Button1: TAdvGlowButton;
    Button2: TAdvGlowButton;
    tbagendaID: TIntegerField;
    tbagendaDIA: TWideStringField;
    tbagendaHORARIO: TWideStringField;
    tbagendaIP: TWideStringField;
    tbagendaBASEDADOS: TWideStringField;
    tbagendaARQUIVOSALVO: TWideStringField;
    tbagendaDESCRICAO: TWideStringField;
    tbagendaDESTINO: TWideStringField;
    qragendadoID: TIntegerField;
    qragendadoDIA: TWideStringField;
    qragendadoHORARIO: TWideStringField;
    qragendadoIP: TWideStringField;
    qragendadoBASEDADOS: TWideStringField;
    qragendadoARQUIVOSALVO: TWideStringField;
    qragendadoDESCRICAO: TWideStringField;
    qragendadoDESTINO: TWideStringField;
    qrconfigCODIGO: TWideStringField;
    qrconfigULTIMO_BACKUP: TDateField;
    qrconfigPAPEL_PAREDE: TWideStringField;
    qrconfigAVISO_CONTAS_PAGAR: TIntegerField;
    qrconfigAVISO_CHEQUE: TIntegerField;
    qrconfigESTOQUE_NEGATIVO: TIntegerField;
    qrconfigCASAS_DECIMAIS_QTDE: TIntegerField;
    qrconfigCASAS_DECIMAIS_VALOR: TIntegerField;
    qrconfigVENDA_CADASTRO_CHEQUE: TIntegerField;
    qrconfigVENDA_CADASTRO_CARTAO: TIntegerField;
    qrconfigVENDA_TIPONOTA: TIntegerField;
    qrconfigVENDA_QTDE_VIAS_NOTA: TIntegerField;
    qrconfigVENDA_PORTA_IMPRESSORA: TWideStringField;
    qrconfigVENDA_TIPO_IMPRESSORA: TIntegerField;
    qrconfigVENDA_LIMITE_CLIENTE: TIntegerField;
    qrconfigOS_TIPONOTA: TIntegerField;
    qrconfigOS_QTDE_VIAS_NOTA: TIntegerField;
    qrconfigOS_PORTA_IMPRESSORA: TWideStringField;
    qrconfigOS_TIPO_IMPRESSORA: TIntegerField;
    qrconfigORCAMENTO_TIPONOTA: TIntegerField;
    qrconfigORCAMENTO_QTDE_VIAS_NOTA: TIntegerField;
    qrconfigORCAMENTO_PORTA_IMPRESSORA: TWideStringField;
    qrconfigORCAMENTO_TIPO_IMPRESSORA: TIntegerField;
    qrconfigCONTASRECEBER_CARENCIA: TIntegerField;
    qrconfigCONTASRECEBER_TAXAJUROS: TFloatField;
    qrconfigCONTASRECEBER_MULTA: TFloatField;
    qrconfigCONTASRECEBER_DESCONTO_PERCENT: TFloatField;
    qrconfigCONTASRECEBER_DESCONTO_PERMITIR: TIntegerField;
    qrconfigECF_MODELO: TWideStringField;
    qrconfigECF_PORTA: TWideStringField;
    qrconfigECF_TEF: TIntegerField;
    qrconfigECF_TIPO: TWideStringField;
    qrconfigBALANCAPDV_MODELO: TWideStringField;
    qrconfigBALANCAPDV_PORTA: TWideStringField;
    qrconfigIMPRESSORACHEQUE_MODELO: TWideStringField;
    qrconfigIMPRESSORACHEQUE_PORTA: TWideStringField;
    qrconfigBALANCA_MODELO: TWideStringField;
    qrconfigIMPRESSORABARRAS_MODELO: TWideStringField;
    qrconfigBALANCA_CAMINHO: TWideStringField;
    qrconfigCADASTRO_PRODUTO: TWideStringField;
    qrconfigRAMO_ATIVIDADE: TIntegerField;
    qrconfigEXTRATO_TIPONOTA: TIntegerField;
    qrconfigBOBINA_SUBIRPAPEL: TIntegerField;
    qrconfigCLASSIFICACAO: TWideStringField;
    qrconfigBOLETO_FORMAPGTO: TWideStringField;
    qrconfigPLANO_VENDA_AV: TWideStringField;
    qrconfigPLANO_VENDA_AP: TWideStringField;
    qrconfigPLANO_OS_AV: TWideStringField;
    qrconfigPLANO_OS_AP: TWideStringField;
    qrconfigPLANO_OUTRAS_ENTRADAS: TWideStringField;
    qrconfigPLANO_OUTRAS_SAIDAS: TWideStringField;
    qrconfigPLANO_RECEBTO_CREDIARIO: TWideStringField;
    qrconfigNF_ITENS_PAGINA: TIntegerField;
    qrconfigNF_ITENS_TRANSPORTE: TIntegerField;
    qrconfigNF_LINHA_TRANSPORTE: TIntegerField;
    qrconfigNF_SALTO_PAGINA: TIntegerField;
    qrconfigNF_TIPO: TIntegerField;
    qrconfigNF_IMPRESSORA: TWideStringField;
    qrconfigVENDA_FECHAMENTO_CAIXA: TIntegerField;
    qrconfigDESCONTO_AVISTA: TFloatField;
    qrconfigDESCONTO_PRODUTO: TFloatField;
    qrconfigDESCONTO_TOTALNOTA: TFloatField;
    qrconfigTIPO_VENDA: TWideStringField;
    qrconfigVENDA_ALTERAR_PRECO: TIntegerField;
    qrconfigNF_LINHA_SUBTOTAL: TIntegerField;
    qrconfigNF_LINHA_TOTAL: TIntegerField;
    qrconfigECF_CAIXA: TWideStringField;
    qrconfigECF_SERIAL: TWideStringField;
    qrconfigFARMACIA_ENVIO: TWideStringField;
    qrconfigFARMACIA_RESPOSTA: TWideStringField;
    qrconfigFARMACIA_ENVIO_RESPOSTA: TWideStringField;
    qrconfigFARMACIA_LOGIN: TWideStringField;
    qrconfigFARMACIA_SENHA: TWideStringField;
    qrconfigULTIMA_CARGA: TDateField;
    qrconfigIMPRIME_CUPOM_VINCULADO: TIntegerField;
    qrconfigIMPRIME_PRODUTOS_VINCULADOS: TIntegerField;
    qrconfigIMPRIME_COMPROVANTE_DEBITO: TIntegerField;
    qrconfigIMPRIME_DUPLICATA: TIntegerField;
    qrconfigCONTASRECEBER_BLOQUEIO: TIntegerField;
    qrconfigRECIBO_TIPONOTA: TIntegerField;
    qrconfigNR_CONTROLE_ECF: TWideStringField;
    qrconfigBALANCA_PROGRAMA: TWideStringField;
    qrconfigTIPO_DUPLICATA: TWideStringField;
    qrconfigCONCILIA_VENDA: TIntegerField;
    qrconfigCONTROLA_ENTREGA: TIntegerField;
    qrconfigENTREGA_IMPRESSAO: TIntegerField;
    qrconfigENTREGA_VIAS: TIntegerField;
    qrconfigCONDICIONAL: TIntegerField;
    qrconfigCONDICIONAL_PRAZO: TIntegerField;
    qrconfigVS_ATIVAR: TIntegerField;
    qrconfigVS_DINHEIRO: TIntegerField;
    qrconfigVS_CHEQUEAV: TIntegerField;
    qrconfigVS_CHEQUEAP: TIntegerField;
    qrconfigVS_CARTRAOCRED: TIntegerField;
    qrconfigVS_CARTAODEB: TIntegerField;
    qrconfigVS_CREDIARIO: TIntegerField;
    qrconfigVS_CLIENTE_VISTA: TWideStringField;
    qrconfigVS_CAIXA: TIntegerField;
    qrconfigVS_RELATORIO: TIntegerField;
    qrconfigVS_VIAS: TIntegerField;
    qrconfigVS_VISUALIZAR: TIntegerField;
    qrconfigCONDICIONAL_MODELO: TIntegerField;
    qrconfigALTERAR_UNITARIO: TIntegerField;
    qrconfigCONTASRECEBER_VALORJUROS: TFloatField;
    qrconfigCONTASRECEBER_JUROS_DINHEIRO: TIntegerField;
    qrconfigPLANO_DUPLICATA_NFE: TWideStringField;
    qrconfigVAREJO_ATACADO: TIntegerField;
    qrconfigVISUALIZA_MENSAGEM: TIntegerField;
    qrconfigSERIAL_REPETIDO: TIntegerField;
    qrconfigOCULTAR_CUSTO: TIntegerField;
    qrconfigOCULTAR_PRODUTO_INATIVO: TIntegerField;
    qrconfigOCULTAR_CLIENTE_INATIVO: TIntegerField;
    qrconfigOBS_FARMA: TIntegerField;
    qrconfigOBS_FARMA_TEXTO: TWideStringField;
    qrconfigCUSTO_MAIOR_VENDA: TIntegerField;
    qrconfigVENDER_ABAIXO_CUSTO: TIntegerField;
    qrconfigNF_GERAR_RECEBER: TIntegerField;
    qrconfigNF_CODIGOBARRA_NFE: TIntegerField;
    qrconfigNF_GRADE_NFE: TIntegerField;
    qrconfigNF_SERIAL_NFE: TIntegerField;
    qrconfigNF_REFERENCIA_NFE: TIntegerField;
    qrconfigNF_GERAR_DUPLICATA: TIntegerField;
    qrconfigVALE_CAIXA: TIntegerField;
    qrconfigCONTAS_RECEBER_BLOQUEIO: TIntegerField;
    qrconfigCUPOM_IMPRIMIR_CODIGO: TIntegerField;
    qrconfigCLIENTE_PEDE_CPF: TIntegerField;
    qrconfigVERIFICA_COD_BARRA: TIntegerField;
    qrconfigVERIFICA_NOME_PRODUTO: TIntegerField;
    qrconfigVS_FRETE: TIntegerField;
    qrconfigINVENTARIO_AUTOMATICO: TIntegerField;
    qrconfigBAIXAR_ESTOQUE_NOTA_SAIDA: TIntegerField;
    qrconfigETIQUETA_07: TIntegerField;
    qrconfigETIQUETA_07_1: TIntegerField;
    qrconfigETIQUETA_07_2: TIntegerField;
    qrconfigEMAIL_SERVIDOR_SMTP: TWideStringField;
    qrconfigEMAIL_PORTA: TWideStringField;
    qrconfigEMAIL_USUARIO: TWideStringField;
    qrconfigEMAIL_SENHA: TWideStringField;
    qrconfigEMAIL_ASSUNTO: TWideStringField;
    qrconfigEMAIL_EXIGE_CONEXAO: TIntegerField;
    qrconfigEMAIL_MENSAGEM: TBlobField;
    qrconfigINESTRA: TIntegerField;
    qrconfigFARMACIA_INVENTARIO_FECHA: TIntegerField;
    qrconfigFARMACIA_ENVIO_NOVARTIS: TWideStringField;
    qrconfigFARMACIA_RESPOSTA_NOVARTIS: TWideStringField;
    qrconfigFARMACIA_INVENTARIO_CONFIRMA: TWideStringField;
    qrconfigFARMACIA_INVENTARIO_DATA: TDateField;
    qrconfigCALCULA_ISENTAS_OUTRAS: TIntegerField;
    qrconfigUSA_RENTABILIDADE: TIntegerField;
    qrconfigUSA_PRODUTOR_RURAL: TIntegerField;
    qrconfigIND_CLIE_ENTRADA: TWideStringField;
    qrconfigIND_CFOP_ENTRADA: TWideStringField;
    qrconfigIND_CLIE_SAIDA: TWideStringField;
    qrconfigIND_CFOP_SAIDA: TWideStringField;
    qrconfigIND_CLIE_PERDA: TWideStringField;
    qrconfigIND_CFOP_PERDA: TWideStringField;
    qrconfigIND_MOSTRA_COMPOSICAO: TIntegerField;
    qrconfigCHECA_SERIAL_NOTA_SAIDA: TIntegerField;
    qrconfigCOR_COMERCIO: TWideStringField;
    qrconfigLOGO_COMERCIO: TWideStringField;
    qrconfigCOR_FARMACIA: TWideStringField;
    qrconfigLOGO_FARMACIA: TWideStringField;
    qrconfigCOR_PECAS: TWideStringField;
    qrconfigLOGO_PECAS: TWideStringField;
    qrconfigCOR_MERCADO: TWideStringField;
    qrconfigLOGO_MERCADO: TWideStringField;
    qrconfigCOR_POSTO: TWideStringField;
    qrconfigLOGO_POSTO: TWideStringField;
    qrconfigIND_CLIE_ENTRADA_DESC: TWideStringField;
    qrconfigIND_CFOP_ENTRADA_DESC: TWideStringField;
    qrconfigIND_CLIE_SAIDA_DESC: TWideStringField;
    qrconfigIND_CFOP_SAIDA_DESC: TWideStringField;
    qrconfigIND_CLIE_PERDA_DESC: TWideStringField;
    qrconfigIND_CFOP_PERDA_DESC: TWideStringField;
    qrconfigIND_CFOP_VENDA_DENTRO: TWideStringField;
    qrconfigIND_CFOP_VENDA_FORA: TWideStringField;
    qrconfigIND_CFOP_DEVOLUCAO_DENTRO: TWideStringField;
    qrconfigIND_CFOP_DEVOLUCAO_FORA: TWideStringField;
    qrconfigIND_CFOP_SERVICO_DENTRO: TWideStringField;
    qrconfigIND_CFOP_SERVICO_FORA: TWideStringField;
    qrconfigCFOP_VENDA_DENTRO_DESC: TWideStringField;
    qrconfigCFOP_VENDA_FORA_DESC: TWideStringField;
    qrconfigCFOP_DEVOLUCAO_DENTRO_DESC: TWideStringField;
    qrconfigCFOP_DEVOLUCAO_FORA_DESC: TWideStringField;
    qrconfigCFOP_SERVICO_DENTRO_DESC: TWideStringField;
    qrconfigCFOP_SERVICO_FORA_DESC: TWideStringField;
    qrconfigTIPO_NF: TIntegerField;
    qrconfigCOR_ESTOQUE_POSITIVO: TWideStringField;
    qrconfigCOR_ESTOQUE_NEGATIVO: TWideStringField;
    qrconfigCOR_ESTOQUE_ZERADO: TWideStringField;
    qrconfigTIPO_PESQUISA: TIntegerField;
    qrconfigECF_CONCOMITANTE: TIntegerField;
    qrconfigPLANO_PAGTO_FORN: TWideStringField;
    qrconfigHAB_PREVENDA: TIntegerField;
    qrconfigCODCLIENTEAV: TWideStringField;
    qrconfigCODCLIENTEMODELO: TWideStringField;
    qrconfigCODPRODUTOMODELO: TWideStringField;
    qrconfigCODFORNECEDORMODELO: TWideStringField;
    qrconfigUSA_CAIXA_DIARIO: TIntegerField;
    qrconfigIMPRIMI_ORCAMENTO_AUTO: TIntegerField;
    qrconfigFIXA_FORMA_PGTO_CLIENTE: TIntegerField;
    qrconfigVERSAOBD: TWideStringField;
    qrconfigUSA_CAIXA_PADRAO_USUARIO: TIntegerField;
    qrconfigTEXTO_PADRAO_VENDA: TWideStringField;
    qrconfigTEXTO_PADRAO_DEVOLUCAO: TWideStringField;
    qrconfigTEXTO_PADRAO_GARANTIA: TWideStringField;
    qrconfigAVISA_ESTOQUE_MINIMO: TIntegerField;
    qremitenteCODIGO: TWideStringField;
    qremitenteNOME: TWideStringField;
    qremitenteFANTASIA: TWideStringField;
    qremitenteENDERECO: TWideStringField;
    qremitenteBAIRRO: TWideStringField;
    qremitenteCIDADE: TWideStringField;
    qremitenteUF: TWideStringField;
    qremitenteCEP: TWideStringField;
    qremitenteTELEFONE: TWideStringField;
    qremitenteCNPJ: TWideStringField;
    qremitenteIE: TWideStringField;
    qremitenteEMAIL: TWideStringField;
    qremitenteHOMEPAGE: TWideStringField;
    qremitenteRESPONSAVEL: TWideStringField;
    qremitenteCELULAR: TWideStringField;
    qremitenteLOGO: TBlobField;
    qremitenteFAX: TWideStringField;
    qremitenteNUMERO: TWideStringField;
    qremitenteCOMPLEMENTO: TWideStringField;
    qremitenteCONTRIBUINTE_IPI: TWideStringField;
    qremitenteSUBSTITUTO_TRIBUTARIO: TWideStringField;
    qremitenteCOMENTARIOS: TWideStringField;
    qremitenteDATAHORA_INICIAL: TDateField;
    qremitenteDATAHORA_FINAL: TDateField;
    qremitenteDATA_INVENTARIO: TDateField;
    qremitenteESTOQUE: TFloatField;
    qremitenteVALOR: TFloatField;
    qremitenteCONHECIMENTO: TIntegerField;
    qremitenteCPF: TWideStringField;
    qremitenteRG: TWideStringField;
    qremitenteDIA_VENCIMENTO_CHAVE: TWideStringField;
    qremitenteINSC_MUNICIPAL: TWideStringField;
    qremitenteDATA_ABERTURA: TDateField;
    qremitenteCOD_MUNICIPIO_IBGE: TWideStringField;
    qremitenteIBGE: TWideStringField;
    qremitenteEMAIL_FINANCEIRO: TWideStringField;
    Label9: TLabel;
    Label10: TLabel;
    DBEdit4: TDBEdit;
    DBEdit7: TDBEdit;
    tbagendaLOGINFTP: TWideStringField;
    tbagendaSENHAFTP: TWideStringField;
    IdFTP1: TIdFTP;
    procedure Button1Click(Sender: TObject);
    procedure Delay(Tempo: Word);
    procedure Button2Click(Sender: TObject);
    function mostradata: string;
    procedure BitBtn1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure Opo11Click(Sender: TObject);
    procedure Sair1Click(Sender: TObject);
    procedure DBClick(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Ini1Click(Sender: TObject);
    procedure Gravar1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    function zerarcodigo(codigo: string; qtde: integer): string;
    function codifica(Tabela: string): string;
    procedure DBEdit5Enter(Sender: TObject);
    procedure DBEdit5Exit(Sender: TObject);
    procedure Alterar1Click(Sender: TObject);
    procedure DBEdit5KeyPress(Sender: TObject; var Key: Char);
    procedure AdvGlowButton1Click(Sender: TObject);
    procedure AdvGlowButton2Click(Sender: TObject);
    procedure bvoltarClick(Sender: TObject);
    procedure DBEdit2ButtonClick(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure DBEdit1Exit(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    procedure BitBtn7Click(Sender: TObject);
    procedure Timer2Timer(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure timer3Timer(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    function LeInistr(arquivo, sessao, chave, padrao: string): string;
    procedure bck0001Click(Sender: TObject);
    procedure bck0002Click(Sender: TObject);
    procedure EnviaFTP(); //Envia o arquivo de backup por FTP
  private
    procedure WMTrayIcon(var Msg: TMessage); message WM_TRAYICON;
    procedure MinimizeToSistray(Sender: TObject);
    procedure OnMinimize(Sender: TObject);
    function verifica_conexao: boolean;
    function verifica_conexao2: boolean;
    function verifica_conexao3: boolean;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Fprincipal: TFprincipal;
  diasemana, BASEDADOS, SERVIDOR: string;
implementation

uses email;

{$R *.dfm}

function TFprincipal.mostradata: string;
var
  dthoje: tdatetime;
  diasemana: integer;
  strdiasemana: string;
begin
  dthoje := date;
  diasemana := dayofweek(dthoje);
  case diasemana of
    1: strdiasemana := 'Domingo';
    2: strdiasemana := 'Segunda';
    3: strdiasemana := 'Ter�a';
    4: strdiasemana := 'Quarta';
    5: strdiasemana := 'Quinta';
    6: strdiasemana := 'Sexta';
    7: strdiasemana := 'S�bado';
  end;
  mostradata := strdiasemana; //+' '+datetostr(dthoje);
end;

function TFprincipal.zerarcodigo(codigo: string; qtde: integer): string;
begin
  while length(codigo) < qtde do codigo := '0' + codigo;
  result := codigo;
end;

function TFprincipal.codifica(tabela: string): string;
var xcod: integer;
begin
  qrmestre.close;
  qrmestre.sql.clear;
  qrmestre.sql.add('select * from c000000 where codigo = ''' + tabela + '''');
  qrmestre.open;
  if qrmestre.recordcount > 0 then
  begin
    xcod := qrmestre.fieldbyname('sequencia').asinteger;
    if xcod < 1 then xcod := 1;
    qrmestre.close;
    qrmestre.sql.clear;
    qrmestre.sql.add('update c000000 set sequencia = sequencia + 1 where codigo = ''' + tabela + '''');
    qrmestre.execsql;
    result := Fprincipal.zerarcodigo(inttostr(xcod), 6);
  end
  else
  begin
    Showmessage('N�o foi poss�vel concluir com a opera��o!' + #13 + 'Erro: C�digo de sequ�ncia n�o encontrado na tabela de c�digos.');
  end;
  Application.ProcessMessages;
end;

function TFprincipal.verifica_conexao: boolean;
begin
  try
    eConexao.Connected := false;
    eConexao.Database := tbagendaBASEDADOS.ASSTRING;
    eConexao.hostname := tbagendaIP.ASSTRING;
    eConexao.Connected := true;
    Result := true;
  except
    Result := false;
  end;
end;

function TFprincipal.verifica_conexao2: boolean;
begin
  try
    base.Connected := false;
    base.Database := BASEDADOS;
    base.hostname := SERVIDOR;
    base.Connected := true;
    Result := true;
  except
    Result := false;
  end;
end;

function TFprincipal.verifica_conexao3: boolean;
begin
  try
    base3.Connected := false;
    base3.Database := BASEDADOS;
    base3.hostname := SERVIDOR;
    base3.Connected := true;
    Result := true;
  except
    Result := false;
    base.Disconnect;
  end;
end;
procedure TFprincipal.EnviaFTP();
begin
ListBox1.Items.Add('----Conectando na Nuvem----');
ListBox1.Update;
ListBox1.ItemIndex := ListBox1.Items.Count - 1;
IdFTP1.Host := 'backup.novatecnologia.eti.br';
IdFTP1.Port := 21;
//IdFTP1.ReadTimeout := 50000;
IdFTP1.Username := tbagendaLOGINFTP.Value;
IdFTP1.Password := tbagendaSENHAFTP.Value;
IdFTP1.Passive := true;
IdFTP1.Connect;
ListBox1.Items.Add(IdFTP1.SystemDesc);
ListBox1.Items.Add('Enviando o arquivo ' + Backup.BackupFile[0]);
ListBox1.Update;
ListBox1.ItemIndex := ListBox1.Items.Count - 1;
try
  IdFTP1.Put(Backup.BackupFile[0]);
  ListBox1.Items.Add('Arquivo enviado com sucesso!');
  ListBox1.Update;
  ListBox1.ItemIndex := ListBox1.Items.Count - 1;
except
  ShowMessage('Problema ao enviar arquivo de backup para a nuvem');
end;

IdFTP1.Disconnect;

end;


procedure TFprincipal.Button1Click(Sender: TObject);
begin
  try
    Timer1.Enabled := False;
    if verifica_conexao then
    begin
      try
        With Backup do begin
          PageView1.ActivePageIndex := 0;
          eConexao.Connected := false;
          application.ProcessMessages;
          Cursor := crHourGlass;
          Active := False;
          Params.Clear;
          ServerName := eConexao.hostname;
          Protocol := NamedPipe;
          ServerType := 'IBEmbedded';
          DatabaseName := eConexao.Database;
          Params.Clear;
          Params.Add('User_Name=SYSDBA');
          Params.Add('Password=masterkey');
          BackupFile.Clear;
          BackupFile.Add(ChangeFileExt(tbagendaARQUIVOSALVO.AsString + FormatDateTime('hhnnddmmyyyy', now), '.fbk'));
          LoginPrompt := False;
          Active := True;
          ServiceStart;
          listbox1.Clear;
          listbox1.Items.Add(Format('Backup Iniciado �s %s horas', [FormatDateTime('hh:nn:ss', now)]));
          listbox1.Items.add('Local: ' + tbagendaARQUIVOSALVO.AsString);
          listbox1.visible := true;
          application.ProcessMessages;
          if Verbose then begin
            While not Eof do begin
              listbox1.Items.add(BackUp.GetNextLine);
              ListBox1.Update;
              ListBox1.ItemIndex := ListBox1.Items.Count - 1;
              Application.ProcessMessages;
            end;
          end else begin
            while IsServiceRunning do begin
              Application.ProcessMessages;
            end;
          end;
          Active := False;
          qrmestre.close;
          qrmestre.sql.clear;
          qrmestre.sql.add('select * from c000001');
          qrmestre.open;
          qrmestre.edit;
          qrmestre.FieldByName('ultimo_backup').asdatetime := date;
          qrmestre.post;
          qrmestre.close;
        end;
      finally
        EnviaFTP();
        Screen.Cursor := CrDefault;
        econexao.Connected := true;
        listbox1.visible := false;
      end;

    end;

  except
    //
  end;
  Timer1.Enabled := True;
end;

procedure TFprincipal.Delay(Tempo: Word);
var x1: Double;
begin
  x1 := now;
  repeat until ((now - x1) * 86400) > Tempo;
end;

procedure TFprincipal.Button2Click(Sender: TObject);
begin
  PageView1.ActivePageIndex := 0;
  OpenDialog2.InitialDir := ExtractFilePath(ParamStr(0)) + 'bkp\';
  if not OpenDialog2.Execute then //se n�o selecionar o arquivo de backup
    Exit; //cancela o procedimento
  eorigem.text := OpenDialog2.FileName;
  SaveDialog2.InitialDir := ExtractFilePath(ParamStr(0)) + 'bd\';
  if not SaveDialog2.Execute then
    Exit;
  edestino.Text := SaveDialog2.FileName;
  listbox1.visible := true;
  listbox1.Clear;
  listbox1.Items.Add('Preparando para restaurar o backup...');
  listbox1.Items.Add('');
  GroupBox2.Visible := True;
end;

procedure TFprincipal.BitBtn1Click(Sender: TObject);
begin
  //tbagenda.Open;
  if not (tbagenda.State in [dsedit, dsinsert]) then
  begin
    BitBtn4.Enabled := False;
    BitBtn5.Enabled := False;
    BitBtn2.Enabled := True;
    BitBtn3.Enabled := True;
    pConfig.Enabled := True;
    pgravar2.Visible := True;
    bvoltar.Enabled := False;
    PopupMenu := PopupMenu3;
    tbagenda.Append;
    dbedit5.SetFocus;
    DBEdit3.Text := '';
    Timer1.Enabled:=False;
    Timer2.Enabled:=False;
    Timer3.Enabled:=False;
  end;
end;

procedure TFprincipal.FormCreate(Sender: TObject);
var
  NotifyIconData: TNotifyIconData;
  Reg: TRegistry;
  txt: textfile;
  entrada: string;
begin
  Timer1.Enabled := False;
  Timer2.Enabled := False;
  Application.ShowMainForm := False;
  MinimizeToSistray(Self);
  Application.OnMinimize := OnMinimize;
  PageView1.ActivePageIndex := 0;
  pConfig.Enabled := False;
  try
      // Inicializa a variavel do tipo TRegistry
    Reg := TRegistry.Create;

      // Define a hirearquia das pasta, a qual ir� trabalhar.
    Reg.RootKey := HKEY_LOCAL_MACHINE;

      // Cria/entra, dentro da pasta do registro no qual ir� aguardar informa��o
    Reg.OpenKey('\Software\Microsoft\Windows\CurrentVersion\Run', False);

      // Escreve a inform��o na chave
      // NomeDaChave, pode ser qualquer nome que voc� queira
    Reg.WriteString('talos_backup', Application.ExeName);

      // Fecha a chave do registro
    Reg.CloseKey;
  finally
    Reg.Free;
  end;
  try
    assignfile(txt, ExtractFilePath(ParamStr(0)) + 'ini\com.ini');
    pgravar2.visible := false;
    pgravar2.Align := alClient;
    reset(txt);
    while not eof(txt) do
    begin
      readln(txt, entrada);
      if copy(entrada, 1, 7) = '999-001' then BASEDADOS := trim(copy(entrada, 9, 50));
      if copy(entrada, 1, 7) = '999-002' then SERVIDOR := trim(copy(entrada, 9, 50));
    end;
    if verifica_conexao2 then
    begin
      tbagenda.Open;
      Timer1.Enabled := True
    end
    else Timer2.Enabled := True;
  except
    ShowMessage('N�o foi possivel conectar ao banco de dados');
  end;
end;

procedure TFprincipal.BitBtn3Click(Sender: TObject);
begin
  if tbagenda.State in [dsedit, dsinsert] then
  begin
    BitBtn1.Enabled := True;
    BitBtn4.Enabled := True;
    BitBtn2.Enabled := False;
    BitBtn3.Enabled := False;
    TBAGENDA.Cancel;
    pConfig.Enabled := False;
    pgravar2.Visible := False;
    bvoltar.Enabled := True;
    PopupMenu := PopupMenu2;
    DBEdit3.Text := tbagenda.fieldbyname('ARQUIVOSALVO').AsString;
    Timer1.Enabled:=True;
    Timer2.Enabled:=True;
    Timer3.Enabled:=True;
  end;
end;

procedure TFprincipal.BitBtn5Click(Sender: TObject);
begin
  pConfig.Enabled := True;
  tbagenda.Delete;
  pConfig.Enabled := False;
end;

procedure TFprincipal.Timer1Timer(Sender: TObject);
begin
  if verifica_conexao3 then
  begin
    try
      lbMsg.Caption := '';
      qragendado.Close;
      qragendado.SQL.Clear;
      qragendado.SQL.Add('select * from c000132 where HORARIO = :horario and dia = :diariamente');
      qragendado.ParamByName('diariamente').AsString := 'Diariamente';
      qragendado.ParamByName('horario').asstring := timetostr(time);
      qragendado.Open;

      with qragendado do
      begin
        while not Eof do
        begin
          button1.Click;
          next;
        end;
      end;
      qragendado.Close;
      qragendado.SQL.Clear;
      qragendado.SQL.Add('select * from c000132 where HORARIO = :horario and dia = :diasemana');
      qragendado.ParamByName('diasemana').AsString := mostradata;
      qragendado.ParamByName('horario').asstring := timetostr(time);
      qragendado.Open;

      with qragendado do
      begin
        while not Eof do
        begin
          button1.Click;
          next;
        end;
      end;
    except
      Timer1.Enabled := False;
      Timer2.Enabled := True;
    end;
  end
  else
  begin
    Timer1.Enabled := False;
    Timer2.Enabled := True;
  end;
end;

procedure TFprincipal.WMTrayIcon(var Msg: TMessage);
var
  Pt: TPoint;
begin
  if Msg.lParam = WM_RBUTTONDOWN then begin
    GetCursorPos(Pt);
    PopupMenu1.Popup(Pt.X, Pt.Y);
  end
  else
    if Msg.lParam = WM_LBUTTONDBLCLK then
    begin
      if not IsWindowVisible(Application.Handle) then
      begin
        ShowWindow(Application.Handle, SW_SHOW);
        Fprincipal.Show;
        Application.Restore;
      end;
    end;
end;

procedure TFprincipal.MinimizeToSistray(Sender: TObject);
var
  NotifyIconData: TNotifyIconData;
begin
  with NotifyIconData do begin
    Wnd := Self.Handle;
    uId := 0;
    uCallBackMessage := WM_TRAYICON;
    uFlags := NIF_ICON or NIF_TIP or NIF_MESSAGE;
    hIcon := Application.Icon.Handle;
    szTip := 'TALOS 1.0.1.0 - Backup';
  end;
  Shell_NotifyIcon(NIM_ADD, @NotifyIconData);
end;

procedure TFprincipal.OnMinimize(Sender: TObject);
begin
   {Esconde o bot�o da barra de tarefas}
  if IsWindowVisible(Application.Handle) then
    ShowWindow(Application.Handle, SW_HIDE);
end;

procedure TFprincipal.FormDestroy(Sender: TObject);
var
  NotifyIconData: TNotifyIconData;
begin
  with NotifyIconData do begin
    Wnd := Self.Handle;
    uId := 0;
    uFlags := 0;
  end;
  Shell_NotifyIcon(NIM_DELETE, @NotifyIconData);
end;

procedure TFprincipal.Opo11Click(Sender: TObject);
begin
  Fprincipal.Show;
end;

procedure TFprincipal.Sair1Click(Sender: TObject);
begin
  Close;
end;

procedure TFprincipal.DBClick(Sender: TObject);
begin
  if OpenDialog1.Execute then
  begin
    if not (tbagenda.State in [DSEDIT, DSINSERT]) then
      tbagenda.Edit;
    tbagendaBASEDADOS.AsString := OpenDialog1.FileName
  end;
end;

procedure TFprincipal.Button3Click(Sender: TObject);
begin
  if SaveDialog1.Execute then
  begin
    if not (tbagenda.State in [DSEDIT, DSINSERT]) then
      tbagenda.Edit;
    tbagendaARQUIVOSALVO.AsString := SAVEDIALOG1.FileName;
  end;
end;

procedure TFprincipal.Ini1Click(Sender: TObject);
begin
  PageView1.ActivePageIndex := 1;
  BitBtn1.Click;
end;

procedure TFprincipal.Gravar1Click(Sender: TObject);
begin
  if PageView1.ActivePageIndex <> 1 then
  begin
    PageView1.ActivePageIndex := 1;
    BitBtn2.Click;
  end;
end;

procedure TFprincipal.BitBtn2Click(Sender: TObject);
begin
  if tbagenda.State in [dsedit, dsinsert] then
  begin
    if dbedit5.Text = '' then
    begin
      showmessage('Descri��o � obrigat�rio');
      dbedit5.SetFocus;
      abort;
    end;
    if cbtipo.Text = '' then
    begin
      showmessage('Agendamento � obrigat�rio');
      cbtipo.SetFocus;
      abort;
    end;
    if dbedit6.Text = '' then
    begin
      showmessage('Hor�rio � obrigat�rio');
      dbedit6.SetFocus;
      abort;
    end;
    if dbedit1.Text = '' then
    begin
      showmessage('IP � obrigat�rio');
      dbedit1.SetFocus;
      abort;
    end;
    if DBEdit2.Text = '' then
    begin
      showmessage('Base � obrigat�rio');
      DBEdit2.SetFocus;
      abort;
    end;
    if DBEdit3.Text = '' then
    begin
      showmessage('Caminho para o backup gerado � obrigat�rio');
      DBEdit3.SetFocus;
      abort;
    end;
    tbagenda.fieldbyname('ID').AsInteger := StrToInt(Fprincipal.codifica('000132'));
    tbagenda.fieldbyname('ARQUIVOSALVO').AsString := DBEdit3.Text;
    tbagenda.Post;
    pConfig.Enabled := False;
    BitBtn1.Enabled := True;
    BitBtn4.Enabled := True;
    BitBtn2.Enabled := False;
    BitBtn3.Enabled := False;
    pgravar2.Visible := False;
    bvoltar.Enabled := True;
    PopupMenu := PopupMenu2;
    Timer1.Enabled:=True;
    Timer2.Enabled:=True;
    Timer3.Enabled:=True;
  end;
end;

procedure TFprincipal.BitBtn4Click(Sender: TObject);
begin
  if not (tbagenda.State in [dsedit, dsinsert]) then
  begin
    BitBtn1.Enabled := False;
    BitBtn4.Enabled := False;
    BitBtn5.Enabled := False;
    BitBtn2.Enabled := True;
    BitBtn3.Enabled := True;
    pConfig.Enabled := True;
    pgravar2.Visible := True;
    bvoltar.Enabled := False;
    PopupMenu := PopupMenu3;
    tbagenda.Edit;
    dbedit5.SetFocus;
    Timer1.Enabled:=False;
    Timer2.Enabled:=False;
    Timer3.Enabled:=False;
  end;
end;

procedure TFprincipal.DBEdit5Enter(Sender: TObject);
begin
  tedit(sender).Color := $00A0FAF8;
end;

procedure TFprincipal.DBEdit5Exit(Sender: TObject);
begin
  tedit(sender).color := clwindow;
end;

procedure TFprincipal.Alterar1Click(Sender: TObject);
begin
  PageView1.ActivePageIndex := 1;
  BitBtn4.Click;
end;

procedure TFprincipal.bck0001Click(Sender: TObject);
begin
  PageView1.ActivePageIndex := 0;
end;

procedure TFprincipal.bck0002Click(Sender: TObject);
begin
  PageView1.ActivePageIndex := 1;
end;

procedure TFprincipal.DBEdit5KeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then perform(wm_nextdlgctl, 0, 0);
end;

procedure TFprincipal.AdvGlowButton1Click(Sender: TObject);
var i, k: Integer;
  diretorio: string;
  vai: Boolean;
begin
  try
    with IBRestoreService1 do begin
      Timer1.Enabled := False;
      base.Disconnect;
      DatabaseName.Clear;
      DatabaseName.Add(edestino.Text); //caminho da nova base
      ServerType := 'IBEmbedded';
      Protocol := NamedPipe;
      ServerName := 'localhost'; //nome do servidor
      BackupFile.Clear;
      BackupFile.Add(eorigem.Text); //caminho do arquivo de backup
      Params.Clear;
      Params.Add('User_Name=SYSDBA'); //nome de usu�rio
      Params.Add('Password=masterkey'); //senha do usu�rio
      i := Length(edestino.Text);
      for k := 1 to i do begin
        if Copy(edestino.Text, i - k, 1) = '\' then begin
          diretorio := Copy(edestino.Text, 1, i - k - 1);
          Break;
        end;
      end;
      //se existir arquivo com o nome renomeia o arquivo base_nova.fdb se ja existir
      if FileExists(edestino.Text) then
      begin
        i := 1;
        vai := False;
        while not vai do begin
          if not FileExists(diretorio + '\base_nova_ant' + inttostr(i) + '.FDB') then begin
            RenameFile(edestino.Text, diretorio + '\base_nova_ant' + inttostr(i) + '.FDB');
            vai := True;
          end else
            i := i + 1;
        end;
      end;
      Options := [];
      Options := [CreateNewDB];
      {o bloco de if abaixo esta adicionando as op��es de restaura��o de acordo com o que o usu�rio escolheu.
      Ap�s esta listagem voc� encontra um link para um outro artigo onde voc� encontra mais informa��es
      sobre essas e outras op��es de restaura��o}
      if CBDesativarIndices.Checked then
        Options := Options + [DeactivateIndexes];
      if CBSemShadow.Checked then
        Options := Options + [NoShadow];
      if CBSemValidar.Checked then
        Options := Options + [NoValidityCheck];
      if CBUmaTabela.Checked then
        Options := Options + [OneRelationAtATime];
      if CBSubstituir.Checked then
        Options := Options + [Replace];

      {a propriedade verbose do TIBRestoreService especifica
      se durante o processo de restaura��o ser� retornado para a
      aplica��o o detalhamento da execu��o}
      Verbose := CBDetalhes.Checked;

      listbox1.Items.Add('  Desativar indices: ' + BoolToStr(CBDesativarIndices.Checked));
      listbox1.Items.Add('  Restaurar arquivo espelho: ' + BoolToStr(not CBSemShadow.Checked));
      listbox1.Items.Add('  Validar regras de integridade: ' + BoolToStr(not CBSemValidar.Checked));
      listbox1.Items.Add('  Restaurar uma tabela por vez: ' + BoolToStr(CBUmaTabela.Checked));
      listbox1.Items.Add('  Nome do servidor: ' + ServerName);
      listbox1.Items.Add('');
      Active := True; //ativa o servico de restaura��o, mais ainda nao inicia.
      listbox1.Clear;
      listbox1.Items.add('Local: ' + edestino.Text);
      listbox1.Items.Add('');
      Screen.Cursor := CrHourGlass;
      listbox1.Items.Add(Format('Restore Iniciado �s %s horas', [FormatDateTime('hh:nn:ss', now)]));
      Application.ProcessMessages;
      listbox1.Items.Add('');
      try
        ServiceStart; //inicia o restore
        if Verbose then begin
            while not Eof do begin
            listbox1.Items.Add(GetNextLine);
            listBox1.Update;
            listBox1.ItemIndex := ListBox1.Items.Count - 1;
          end;
        end else begin
          while IsServiceRunning do begin
            Application.ProcessMessages;
          end;
        end;
      finally
      end;
      Active := False; //desativa o servi�o de restore


      if CBSubstituir.Checked then begin
      //se existir arquivo com o nome renomeia o arquivo base.fdb
        if FileExists(diretorio + '\BASE.FDB') then begin
          i := 1;
          vai := False;
          while not vai do begin
            if not FileExists(diretorio + '\base_ant' + inttostr(i) + '.fdb') then begin
              RenameFile(diretorio + '\BASE.FDB', diretorio + '\base_ant' + inttostr(i) + '.fdb');
              vai := True;
            end else i := i + 1;
          end;
        end;
        RenameFile(edestino.Text, diretorio + '\BASE.FDB');
        listbox1.Items.Add('Aguarde, Substituindo Banco de Dados');
      end;
      listbox1.Items.Add('');
      listbox1.items.add(Format('Restore Finalizado �s %s horas', [FormatDateTime('hh:nn:ss', now)]));
      Screen.Cursor := CrDefault;
      base.Connected := True;
      tbagenda.Open;
      Timer1.Enabled := True;
    end;
    listbox1.Items.Add('Restore efetuado com sucesso!');
  except
    on E: Exception do begin
      listbox1.Items.Add('Ocorreu um erro inesperado. O restore n�o foi conclu�do.');
      listbox1.Items.Add('Informa��es da exce��o:');
      listbox1.Items.Add('  ' + E.Message);
      Screen.Cursor := CrDefault;
      econexao.Connected := True; //conecta o sistema na base de dados
    end;
  end;
end;

procedure TFprincipal.AdvGlowButton2Click(Sender: TObject);
begin
  with IBRestoreService1 do
  begin
    eConexao.Connected := False; //desconecta da base
    DatabaseName.Clear;
    listbox1.Clear;
    GroupBox2.Visible := False;
    listbox1.Visible := False;
  end;
end;

procedure TFprincipal.bvoltarClick(Sender: TObject);
begin
  if NewStyleControls then ShowWindow(Application.Handle, SW_HIDE);
  Self.Visible := False;
end;

procedure TFprincipal.DBEdit2ButtonClick(Sender: TObject);
begin
  if OpenDialog1.Execute then
  begin
    if not (tbagenda.State in [DSEDIT, DSINSERT]) then
      tbagenda.Edit;
    tbagendaBASEDADOS.AsString := OpenDialog1.FileName
  end;
end;

procedure TFprincipal.DBGrid1CellClick(Column: TColumn);
begin
  DBEdit3.Text := tbagenda.fieldbyname('ARQUIVOSALVO').AsString;
end;

procedure TFprincipal.DBEdit1Exit(Sender: TObject);
begin
  tedit(sender).color := clwindow;
  if DBEdit1.Text = '' then
    DBEdit1.Text := '127.0.0.1';
end;

procedure TFprincipal.BitBtn6Click(Sender: TObject);
begin
  if not OpenDialog2.Execute then //se n�o selecionar o arquivo de backup
    Exit;
  eorigem.text := OpenDialog2.FileName;
end;

procedure TFprincipal.BitBtn7Click(Sender: TObject);
begin
  if not SaveDialog2.Execute then
    Exit;
  edestino.Text := SaveDialog2.FileName;
end;

procedure TFprincipal.Timer2Timer(Sender: TObject);
begin
  if verifica_conexao2 then
  begin
    Timer2.Enabled := False;
    tbagenda.Open;
    Timer1.Enabled := True;
    Timer3.Enabled := True;
  end;
end;

procedure TFprincipal.FormShow(Sender: TObject);
begin
  PageView1.ActivePageIndex := 0;
end;

procedure TFprincipal.timer3Timer(Sender: TObject);
var
  //variaveis para envio de email
  Para: string;
  bserv: boolean;
  StreamMemo: TMemoryStream;
  Email: TEmail;
  sXML, edtSmtpHost, edtSmtpPort, edtSmtpUser, edtSmtpPass, edtEmailAssunto, caminho, mmEmailMsg: string;
  string1, string2: string;
  i: integer;
  EmailCorpo: TIdMessage;
  SMTP: TIdSMTP;
  voriginal: Real;
  data_boleto: TDateTime;
begin
 
end;

procedure TFprincipal.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Application.Minimize
end;

function TFprincipal.LeInistr(arquivo, sessao, chave,
  padrao: string): string;
var
  ArqIni: TIniFile;
begin
  ArqIni := TIniFile.Create(arquivo);
  try
    RESULT := ArqIni.ReadString(sessao, chave, padrao);
  finally
    ArqIni.Free;
  end;
end;

end.

