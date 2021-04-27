unit venda;

interface

uses
  Windows, Messages, Variants, Classes, Graphics, Controls, Vcl.Forms, Dialogs,
  StdCtrls, pcnConversaoNFe, Thread.CheckConnection, Data.DB, MemDS, DBAccess,
  Uni, System.Actions, Vcl.ActnList, Vcl.XPStyleActnCtrls, Vcl.ActnMan, Vcl.Menus,
  AdvMenus, Vcl.ExtCtrls, NxColumnClasses, AdvGlowButton, TFlatComboBoxUnit,
  AdvTimePickerDropDown, RzEdit, RzPanel, NxColumns, NxScrollControl,
  NxCustomGridControl, NxCustomGrid, NxGrid, Vcl.Mask, dxGDIPlusClasses,
  AdvOfficeImage, AdvReflectionLabel, RzLabel, acPNG, TFlatPanelUnit, Vcl.FileCtrl,
  pcnAuxiliar, principal, IdIPWatch, pcnConversao, ACBrUtil, ACBrBAL, Clipbrd,
  JvComponentBase, JvThreadTimer, System.SysUtils, FlCtrlEx, JPEG, Consts,
  AdvMetroButton, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  dxStatusBar, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage,
  cxNavigator, cxDBData, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGridLevel, cxClasses, cxGridCustomView, cxGrid,
  cxGridBandedTableView, cxGridDBBandedTableView, cxImageComboBox, System.ImageList,
  Vcl.ImgList, uBandeira, frxClass, frxDBSet, Datasnap.DBClient, Vcl.DBCGrids,
  cxEdit, Vcl.Touch.Keyboard, Vcl.Buttons, Extra, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, AdvSmoothTouchKeyBoard, Recebimento, cxButtonEdit, Vcl.Touch.GestureMgr,
  cxContainer, cxLabel, frxDesgn, ACBrSAT, ACBrBase, ACBrSATExtratoClass,
  ACBrSATExtratoReportClass, ACBrSATExtratoFortesFr, cxMemo, MontaPizza,
  dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel,
  dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMetropolis, dxSkinMetropolisDark, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinPumpkin, dxSkinSeven,
  dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus, dxSkinSilver,
  dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008, dxSkinTheAsphaltWorld,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, dxSkinsdxStatusBarPainter, dxSkinscxPCPainter, System.StrUtils,
  ACBrDFeReport;

const
  OffsetMemoryStream: Int64 = 0;

type
  // tipo de imagens do dislplay
  Tipo_Imagem = (tiNenhum, tiLivre, tiErro, tiOk, tiAlerta, tiInfo, tiFechado, tiExcluir, tiPergunta, tiPgto, tiCliente, tiPeso);

type
  TfrmVenda = class(TForm)
    pn_tampa: TFlatPanel;
    fl: TFileListBoxEx;
    pnFundo: TPanel;
    pn_principal: TPanel;
    imgFundo: TImage;
    ed_foco: TEdit;
    pop_principal: TAdvPopupMenu;
    Opes1: TMenuItem;
    PesquisadeProdutos1: TMenuItem;
    FecharCupom1: TMenuItem;
    CancelarCupom1: TMenuItem;
    CancelarItem1: TMenuItem;
    ConsultadePreos1: TMenuItem;
    ConsultadeClientes1: TMenuItem;
    menu_Prevenda: TMenuItem;
    AcionaBalana1: TMenuItem;
    AcionaGaveta1: TMenuItem;
    Cupons1: TMenuItem;
    Atendimento1: TMenuItem;
    Oramento1: TMenuItem;
    menu_mesa: TMenuItem;
    Comandas1: TMenuItem;
    Caixa1: TMenuItem;
    FecharCaixa1: TMenuItem;
    Suprimento1: TMenuItem;
    Sangria1: TMenuItem;
    CaixaIndisponvel1: TMenuItem;
    rocarOperador1: TMenuItem;
    N2: TMenuItem;
    Retornar1: TMenuItem;
    Sair1: TMenuItem;
    timer_carga: TTimer;
    TimerTroco: TTimer;
    query: TUniQuery;
    query2: TUniQuery;
    qrForma: TUniQuery;
    query3: TUniQuery;
    qrapoio: TUniQuery;
    qrProdNCFE: TUniQuery;
    QRCSOSN: TUniQuery;
    tmContigencia: TJvThreadTimer;
    qryEnviaContigencia: TUniQuery;
    qryEnviaContigenciaNUMERO: TIntegerField;
    qryEnviaContigenciaDATA: TDateField;
    qryEnviaContigenciaTOTAL: TFloatField;
    qryEnviaContigenciaCLIENTE: TStringField;
    qryEnviaContigenciaCHAVE: TStringField;
    qryEnviaContigenciaXML: TStringField;
    qryEnviaContigenciaSITUACAO: TIntegerField;
    qryEnviaContigenciaTROCO: TFloatField;
    qryEnviaContigenciaHORA: TStringField;
    qryEnviaContigenciaXML_CANCELAMENTO: TStringField;
    qryEnviaContigenciaCONTINGENCIA: TStringField;
    qryEnviaContigenciaENVIADOCONTINGENCIA: TStringField;
    qrContingencia: TUniQuery;
    C1: TMenuItem;
    Panel7: TPanel;
    lb_produto: TRzLabel;
    pnBarra: TPanel;
    ed_barra: TRzEdit;
    pnUnitario: TPanel;
    lbCodBarras: TRzLabel;
    RzLabel1: TRzLabel;
    pnQuantidade: TPanel;
    RzLabel3: TRzLabel;
    ed_unitario: TRzNumericEdit;
    AdvMetroButton2: TAdvMetroButton;
    AdvMetroButton1: TAdvMetroButton;
    cpBarra: TdxStatusBar;
    Panel12: TPanel;
    Panel13: TPanel;
    lb_total: TRzLabel;
    lbTotal: TRzLabel;
    barraAtalho: TdxStatusBar;
    Panel14: TPanel;
    lb_item: TRzLabel;
    RzLabel7: TRzLabel;
    Panel15: TPanel;
    pnBaseFoto: TBevel;
    img_produto: TImage;
    img_logo: TAdvOfficeImage;
    UniDataSource1: TUniDataSource;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1ITEM: TcxGridDBColumn;
    cxGrid1DBTableView1COD_BARRA: TcxGridDBColumn;
    cxGrid1DBTableView1CODIGO: TcxGridDBColumn;
    cxGrid1DBTableView1NOME: TcxGridDBColumn;
    cxGrid1DBTableView1UNIDADE: TcxGridDBColumn;
    cxGrid1DBTableView1QTDE: TcxGridDBColumn;
    cxGrid1DBTableView1VALOR_UNITARIO: TcxGridDBColumn;
    cxGrid1DBTableView1VALOR_DESCONTO: TcxGridDBColumn;
    cxGrid1DBTableView1VALOR_ACRESCIMO: TcxGridDBColumn;
    cxGrid1DBTableView1VALOR_TOTAL: TcxGridDBColumn;
    cxGrid1DBBandedTableView1: TcxGridDBBandedTableView;
    cxGrid1DBBandedTableView1ITEM: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1COD_BARRA: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1NOME: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1UNIDADE: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1QTDE: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1VALOR_UNITARIO: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1VALOR_DESCONTO: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1VALOR_ACRESCIMO: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1VALOR_TOTAL: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1CANCELADO: TcxGridDBBandedColumn;
    cxStyleRepository1: TcxStyleRepository;
    stLinhas: TcxStyle;
    stTitulo: TcxStyle;
    Panel11: TPanel;
    ImageList1: TImageList;
    texto: TcxStyle;
    mnDelivery: TMenuItem;
    G1: TMenuItem;
    qrServidor: TUniQuery;
    frComprovanteDebito: TfrxReport;
    cdsParcelas: TClientDataSet;
    cdsParcelasVencimento: TDateField;
    cdsParcelasValor: TFloatField;
    frParcelas: TfrxDBDataset;
    cdsParcelasParcela: TStringField;
    RelCupomNF: TfrxReport;
    frCupomNF: TfrxDBDataset;
    qrCupomNF: TUniQuery;
    frFilial: TfrxDBDataset;
    frImpForma: TfrxDBDataset;
    qrImpForma: TUniQuery;
    qrImpFormaCOD_FORMA: TStringField;
    qrImpFormaFORMA_DESCRICAO: TStringField;
    qrImpFormaFORMA_PRESTACAO: TIntegerField;
    qrImpFormaFORMA_VALOR: TFloatField;
    RelCupomNFRestaurante: TfrxReport;
    qrCupomNFCOD_CUPOM: TStringField;
    qrCupomNFNUMERO: TStringField;
    qrCupomNFDATA: TDateField;
    qrCupomNFHORA: TTimeField;
    qrCupomNFCUPOM_TOTAL: TFloatField;
    qrCupomNFCUPOM_PAGO: TFloatField;
    qrCupomNFCUPOM_TROCO: TFloatField;
    qrCupomNFCLIENTE: TStringField;
    qrCupomNFVENDEDOR: TStringField;
    qrCupomNFCPF_CONSUMIDOR: TStringField;
    qrCupomNFNOME_CONSUMIDOR: TStringField;
    qrCupomNFCOD_CAIXA: TIntegerField;
    qrCupomNFPEGO_PORQUEM: TStringField;
    qrCupomNFCOUVERT: TFloatField;
    qrCupomNFTAXA_GARCON: TFloatField;
    qrCupomNFCOD_ITEM: TStringField;
    qrCupomNFITEM: TStringField;
    qrCupomNFCOD_PRODUTO: TIntegerField;
    qrCupomNFNOME: TStringField;
    qrCupomNFCOD_BARRA: TStringField;
    qrCupomNFUNIDADE: TStringField;
    qrCupomNFQTDE: TFloatField;
    qrCupomNFITEM_UNITARIO: TFloatField;
    qrCupomNFITEM_SUBTOTAL: TFloatField;
    qrCupomNFITEM_DESCONTO: TFloatField;
    qrCupomNFITEM_ACRESCIMO: TFloatField;
    qrCupomNFITEM_TOTAL: TFloatField;
    pnTouch: TPanel;
    pnTouch_Produto: TPanel;
    pnTouch_Grupo: TPanel;
    qrGrupo: TUniQuery;
    qrGrupoCODIGO: TStringField;
    qrGrupoGRUPO: TStringField;
    qrGrupoFOTO: TBlobField;
    scGrupo: TScrollBox;
    Panel1: TPanel;
    Panel8: TPanel;
    qrProduto: TUniQuery;
    qrProdutoCODIGO: TIntegerField;
    qrProdutoCOD_BARRA: TStringField;
    qrProdutoNOME: TStringField;
    qrProdutoFOTOBD: TBlobField;
    scProduto: TScrollBox;
    pnBotoes: TPanel;
    AdvGlowButton2: TAdvGlowButton;
    AdvGlowButton3: TAdvGlowButton;
    AdvGlowButton4: TAdvGlowButton;
    btnFechaCupom: TAdvGlowButton;
    Panel9: TPanel;
    ed_qtde: TRzNumericEdit;
    btnDimQtd: TSpeedButton;
    btnAumQtd: TSpeedButton;
    qrCupomNFSENHA: TIntegerField;
    frComanda: TfrxReport;
    frxComanda: TfrxDBDataset;
    qrComanda: TUniQuery;
    qrComandaSENHA: TIntegerField;
    qrComandaDATA: TDateField;
    qrComandaHORA: TTimeField;
    qrComandaCOD_PRODUTO: TIntegerField;
    qrComandaNOME: TStringField;
    qrComandaQTDE: TFloatField;
    qrComandaVALOR_UNITARIO: TFloatField;
    qrComandaVALOR_TOTAL: TFloatField;
    qrComandaEXTRA: TBlobField;
    qrTmp: TUniQuery;
    qrContingenciaNUMERO: TIntegerField;
    qrContingenciaDATA: TDateField;
    qrContingenciaTOTAL: TFloatField;
    qrContingenciaCLIENTE: TStringField;
    qrContingenciaCHAVE: TStringField;
    qrContingenciaXML: TStringField;
    qrContingenciaSITUACAO: TIntegerField;
    qrContingenciaTROCO: TFloatField;
    qrContingenciaEX: TIntegerField;
    qrContingenciaHORA: TStringField;
    qrContingenciaCONTINGENCIA: TStringField;
    qrContingenciaENVIADOCONTINGENCIA: TStringField;
    qrContingenciaMOTIVOCONTIGENCIA: TStringField;
    qrContingenciaXMLENVIO: TBlobField;
    qrContingenciaXMLCACNELAMENTO: TBlobField;
    qrContingenciaALTERADO: TStringField;
    qrContingenciaCUPOM: TStringField;
    pnTotal: TPanel;
    RzLabel4: TRzLabel;
    ed_total_item: TRzNumericEdit;
    mnEnviaContigencia: TMenuItem;
    qrCupomNFENDERECO_CONSUMIDOR: TStringField;
    Teclado: TAdvSmoothTouchKeyBoard;
    cdsRecebimento: TClientDataSet;
    cdsRecebimentoTipo: TStringField;
    cdsRecebimentoParcelas: TIntegerField;
    cdsRecebimentobandeira: TStringField;
    cdsRecebimentovalor: TFloatField;
    cdsRecebimentocliente: TStringField;
    cdsRecebimentoconvenio: TStringField;
    cdsRecebimentobanco: TIntegerField;
    pnBotoesInferior: TPanel;
    btnCancelaVenda: TAdvGlowButton;
    btnCancelaItem: TAdvGlowButton;
    AdvGlowButton1: TAdvGlowButton;
    CentralizaGrid: TBevel;
    colBotDiminuir: TcxGridDBBandedColumn;
    colBotAlmuntar: TcxGridDBBandedColumn;
    TimerExtra: TTimer;
    lbCupom: TcxLabel;
    cdsOBS: TClientDataSet;
    cdsOBSobs: TMemoField;
    frOBS: TfrxDBDataset;
    frxDesigner1: TfrxDesigner;
    RelFicha: TfrxReport;
    ACBrSATExtratoFortes1: TACBrSATExtratoFortes;
    ACBrSAT1: TACBrSAT;
    qrCupom: TUniQuery;
    QrCupom_Item: TUniQuery;
    qrcupom_forma: TUniQuery;
    Query1: TUniQuery;
    QrProdutoSAT: TUniQuery;
    mmSat: TMenuItem;
    colExtra: TcxGridDBBandedColumn;
    stExtra: TcxStyle;
    qrCombo: TUniQuery;
    qrComboCOMBO: TStringField;
    qrProdComb: TUniQuery;
    qrProdCombCODIGO: TStringField;
    qrProdCombPRODUTO: TStringField;
    qrProdCombUNIDADE: TStringField;
    qrProdCombQTDE: TFloatField;
    qrLancaProdutos: TUniQuery;
    cdsLancaProdutos: TClientDataSet;
    cdsLancaProdutosCODPRO: TStringField;
    cdsLancaProdutosQTDE: TFloatField;
    qrLancaProdutosCOD_ITEM: TStringField;
    qrLancaProdutosCODPRO: TStringField;
    qrLancaProdutosQTDE: TFloatField;
    cdsLancaProdutosCOD_ITEM: TStringField;
    qrANP: TUniQuery;
    qrANPCODIGO: TStringField;
    qrANPDESCRICAO: TStringField;
    frxCancelado: TfrxReport;
    procedure Cancela_cupom_aberto();
    procedure Cancela_Item(sItem: string; Acao: string);
    procedure Registra_Item();
    procedure Limpa_controles();
    procedure Imprime_display(texto: string; cor_da_fonte: TColor; Imagem: Tipo_Imagem);
    procedure Imprime_display_anterior;
    function Abre_Venda(): Boolean;
    function Truncar_Valor(valor: Real): Real;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure ed_barraKeyPress(Sender: TObject; var Key: Char);
    procedure CancelarItem1Click(Sender: TObject);
    procedure ed_barraEnter(Sender: TObject);
    procedure Retornar1Click(Sender: TObject);
    procedure Sair1Click(Sender: TObject);
    procedure CancelarCupom1Click(Sender: TObject);
    procedure ed_barraExit(Sender: TObject);
    procedure ED_DESC_ACREEnter(Sender: TObject);
    procedure FecharCupom1Click(Sender: TObject);
    procedure ed_qtdeEnter(Sender: TObject);
    procedure ed_unitarioEnter(Sender: TObject);
    procedure AcionaBalana1Click(Sender: TObject);
    procedure ConsultadeClientes1Click(Sender: TObject);
    procedure ConsultadePreos1Click(Sender: TObject);
    procedure Opes1Click(Sender: TObject);
    procedure PesquisadeProdutos1Click(Sender: TObject);
    procedure Cupons1Click(Sender: TObject);
    procedure AcionaGaveta1Click(Sender: TObject);
    procedure FecharCaixa1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Sangria1Click(Sender: TObject);
    procedure Suprimento1Click(Sender: TObject);
    procedure rocarOperador1Click(Sender: TObject);
    procedure CaixaIndisponvel1Click(Sender: TObject);
    procedure menu_PrevendaClick(Sender: TObject);
    procedure Oramento1Click(Sender: TObject);
    procedure Assinararquivo1Click(Sender: TObject);
    procedure Recebimento1Click(Sender: TObject);
    procedure Menu_osClick(Sender: TObject);
    procedure menu_mesaClick(Sender: TObject);
    procedure Fabricao1Click(Sender: TObject);
    procedure timer_cargaTimer(Sender: TObject);
    procedure ed_unitarioKeyPress(Sender: TObject; var Key: Char);
    procedure Comandas1Click(Sender: TObject);
    procedure TimerTrocoTimer(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure sp_total_pagarContextPopup(Sender: TObject; MousePos: TPoint; var Handled: Boolean);
    procedure ed_barraKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure ed_qtdeKeyPress(Sender: TObject; var Key: Char);
    procedure ed_qtdeKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure tmContigenciaTimer(Sender: TObject);
    procedure C1Click(Sender: TObject);
    procedure AdvMetroButton1Click(Sender: TObject);
    procedure AdvMetroButton2Click(Sender: TObject);
    procedure mnDeliveryClick(Sender: TObject);
    procedure G1Click(Sender: TObject);
    procedure frComprovanteDebitoBeforePrint(Sender: TfrxReportComponent);
    procedure RelCupomNFRestauranteBeforePrint(Sender: TfrxReportComponent);
    procedure scGrupoMouseWheelDown(Sender: TObject; Shift: TShiftState; MousePos: TPoint; var Handled: Boolean);
    procedure scGrupoMouseWheelUp(Sender: TObject; Shift: TShiftState; MousePos: TPoint; var Handled: Boolean);
    procedure btnDimQtdClick(Sender: TObject);
    procedure btnAumQtdClick(Sender: TObject);
    procedure ed_qtdeExit(Sender: TObject);
    procedure ed_unitarioExit(Sender: TObject);
    procedure ed_total_itemKeyPress(Sender: TObject; var Key: Char);
    procedure mnEnviaContigenciaClick(Sender: TObject);
    procedure cxGrid1DBBandedTableView1FocusedRecordChanged(Sender: TcxCustomGridTableView; APrevFocusedRecord, AFocusedRecord: TcxCustomGridRecord; ANewItemRecordFocusingChanged: Boolean);
    procedure colBotDiminuirPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure colBotAlmuntarPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure TimerExtraTimer(Sender: TObject);
    procedure MouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure MouseLeave(Sender: TObject);
    procedure frxDesigner1GetTemplateList(List: TStrings);
    procedure RelFichaBeforePrint(Sender: TfrxReportComponent);
    procedure ACBrSAT1GetcodigoDeAtivacao(var Chave: AnsiString);
    procedure ACBrSAT1GetsignAC(var Chave: AnsiString);
    procedure mmSatClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
  private
    { Private declarations }
    Controle: TControl;
    a, b: Word;
    Carregando: Boolean;
    iImpressora: Integer;
    Touch_Colunas, Touch_Linhas, Touch_linhas_Grupo, Touch_Altura_Grupo: Integer;
    strPizza:tretPizza;
    function ImgTipoImpressora(i: Integer): TImpressora;
    procedure MostraFotoProduto(b: Boolean);
    procedure MostraLogoMarca(b: Boolean);
    procedure CentralizarPanel(p: TPanel);
    procedure MontaTelaTouch;
    procedure MontaGrupos;
    procedure MontaProdutos(Grupo: Integer);
    procedure GrupoClick(Sender: TObject);
    procedure ProdutoClick(Sender: TObject);
    function RetornaSenhaImpressao: Integer;
    procedure LongPress;
    procedure AjustaDescontoAcrescimo(Desconto, Acrescimo: Double);
    //procedure VerificaDuplicidade(Qtd: Integer); //função para verificar se passou o código de barras errado no campo de qtd.
  public
    { Public declarations }
    CheckConnect: TThreadCheckConnection;
    procedure OnInternetChange(LANStatus: TLANStatus; InternetStatus: TInternetStatus; xMsg: string = '');
    procedure CorEditTotaL;
    function Localizar_Produto(referencia: string): Boolean;
    procedure EnviaContingencia;
    procedure ImprimirCupomNaoFiscal(Cupom: string);
    procedure ImprimirComanda(Cupom: string);
    function RetornaPesoBalanca: Double;
    procedure ConfiguraSAT;
    function EnviaSAT(Cupom: string): Boolean;
    procedure PrepararImpressao;
    //passei para public para poder emitir nfce no menu_cupom
    function PrepararNFCE: Boolean;
    procedure GerarNFCe(NumNFe: string);
  end;

const
  SEPARADOR = '-----------------------------------------' + #10;

var
  frmtOffLine: TpcnTipoEmissao;
  frmVenda: TfrmVenda;
  SatOk, FormatXML, CancelaIMpressaoCozinha: Boolean;
  Sat_Largura, Sat_MargemTopo, Sat_MargemFundo, Sat_MargemEsquerda, Sat_MargemDireita: Integer;
  Sat_FormatXML, Sat_Preview: Boolean;
  Sat_CfopPadrao, Sat_Impressora: string;
  Sat_RedeTipoInter, Sat_RedeTipoLan, Sat_RedeSeg, Sat_RedeProxy, Sat_RedeProxyPorta: integer;
  Sat_RedeSSID, Sat_RedeCodigo, Sat_RedeIP, Sat_RedeMask, Sat_RedeGW, Sat_RedeDNS1, Sat_RedeDNS2, Sat_RedeUsuario, Sat_RedeSenha, Sat_RedeProxyIP, Sat_RedeProxyUser, Sat_RedeProxySenha: string;
  SwHAssinatura, CodigoAtivacaoSAT: string;



  vExtra: tRetExtra;
  vRecebimento: TRecebimento;

 // resolução da tela
  OldWidth: Integer;
  SenhaImpressao, OldHeight: Integer;
  TipoImprimeCupom, ImprimeCupom: string;
  UtilizaSenha: Boolean;

  // totalizadoras
  rTotal_Venda: Real;
  rTotal_Desconto: Real;
  rTotal_Acrescimo: Real;
  rTotal_Couvert: Real;
  rTotal_Comissao: Real;
  rTotal_TaxaEntrega: Real;
  iTotal_Itens: Integer;
  iItem: Integer;
  // STATUS das funcoes
  bVenda: Boolean; // venda aberta
  bTotalizado: Boolean; // cupom totalizado
  bPago1, bPago2, bPago3: Boolean; // lancado cada forma de pagamento
  bFinalizado: Boolean; // Cupom Finalizado (Totalizado);
  // Outras
  blimpa_edit_display: Boolean;

  // Armazenar dados anteriores do display
  sTexto_anterior: string;
  sMensagem_Cupom, sObsProduto: TMemo;
  clCor_anterior: TColor;
  TiImagem_anterior: Tipo_Imagem;

  // flag de finalizacao do tef
  bTef_finaliza: Boolean;
  // totalizadores das formas que exigem tratamento especial
  rvalor_total_cheque, rvalor_total_crediario, rvalor_total_convenio: Real;

  // variaveis do posto
  sPosto_Resposta, sPosto_Comando, str: string;
  iQtde_bico: Integer;
  bPosto_ok: Boolean;
  dtContingencia: TDate;
  hrContingencia: TTime;
  // focar no campo anterior
  bVolta_foco: Boolean;

  // Dados do Vendedor
  iVendedorCodigo: Integer;
  sVendedorNome: string;

    // variaveis nfce
  vAux, vNumLote, vSincrono, vcontingencia, vgerado_nfce: string;
  vNumNFCe: Integer;
  Sincrono: Boolean;
  bc: TBitmap;
  url, cDest, tpAmb: string;
  Hash_SHA1: string;
  X: Integer;
  S: AnsiString;
  tipo_pgto: Integer;
  nfce_autorizada: Boolean;
  bContinuaNFCE: Boolean;
  cStatus: Integer;
  ChaveNFCE: string;
  NumeroNFCe: Integer;

  //variavel multiplicador
  multiplicador: string;

  //flag da contingencia
  enviadoemcontingencia: boolean;

implementation

uses
  modulo, Math, funcoes, cliente_consulta, preco_consulta, produto_consulta,
  protetor_tela, consumidor, venda_crediario, Identifica, caixa_fechamento,
  sangria, suprimento, senha, menu_cupom, pre_venda, msg_Operador,
  Orcamento_Abrir, IniFiles, contasreceber, os, caixa_abertura, mesas,
  fabricacao, senha_supervisor, ComObj, Constantes, Vendedor, UFuncoes, Comanda,
  MensagemAdicional, impDelivery, frmNFCEs, Vcl.Printers, FechamentoCego,
  ACBrSATClass, CuponsSAT, Tipo_Cupom;

{$R *.dfm}


// -------------------------------------------------------------------------- //

function TrocaResolucao(X, Y, a, b: Word): Boolean;
var
  lpDevMode: TDeviceMode;
begin
  if EnumDisplaySettings(nil, 0, lpDevMode) then begin
    lpDevMode.dmFields := DM_PELSWIDTH or DM_PELSHEIGHT;
    lpDevMode.dmPelsWidth := X; // altera a resolução para a que voce voce desejou
    lpDevMode.dmPelsHeight := Y; // altera a resolução para a que voce voce desejou
    Result := ChangeDisplaySettings(lpDevMode, 0) = DISP_CHANGE_SUCCESSFUL;
  end;
end;

function VoltaResolucao(a, b: Word): Boolean;
var
  lpDevMode: TDeviceMode;
begin
  if EnumDisplaySettings(nil, 0, lpDevMode) then begin
    lpDevMode.dmFields := DM_PELSWIDTH or DM_PELSHEIGHT;
    lpDevMode.dmPelsWidth := a; // ao fechar o programa recupera a resolução que vinha sendo usada
    lpDevMode.dmPelsHeight := b; // ao fechar o programa recupera a resolução que vinha sendo usada
    Result := ChangeDisplaySettings(lpDevMode, 0) = DISP_CHANGE_SUCCESSFUL;
  end;
  Result := True;
end;

procedure TfrmVenda.OnInternetChange(LANStatus: TLANStatus; InternetStatus: TInternetStatus; xMsg: string = '');
var
  ok: Boolean;
begin
  if InternetStatus = tiOnline then begin
    if ContigenciaPermanente then begin
      if frmModulo.ACBRNFCe.Configuracoes.Geral.FormaEmissao <> frmtOffLine then begin
        TdxStatusBarStateIndicatorPanelStyle(cpBarra.Panels[7].PanelStyle).Indicators[0].IndicatorType := sitGreen;
        cpBarra.Panels[9].Text := 'CONTINGÊNCIA';
        tmContigencia.Enabled := False;
        frmModulo.ACBRNFCe.Configuracoes.Geral.FormaEmissao := frmtOffLine;
      end
    end
    else begin
      tmContigencia.Enabled := False;
      TdxStatusBarStateIndicatorPanelStyle(cpBarra.Panels[7].PanelStyle).Indicators[0].IndicatorType := sitGreen;
      cpBarra.Panels[9].Text := 'ON-LINE';
      frmModulo.ACBRNFCe.Configuracoes.Geral.FormaEmissao := StrToTpEmis(ok, IntToStr(rgFormaEmissao + 1));

     if not (bVenda) then
        EnviaContingencia;
    end;
  end
  else begin
    if frmModulo.ACBRNFCe.Configuracoes.Geral.FormaEmissao <> frmtOffLine then begin
      TdxStatusBarStateIndicatorPanelStyle(cpBarra.Panels[7].PanelStyle).Indicators[0].IndicatorType := sitRed;
      cpBarra.Panels[9].Text := 'OFF-LINE';
      tmContigencia.Enabled := True;
      frmModulo.ACBRNFCe.Configuracoes.Geral.FormaEmissao := frmtOffLine;
    end;
  end;
end;

procedure TfrmVenda.EnviaContingencia;
begin
  if Carregando then
    Exit;
  if TdxStatusBarStateIndicatorPanelStyle(cpBarra.Panels[7].PanelStyle).Indicators[0].IndicatorType = sitGreen then begin
    qrContingencia.Close;
    qrContingencia.Open;
    if not qrContingencia.IsEmpty then begin
      try
        ed_barra.Enabled := False;
        while not qrContingencia.Eof do begin
          Imprime_display('   AGUARDE...  ENVIANDO CONTINGENCIAS', clGreen, tiLivre);
          with frmModulo do begin
            LerConfiguracao;
            if EdFormatoOff = 0 then
              frmtOffLine := teContingencia
            else
              frmtOffLine := teOffLine;
            ACBRNFCe.NotasFiscais.Clear;
            ACBRNFCe.NotasFiscais.LoadFromFile(qrContingenciaXML.AsString);
            ACBRNFCe.Enviar(ACBRNFCe.NotasFiscais.Items[0].NFe.Ide.nNF, False, True);
            if ACBRNFCe.NotasFiscais.Items[0].Confirmada then begin
              if ACBRNFCe.WebServices.Enviar.cStat = 100 then begin
                qrContingencia.Edit;
                qrContingenciaENVIADOCONTINGENCIA.AsString := 'S';
                qrContingenciaEX.AsInteger := 0;
                qrContingenciaALTERADO.AsString := 'S';
                qrContingencia.Post;
                qrContingencia.ApplyUpdates;
              end;
            end
            else begin
              Imprime_display('AGUARDE... ERRO AO ENVIAR NFC-E: ' + qrContingenciaNUMERO.AsString, clRed, tiAlerta);
            end;
          end;
          qrContingencia.Next;
        end;
      finally
        ed_barra.Enabled := True;
        if not AtivaTouch then
          ed_barra.SetFocus;
        Imprime_display('C A I X A    L I V R E', clWhite, tiLivre);
      end;
    end;
  end;
end;

function TfrmVenda.EnviaSAT(Cupom: string): Boolean;
var
  TotalItem: Double;
  tGeralCup: Currency;
  ctItem: Integer;
  ST: string;
  cfOP: string;
  Origem: string;
  noPro: string;
  Ncm: string;
  TributosEST: Currency;
  TributosFED: Currency;
  itTributosEST: Currency;
  itTributosFED: Currency;
  cMsg: string;
  UMprod: string;
  edtPathCFe: string;
  ValorAcrescimo, ValorDesconto: Real;
   //Variaveis para checar o CPF e o CNPJ
  Tm: array[1..14] of integer;
  Tn: array[1..14] of integer;
  Dgt1, Dgt2: integer;
  Soma1, Soma2: integer;
begin

  try
    qrCupom.Close;
    qrCupom.SQL.Clear;
    qrCupom.SQL.Add('select cup.*, cup.valor_acrescimo vr_acre, cup.valor_total vr_total from cupom cup ');
    qrCupom.SQL.Add('where cup.codigo = ' + QuotedStr(Cupom));
    qrCupom.Open;
    qrCupom.First;
    QrCupom_Item.SQL.Clear;
    QrCupom_Item.SQL.Add('select ite.*, pro.*, cup.*');
    QrCupom_Item.SQL.Add('from cupom cup');
    QrCupom_Item.SQL.Add('  inner join cupom_item ite on ite.cod_cupom = cup.codigo');
    QrCupom_Item.SQL.Add('  inner join estoque pro on pro.codigo = ite.cod_produto');
    QrCupom_Item.SQL.Add('where cup.codigo = ' + QuotedStr(qrCupom.FieldByName('codigo').AsString));
    QrCupom_Item.SQL.Add('and ite.cancelado <> 1 and sat = 0');
    QrCupom_Item.Open;
    QrCupom_Item.First;

    qrcupom_forma.close;
    qrcupom_forma.SQL.Clear;
    qrcupom_forma.SQL.Add('select * from cupom_forma');
    qrcupom_forma.SQL.Add('where cod_cupom = ' + QuotedStr(qrCupom.FieldByName('codigo').AsString));
    qrcupom_forma.Open;
    qrcupom_forma.First;

    ACBrSAT1.CFe.IdentarXML := sat_FormatXML;
    ACBrSAT1.CFe.TamanhoIdentacao := 3;
    ConfiguraSAT;
    ACBrSAT1.InicializaCFe;
    ValorAcrescimo := 0;
    ValorDesconto := 0;

    with ACBrSAT1.CFe do begin
      ide.numeroCaixa := iNumCaixa;
      Dest.CNPJCPF := qrCupom.FieldByName('cpf_consumidor').AsString;
      Dest.xNome := qrCupom.FieldByName('nome_consumidor').AsString;
      ctItem := QrCupom_Item.FieldByname('item').AsInteger;
      tGeralCup := 0;
      while not QrCupom_Item.Eof do begin
        QrProdutoSAT.Close;
        QrProdutoSAT.SQL.Clear;
        QrProdutoSAT.SQL.Add('select * from estoque where codigo = ' + QuotedStr(QrCupom_Item.FieldByname('COD_PRODUTO').AsString));
        QrProdutoSAT.Open;

        QRCSOSN.close;
        QRCSOSN.sql.clear;
        QRCSOSN.sql.add('select pro.csosn, pro.origem, pro.aliquota icms, pro.cest, tip.codigo servico ');
        QRCSOSN.sql.Add('from C000025 pro');
        QRCSOSN.sql.Add('left join tipo_servico tip on tip.id = pro.id_tipo_servico');
        QRCSOSN.sql.add('where pro.codigo = :pcodigo');
        QRCSOSN.ParamByName('pcodigo').asstring := Zerar(QrCupom_Item.FieldByname('COD_PRODUTO').AsString, 6);
        QRCSOSN.Open;

        with Det.Add do begin
          noPro := QrCupom_Item.FieldByname('NOME').AsString;
          UMprod := QrCupom_Item.FieldByname('Unidade').AsString;
          Ncm := QrCupom_Item.FieldByname('NCM').AsString;
          Origem := QRCSOSN.FieldByname('ORIGEM').AsString;
          if not (QrProdutoSAT.FieldByName('cfop').IsNull) and (Trim(QrProdutoSAT.FieldByName('cfop').AsString) <> '') then
            cfOP := QrProdutoSAT.FieldByName('cfop').AsString
          else
            cfOP := Sat_CfopPadrao;
          nItem := ctItem;
          Prod.cProd := QrCupom_Item.fieldbyname('cod_produto').AsString;
          Prod.cEAN := ' ';
          Prod.xProd := noPro;
          prod.NCM := Ncm;
          Prod.uCom := UMprod;
          Prod.qCom := QrCupom_Item.FieldByname('qtde').AsFloat;
          Prod.vUnCom := QrCupom_Item.fieldbyname('valor_Unitario').AsFloat;
          Prod.indRegra := irTruncamento;
          Prod.vDesc := 0;
          Prod.CFOP := cfOP;
          Prod.vRatAcr := QrCupom_Item.fieldbyname('VALOR_ACRESCIMO').AsFloat;
          Prod.vRatDesc := QrCupom_Item.fieldbyname('VALOR_DESCONTO').AsFloat;
          ValorAcrescimo := ValorAcrescimo + Prod.vRatAcr;
          ValorDesconto := ValorDesconto + Prod.vRatDesc;

          if trim(QRCSOSN.FieldByName('servico').AsString) <> '' then begin
            TotalItem := Prod.qCom * Prod.vUnCom;
            qrServidor.Close;
            qrServidor.SQL.Clear;
            qrServidor.SQL.Add('select emp.iss, emp.cod_municipio_ibge from C000004 emp');
            qrServidor.Open;
            Imposto.ICMS.CSOSN := csosn900;
            Imposto.ISSQN.cNatOp := 1;
            Imposto.ISSQN.vBC := Prod.vProd;
            Imposto.ISSQN.vAliq := qrServidor.FieldByName('iss').AsFloat;
            Imposto.ISSQN.vISSQN := RoundTo((Imposto.ISSQN.vBC * Imposto.ISSQN.vAliq) / 100, -2);
            Imposto.ISSQN.cMunFG := qrServidor.FieldByName('cod_municipio_ibge').AsInteger;
            Imposto.ISSQN.cListServ := trim(QRCSOSN.FieldByName('servico').AsString);
            Imposto.ISSQN.indIncFisc := iiSim;
            Imposto.PIS.CST := pis07;
            Imposto.COFINS.CST := cof07;
            with Total.ISSQNtot do begin
              vBC := Imposto.ISSQN.vBC;
              vISS := Imposto.ISSQN.vISSQN;
            end;
          end
          else begin
            if frmModulo.qrfilial.FieldByName('optante_simples').AsString = 'S' then begin
              if not QrProdutoSAT.IsEmpty then
                ST := QrProdutoSAT.FieldByName('CSOSN').AsString;
            end
            else
              ST := QrCupom_Item.FieldByname('CST').AsString;
            TotalItem := Prod.qCom * Prod.vUnCom;
            tGeralCup := tGeralCup + TotalItem;
            if Ncm <> '' then begin
              if (QrProdutoSAT.RecordCount > 0) and (QrProdutoSAT.FieldByName('ALIQNACIONAL').AsFloat > 0) then begin
                TributosEST := TributosEST + (TotalItem * QrProdutoSAT.FieldByName('ALIQNACIONAL').AsFloat / 100);
                itTributosEST := (TotalItem * QrProdutoSAT.FieldByName('ALIQNACIONAL').AsFloat / 100);
              end;
            end;
            if Origem = '0' then
              Imposto.vItem12741 := itTributosEST
            else
              Imposto.vItem12741 := itTributosEST + itTributosFED;
            if Origem = '0' then
              Imposto.ICMS.orig := oeNacional;
            if Origem = '1' then
              Imposto.ICMS.orig := oeEstrangeiraImportacaoDireta;
            if Origem = '2' then
              Imposto.ICMS.orig := oeEstrangeiraAdquiridaBrasil;
            if Origem = '3' then
              Imposto.ICMS.orig := oeNacionalConteudoImportacaoSuperior40;
            if Origem = '4' then
              Imposto.ICMS.orig := oeNacionalProcessosBasicos;
            if Origem = '5' then
              Imposto.ICMS.orig := oeNacionalConteudoImportacaoInferiorIgual40;
            if Origem = '6' then
              Imposto.ICMS.orig := oeEstrangeiraImportacaoDiretaSemSimilar;
            if Origem = '7' then
              Imposto.ICMS.orig := oeEstrangeiraAdquiridaBrasilSemSimilar;
            if Origem = '8' then
              Imposto.ICMS.orig := oeNacionalConteudoImportacaoSuperior70;
            frmModulo.qrfilial.First;
            //CST ou CSOSN
            if frmModulo.qrfilial.FieldByName('optante_simples').AsString = 'N' then begin //Regime normal
              if ST = '000' then begin
                Imposto.ICMS.CST := cst00;
                Imposto.ICMS.pICMS := 18;
              end;
              if ST = '020' then
                Imposto.ICMS.CST := cst20;
              if ST = '090' then begin
                Imposto.ICMS.CST := cst90;
                Imposto.ICMS.pICMS := 18;
              end;
              if ST = '040' then
                Imposto.ICMS.CST := cst40;
              if ST = '041' then
                Imposto.ICMS.CST := cst41;
              if ST = '050' then
                Imposto.ICMS.CST := cst50;
              if ST = '060' then
                Imposto.ICMS.CST := cst60;
            end
            else if frmModulo.qrfilial.FieldByName('optante_simples').AsString = 'S' then begin //Regime simples nacional
              if ST = '101' then
                Imposto.ICMS.CSOSN := csosn101;
              if ST = '102' then
                Imposto.ICMS.CSOSN := csosn102;
              if ST = '103' then
                Imposto.ICMS.CSOSN := csosn103;
              if ST = '201' then
                Imposto.ICMS.CSOSN := csosn201;
              if ST = '202' then
                Imposto.ICMS.CSOSN := csosn202;
              if ST = '203' then
                Imposto.ICMS.CSOSN := csosn203;
              if ST = '300' then
                Imposto.ICMS.CSOSN := csosn300;
              if ST = '400' then
                Imposto.ICMS.CSOSN := csosn400;
              if ST = '500' then
                Imposto.ICMS.CSOSN := csosn500;
              if ST = '900' then
                Imposto.ICMS.CSOSN := csosn900;
              Imposto.ICMS.pICMS := QrCupom_Item.fieldbyname('aliquota').AsFloat;
            end;
            //PIS
            if frmModulo.qrfilial.FieldByName('optante_simples').AsString = 'N' then
              Imposto.PIS.CST := pis99
            else if frmModulo.qrfilial.FieldByName('optante_simples').AsString = 'S' then
              Imposto.PIS.CST := pis49;
            //Imposto.PIS.vBC := TotalItem;
            //Imposto.PIS.pPIS := 0.0065;
            //COFINS
            if frmModulo.qrfilial.FieldByName('optante_simples').AsString = 'N' then
              Imposto.COFINS.CST := cof99
            else if frmModulo.qrfilial.FieldByName('optante_simples').AsString = 'S' then
              Imposto.COFINS.CST := cof49;
          end;
        end;
        QrCupom_Item.Next;
        ctItem := ctItem + 1;
      end;
      Total.DescAcrEntr.vDescSubtot := ValorDesconto;
      Total.DescAcrEntr.vAcresSubtot := ValorAcrescimo;

      Total.vCFeLei12741 := TributosEST + TributosFED;
      qrcupom_forma.First;
      while not qrcupom_forma.Eof do begin
        if qrcupom_forma.FieldByName('troco').AsFloat > 0 then
          Pagto.vTroco := qrcupom_forma.FieldByName('troco').AsFloat;
        if qrcupom_forma.FieldByName('forma').AsString = StRecDinheiro then
          with Pagto.Add do begin
            cMP := mpDinheiro;
            vMP := qrcupom_forma.fieldbyname('valor').AsFloat;
          end;
        if (qrcupom_forma.FieldByName('forma').AsString = StRecCheque) or (qrcupom_forma.FieldByName('forma').AsString = StRecCheque) then
          with Pagto.Add do begin
            cMP := mpCheque;
            vMP := qrcupom_forma.fieldbyname('valor').AsFloat;
          end;
        if (qrcupom_forma.FieldByName('forma').AsString = StRecCartaoCR) then
          with Pagto.Add do begin
            cMP := mpCartaodeCredito;
            vMP := qrcupom_forma.fieldbyname('valor').AsFloat;
            cAdmC := 999;
          end;
        if (qrcupom_forma.FieldByName('forma').AsString = StRecCartaoDE) then
          with Pagto.Add do begin
            cMP := mpCartaodeDebito;
            vMP := qrcupom_forma.fieldbyname('valor').AsFloat;
            cAdmC := 999;
          end;
        if (qrcupom_forma.FieldByName('forma').AsString = StRecCrediario) or (qrcupom_forma.FieldByName('forma').AsString = StRecConvenio) then
          with Pagto.Add do begin
            cMP := mpCreditoLoja;
            vMP := qrcupom_forma.fieldbyname('valor').AsFloat;
          end;
        qrcupom_forma.Next;
      end;
      cMsg := 'Obrigado Volte Sempre!!!';
      if frmModulo.qrfilial.FieldByName('optante_simples').AsString = 'S' then
        cMsg := cMsg + '  ' + ' Optante pelo simples nacional lei 123/2006';
      InfAdic.infCpl := cMsg;
      ACBrSAT1.EnviarDadosVenda; //(mSalvaXML.Lines.Text);
      if ACBrSAT1.Resposta.codigoDeRetorno = 6000 then begin
        PrepararImpressao;
        ACBrSAT1.ImprimirExtrato;
        Query1.SQL.Clear;
        Query1.SQL.Add('insert into sat (data, hora, numero, codcliente, ambiente, cancelado, chave, xml_envio, xml_cancelamento, alterado, cupom, total)');
        Query1.SQL.Add('values');
        Query1.SQL.Add('(:data, :hora, :numero, :codcliente, :ambiente, :cancelado, :chave, :xml_envio, :xml_cancelamento, :alterado, :cupom, :total)');
        Query1.ParamByName('data').AsDate := ACBrSAT1.CFe.ide.dEmi;
        Query1.ParamByName('hora').AsString := FormatDateTime('HH:MM:SS', ACBrSAT1.CFe.ide.hEmi);
        Query1.ParamByName('numero').AsInteger := ACBrSAT1.CFe.ide.nCFe;
        Query1.ParamByName('codcliente').AsString := qrCupom.FieldByName('COD_CLIENTE').AsString;
        Query1.ParamByName('ambiente').AsInteger := StrToInt(TpAmbToStr(ACBrSAT1.CFe.ide.tpAmb));
        Query1.ParamByName('chave').AsString := ACBrSAT1.CFe.infCFe.ID;
        Query1.ParamByName('xml_envio').AsString := ACBrSAT1.CFe.AsXMLString;
        Query1.ParamByName('xml_cancelamento').Clear;
        Query1.ParamByName('cancelado').AsString := 'N';
        Query1.ParamByName('alterado').AsString := 'N';
        Query1.ParamByName('cupom').AsString := sNumero_Venda;
        Query1.ParamByName('total').AsFloat := qrCupom.FieldByName('valor_total').AsFloat;
        Query1.ExecSQL;
        Query1.Close;
        Query1.SQL.Clear;
        Query1.SQL.Add('select * from cupom ');
        Query1.SQL.Add('where codigo = ' + QuotedStr(Cupom));
        Query1.Open;
        if not Query1.IsEmpty then begin
          Query1.Edit;
          Query1.FieldByName('sat').AsInteger := 1;
          Query1.FieldByName('numero_sat').AsInteger := ACBrSAT1.CFe.ide.nCFe;
          Query1.FieldByName('gerou_sat').AsString := 'S';
          Query1.Post;
        end;
      end else begin
        Query1.Close;
        Query1.SQL.Clear;
        Query1.SQL.Add('select * from cupom ');
        Query1.SQL.Add('where codigo = ' + QuotedStr(qrCupom.FieldByName('codigo').AsString));
        Query1.Open;
        if not Query1.IsEmpty then begin
          Query1.Edit;
          Query1.FieldByName('sat').AsInteger := 0;
          Query1.FieldByName('numero_sat').Clear;
          Query1.FieldByName('gerou_sat').AsString := 'E';
          Query1.Post;
          Application.MessageBox(PWideChar('Ocorreu um erro no envio do SAT:' + #13 + #13 + 'Erro: ' + IntToStr(ACBrSAT1.Resposta.codigoDeRetorno) + ' - ' + ACBrSAT1.Resposta.RetornoStr), 'Atenção!', MB_ICONERROR);
        end;
      end;
    end;
    Result := True
  except
    on e: Exception do begin
      Result := False;
      Application.MessageBox(PWideChar('Ocorre um erro ao tentar enviar o SAT:' + #13 + #13 + e.Message), 'Atenção!', MB_ICONINFORMATION);
    end;
  end;
end;

// -------------------------------------------------------------------------- //
// Funcao de busca de produtos

function TfrmVenda.Localizar_Produto(referencia: string): Boolean;
var
  bBusca_codigo: Boolean; // variavel de para ativar ou nao a busca pelo campo codigo
  iPosicao: Integer;
  Tentativas: Integer;
begin
  try
    // limpar a variaveis de retorno
    sProd_nome := '';
    sProd_barra := '';
    sProd_unidade := '';
    sProd_CST := '';
    iProd_codigo := -1;
    rProd_aliquota := -1;
    rProd_Estoque := 0;
    rProd_preco := 0;
    rProd_qtde := 1;
    rProd_total := 0;
    sProd_Tamanho := '';
    sProd_Cor := '';

    // verificar se foi digitado a quantidade no campo de busca do produto utilizando os
    // caracteres "X" ou "*"

    if (Pos('X', AnsiUpperCase(referencia)) > 0) or (Pos('*', AnsiUpperCase(referencia)) > 0) then begin
      iPosicao := Pos('X', AnsiUpperCase(referencia));
      if iPosicao = 0 then
        iPosicao := Pos('*', AnsiUpperCase(referencia));
      try
        // alimenta a varivel de qtde
        rProd_qtde := StrToFloat(Copy(referencia, 1, iPosicao - 1));
        // copia apenas a parte que contem a informacao da busca do produto
        referencia := Copy(referencia, iPosicao + 1, 99);
      except
        // retornou erro, zera a qtde e deixa a referencia como estah.
        rProd_qtde := 1;
      end;
    end;

    // verificar ha possibilidade do texto ser um numero inteiro ou
    // nao ser um produto pesado em balanca --> iniciado por 2
    if Length(referencia) < 8 then begin
      // verificar se o campo referencia eh um numero inteiro valido
      try
        StrToInt(referencia);
        bBusca_codigo := True;
      except
        on EConvertError do
          bBusca_codigo := False;
      end;
      if bBusca_codigo then begin
        // comando SQL para filtrar o produto pelo codigo de barras
        query.close;
        query.sql.clear;
        query.sql.add('select * from ESTOQUE');
        query.sql.add('where cod_barra = ''' + referencia + '''');
        query.Open;
        if query.recordcount > 0 then begin
          // econtrou o registro pelo codigo de barras
          result := True;
        end
        else begin
          // nao achou pelo codigo de barras, procurar pelo codigo
          try
            query.close;
            query.sql.clear;
            query.sql.add('select * from ESTOQUE');
            query.sql.add('where codigo = ' + referencia);
            query.open;
            if query.RecordCount > 0 then begin
              // encontrou o registro pelo codigo
              result := True;
            end
            else begin
              // nao encontrou nenhum produto
              result := False;
            end;
          except
            result := False;
          end;
        end;
      end
      else begin
        // BUSCAR PELO CODIGO DE BARRAS
        query.close;
        query.sql.clear;
        query.sql.add('select * from ESTOQUE');
        query.sql.add('where cod_barra = ''' + referencia + '''');
        query.Open;

        if query.recordcount > 0 then begin
          // econtrou o registro pelo codigo de barras
          result := True;
        end
        else begin
          // nao achou pelo codigo de barras, procurar pelo nome
          query.close;
          query.sql.clear;
          query.sql.add('select * from ESTOQUE');
          query.sql.add('where upper(REFERENCIA) LIKE ''%' + AnsiUpperCase(referencia) + '%''');
          query.sql.add('order by REFERENCIA, COR, TAMANHO');
          query.open;

          if query.RecordCount > 0 then begin
            Result := True;
          end
          else begin
            // nao achou pelo codigo de barras, procurar pelo nome
            query.close;
            query.sql.clear;
            query.sql.add('select * from ESTOQUE');
            query.sql.add('where upper(nome) like ''%' + AnsiUpperCase(referencia) + '%''');
            query.sql.add('order by nome');
            query.open;

            if query.RecordCount > 0 then begin
              if query.recordcount > 1 then begin
                iProd_codigo := 0;
                // encontrou varios registros
                if iPesquisa_produto = 1 then begin
                  frmProduto_consulta := TfrmProduto_consulta.create(Self);
                  frmProduto_consulta.ed_barra.text := ed_barra.text;
                  frmProduto_consulta.showmodal;
                  if iProd_codigo > 0 then begin
                    query.Close;
                    query.sql.Clear;
                    query.sql.add('select * from estoque where codigo = ' + IntToStr(iProd_codigo));
                    query.open;
                    result := True;
                  end
                  else
                    result := False;
                end
                else
                  result := True;
              end
              else
                // encontrou o registro pelo nome
                result := True;
            end
            else begin
              // nao encontrou nenhum produto
              result := False;
            end;
          end;
        end;
      end;
    end
    else begin
      // verificar se o produto é pesado em balanca
      if (Copy(referencia, 1, 1) = '2') and (Length(referencia) <= 13) then begin
        try //Exemplo de codigo na etiqueta: 2000010002550 -> Codigo = 00001 Valor = 000255 = 2,55
          query.close;
          query.sql.clear;
          query.sql.add('select * from ESTOQUE');
           // extrair o codigo do produto na etiqueta de codigo de barras conf. o tamanho
           // do codigo da balanca configurado previamente
          query.sql.add('where codigo = ''' + Zerar(Copy(referencia, 2, iTamanho_codigo_balanca), 6) + '''');
          query.open;
          if query.RecordCount > 0 then begin
             // encontrou um registro e estah lancando o valor contido na etiqueta de cod.barras
            rProd_total := StrToFloat(Copy(referencia, 8, 5)) / 100;
            result := True;
          end
          else
             // nao encontrou nenhum registro
            result := False;
        except
           // retornou erro ao tentar buscar pelo codigo do produto pesasdo
          result := False;
        end;
      end
      else if (Copy(referencia, 1, 1) = 'P') and (Length(referencia) = 14) then begin
        query.close;
        query.sql.clear;
        query.sql.add('select * from ESTOQUE');
        query.sql.add('where cod_barra = ''' + Copy(referencia, 2, 13) + '''');
        query.Open;
        if query.recordcount > 0 then begin
          result := True;
          bMudouProvisorio := True;
          bMuda_unitario := True;
        end
        else
          result := False;
      end
      else begin
        // nao achou pelo codigo de barras, procurar pelo nome
        query.close;
        query.sql.clear;
        query.sql.add('select * from ESTOQUE');
        query.sql.add('where upper(REFERENCIA) CONTAINING ''' + AnsiUpperCase(referencia) + '''');
        query.sql.add('order by REFERENCIA, COR, TAMANHO');
        query.open;

        if query.RecordCount > 0 then begin
          // nao encontrou nenhum produto
          result := False;
        end
        else begin
          // busca normal pelo codigo de barras e pelo nome do produto
          // comando SQL para filtrar o produto pelo codigo de barras
          query.close;
          query.sql.clear;
          query.sql.add('select * from ESTOQUE');
          query.sql.add('where cod_barra = ''' + referencia + '''');
          query.Open;

          if query.recordcount > 0 then begin
            // econtrou o registro pelo codigo de barras
            result := True;
          end
          else begin
            // nao achou pelo codigo de barras, procurar pelo nome
            query.close;
            query.sql.clear;
            query.sql.add('select * from ESTOQUE');
            query.sql.add('where upper(nome) like ''%' + referencia + '%''');
            query.sql.add('order by nome');
            query.open;
            if query.RecordCount > 0 then begin
              // encontrou o registro pelo nome
              result := True;
            end
            else begin
              // nao encontrou nenhum produto
              result := False;
            end;
          end;
        end;
      end;
    end;
  finally
    if result then begin
      // encontrou o produto, alimentar as variaveis de retorno
      sProd_nome := query.fieldbyname('nome').asstring;
      sProd_barra := query.fieldbyname('cod_barra').asstring;
      sProd_unidade := query.fieldbyname('unidade').asstring;
      iProd_codigo := query.fieldbyname('codigo').asinteger;
      sProd_CST := query.fieldbyname('cst').asstring;
      rProd_aliquota := query.fieldbyname('aliquota').asfloat;
      rProd_Estoque := query.fieldbyname('estoque').asfloat;
      rProd_preco := frmModulo.PrecoDeVenda(query.fieldbyname('codigo').asinteger, rProd_qtde);
      rProd_desconto_maximo := query.fieldbyname('desconto_maximo').asfloat;
      rProd_acrescimo_maximo := query.fieldbyname('acrecimo_maximo').asfloat;

      rProd_desconto := 0;
      rProd_acrescimo := 0;
      sProd_Tamanho := query.FieldByName('TAMANHO').AsString;
      sProd_Cor := query.FieldByName('COR').AsString;

      if rProd_total > 0 then begin
        // o valor total foi achado caso o produto foi pesado
        // encontrar a qtde do produto
        rProd_qtde := rProd_total / rProd_preco;
      end;

      rProd_total := RoundTo(rProd_qtde * rProd_preco, -2);
    end;
  end;
end;

procedure TfrmVenda.LongPress;
var
  Produto: Integer;
begin
  if Controle = nil then
    Exit;
  Produto := Controle.Tag;
  if Produto > 0 then begin
    if Pos('Touch_Produto', Controle.Name) > 0 then begin
      if bNao_utiliza_extra then begin
        sObsProduto.Lines.Clear;
        RetTexto(sObsProduto, 'Cancelar (F3)', 'Confirmar (F2)', 'Informações Extras do Produto!');
        vExtra.Texto := sObsProduto.Lines.Text;
        vExtra.valor := 0;
      end
      else
        vExtra := RetornaAdcional(Zerar(IntToStr(Produto), 6));
      if Application.MessageBox('Lançar o produto no cupom?', 'Atenção!', MB_ICONQUESTION + MB_YESNO) = mrYes then begin
        if not bVenda then begin
          if not Abre_Venda then begin
            bLanca_pre_venda := False;
            bLanca_OS := False;
            bLanca_Mesa := False;
            bLanca_Abastecimento := False;
            Imprime_display('ERRO AO ABRIR O CUPOM!', clRed, tiErro);
            Exit;
          end;
        end;
        iPesquisa_produto := 1;


        if frmVenda.Localizar_Produto(Zerar(IntToStr(Produto), 6)) then begin
          rProd_preco := rProd_preco + vExtra.valor;
          if (query.fieldbyname('usa_balanca').AsInteger = 1) and (bPesagemAutomatica) then begin
            ed_qtde.Value := RetornaPesoBalanca;
            rProd_qtde := ed_qtde.Value;
            if ed_qtde.Value = 0 then
              Exit;
          end
          else begin
            if ed_qtde.value > 1 then
              rProd_qtde := ed_qtde.Value
            else if ed_qtde.value <= 0 then
              ed_qtde.Value := rProd_qtde;
          end;
          ed_unitario.Value := rProd_preco;
          rProd_total := Truncar_Valor(rProd_qtde * rProd_preco);
          Registra_Item;
        end;
      end;
    end;
  end;
end;

// Cancela cupom aberto

procedure TfrmVenda.Cancela_cupom_aberto();
var
  i: Integer;
  scod_cupom: string;
begin
  Imprime_display('Aguarde! Cancelando cupom ' + sNumero_Cupom + '!', clYellow, tiAlerta);

  if not sNumero_Cupom.Equals('') then begin

  query.SQL.Clear;
  query.SQL.Add('INSERT INTO CUPOM_ABERTO_CANCELADO SELECT * FROM CUPOM_TEMP WHERE NUMERO = ' + sNumero_Cupom );
  query.ExecSQL;
  query1.sql.clear;
  query1.sql.add('SELECT * FROM CUPOM_ITEM_TEMP where COD_CUPOM = ' + sNumero_Cupom);
  query1.ExecSQL;

while not Query1.Eof do
begin

    query.SQL.Clear;

    QUERY.SQL.Add('insert into CUPOM_ITEM_CANCELADO (CODIGO, COD_CUPOM, OPERADOR, DATA, HORA, PDV, ITEM, COD_PRODUTO, UNIDADE, QTDE, VALOR_UNITARIO, VALOR_SUBTOTAL, VALOR_DESCONTO, VALOR_ACRESCIMO, VALOR_TOTAL, CANCELADO,COMPLEMENTO');
                      query.SQL.Add(') values (');
                      query.SQL.Add(':CODIGO, :COD_CUPOM, :OPERADOR, CURRENT_DATE, CURRENT_TIME, :PDV, :ITEM, :COD_PRODUTO, :UNIDADE, :QTDE, :VALOR_UNITARIO, :VALOR_SUBTOTAL, :VALOR_DESCONTO, :VALOR_ACRESCIMO, :VALOR_TOTAL, :CANCELADO, :COMPLEMENTO');
                      query.SQL.Add(')');
                      query.Params.ParamByName('CODIGO').AsString := frmmodulo.qrConfigPDV.FieldByName('numcaixa').AsInteger.ToString + '_' + query1.FieldByName('CODIGO').AsString;
                      query.Params.ParamByName('COD_CUPOM').AsString := query1.FieldByName('COD_CUPOM').AsString;
                      query.Params.ParamByName('OPERADOR').AsFloat := icodigo_Usuario;
                      query.Params.ParamByName('PDV').AsString := frmmodulo.qrConfigPDV.FieldByName('numcaixa').AsString;
                      query.Params.ParamByName('ITEM').AsInteger := query1.FieldByName('ITEM').AsInteger;
                      query.Params.ParamByName('COD_PRODUTO').AsInteger := query1.FieldByName('COD_PRODUTO').AsInteger;
                      query.Params.ParamByName('UNIDADE').AsString := query1.FieldByName('UNIDADE').AsString;
                      query.Params.ParamByName('QTDE').AsFloat := query1.FieldByName('QTDE').AsFloat;
                      query.Params.ParamByName('VALOR_UNITARIO').AsFloat := query1.FieldByName('VALOR_UNITARIO').AsFloat;
                      query.Params.ParamByName('VALOR_SUBTOTAL').AsFloat := query1.FieldByName('VALOR_SUBTOTAL').AsFloat;
                      query.Params.ParamByName('VALOR_DESCONTO').AsFloat := query1.FieldByName('VALOR_DESCONTO').AsFloat;
                      query.Params.ParamByName('VALOR_ACRESCIMO').AsFloat := query1.FieldByName('VALOR_ACRESCIMO').AsFloat;
                      query.Params.ParamByName('VALOR_TOTAL').AsFloat := query1.FieldByName('VALOR_TOTAL').AsFloat;
                      query.Params.ParamByName('CANCELADO').AsInteger := query1.FieldByName('CANCELADO').AsInteger;
                      query.Params.ParamByName('COMPLEMENTO').AsString := 'CUPOM CANCELADO POR INTEIRO';
    //query.SQL.Add('INSERT INTO CUPOM_ITEM_CANCELADO SELECT * FROM CUPOM_ITEM_TEMP WHERE CUPOM_ITEM_TEMP.ITEM = ' + IntToStr(StrToInt(sItem)));
    try
    query.ExecSQL;
    except
      on E: Exception do begin

    end;
    end;
    Query1.Next;
end;
  end;


  if (bBusca_foto_produto) and not (AtivaTouch) then
    img_produto.Picture := nil;

  if (bLanca_pre_venda) or (bLanca_OS) or (bLanca_Abastecimento) then begin
    // venda foi feito por uma pre-venda
    //finalizar o cupom e depois cancelar
    // limpar o form de venda
    bVenda := False;
    Limpa_controles;
  end
  else begin
    // Excluir os arquivos temporarios
    frmModulo.spCupom_Temp_delete.prepare;
    frmModulo.spCupom_Temp_delete.execute;
    bVenda := False;
    Limpa_controles;
  end;

  if bVenda then
    gravaINI(sConfiguracoes, 'PDV', 'Aberto', 'SIM')
  else
    gravaINI(sConfiguracoes, 'PDV', 'Aberto', 'NAO');

end;

procedure TfrmVenda.Cancela_Item(sItem: string; Acao: string);
begin

  Application.ProcessMessages;
  query.SQL.Clear;
  if Acao = 'C' then begin
    Dec(iTotal_Itens);
    rTotal_Venda := rTotal_Venda - frmModulo.qrItensVALOR_TOTAL.AsFloat;
    query.SQL.Add('update CUPOM_ITEM_TEMP set cancelado = 1 where item = ' + IntToStr(StrToInt(sItem)));
  end
  else begin
    Dec(iTotal_Itens);
    rTotal_Venda := rTotal_Venda + frmModulo.qrItensVALOR_TOTAL.AsFloat;
    query.SQL.Add('update CUPOM_ITEM_TEMP set cancelado = 0 where item = ' + IntToStr(StrToInt(sItem)));
  end;
  query.ExecSQL;
  query1.sql.clear;
  query1.sql.add('SELECT * FROM CUPOM_ITEM_TEMP where item = ' + inttoStr(StrtoInt(sItem)));
  query1.ExecSQL;

  query.SQL.Clear;
  QUERY.SQL.Add('insert into CUPOM_ITEM_CANCELADO (CODIGO, COD_CUPOM, OPERADOR, DATA, HORA, PDV, ITEM, COD_PRODUTO, UNIDADE, QTDE, VALOR_UNITARIO, VALOR_SUBTOTAL, VALOR_DESCONTO, VALOR_ACRESCIMO, VALOR_TOTAL, CANCELADO,COMPLEMENTO');
                    query.SQL.Add(') values (');
                    query.SQL.Add(':CODIGO, :COD_CUPOM, :OPERADOR, CURRENT_DATE, CURRENT_TIME, :PDV, :ITEM, :COD_PRODUTO, :UNIDADE, :QTDE, :VALOR_UNITARIO, :VALOR_SUBTOTAL, :VALOR_DESCONTO, :VALOR_ACRESCIMO, :VALOR_TOTAL, :CANCELADO, :COMPLEMENTO');
                    query.SQL.Add(')');
                    query.Params.ParamByName('CODIGO').AsString := frmmodulo.qrConfigPDV.FieldByName('numcaixa').AsInteger.ToString + '_' + query1.FieldByName('CODIGO').AsString;
                    query.Params.ParamByName('COD_CUPOM').AsString := query1.FieldByName('COD_CUPOM').AsString;
                    query.Params.ParamByName('OPERADOR').AsFloat := icodigo_Usuario;
                    query.Params.ParamByName('PDV').AsString := frmmodulo.qrConfigPDV.FieldByName('numcaixa').AsInteger.ToString;
                    query.Params.ParamByName('ITEM').AsInteger := query1.FieldByName('ITEM').AsInteger;
                    query.Params.ParamByName('COD_PRODUTO').AsInteger := query1.FieldByName('COD_PRODUTO').AsInteger;
                    query.Params.ParamByName('UNIDADE').AsString := query1.FieldByName('UNIDADE').AsString;
                    query.Params.ParamByName('QTDE').AsFloat := query1.FieldByName('QTDE').AsFloat;
                    query.Params.ParamByName('VALOR_UNITARIO').AsFloat := query1.FieldByName('VALOR_UNITARIO').AsFloat;
                    query.Params.ParamByName('VALOR_SUBTOTAL').AsFloat := query1.FieldByName('VALOR_SUBTOTAL').AsFloat;
                    query.Params.ParamByName('VALOR_DESCONTO').AsFloat := query1.FieldByName('VALOR_DESCONTO').AsFloat;
                    query.Params.ParamByName('VALOR_ACRESCIMO').AsFloat := query1.FieldByName('VALOR_ACRESCIMO').AsFloat;
                    query.Params.ParamByName('VALOR_TOTAL').AsFloat := query1.FieldByName('VALOR_TOTAL').AsFloat;
                    query.Params.ParamByName('CANCELADO').AsInteger := query1.FieldByName('CANCELADO').AsInteger;
                    query.Params.ParamByName('COMPLEMENTO').AsString := 'ITEM CANCELADO';
  //query.SQL.Add('INSERT INTO CUPOM_ITEM_CANCELADO SELECT * FROM CUPOM_ITEM_TEMP WHERE CUPOM_ITEM_TEMP.ITEM = ' + IntToStr(StrToInt(sItem)));
  query.ExecSQL;



  with frmModulo do begin
    qrItens.DisableControls;
    qrItens.Close;
    qrItens.Open;
    qrItens.Last;
    qrItens.EnableControls;
  end;

   qrCupomNF.Close;
   qrCupomNF.Params.Items[0].Value := frmModulo.qrItensITEM.AsString;
   qrCupomNF.Open;
   qrCupomNF.First;




  // atualizar os labels de totais e itens
  lb_item.Caption := IntToStr(iTotal_Itens);
  lb_total.Caption := 'R$ ' + FormatFloat('###,###,##0.00', rTotal_Venda);

  if Acao = 'C' then
    Imprime_display('ITEM ' + Zerar(frmModulo.qrItensITEM.AsString, 4) + ' CANCELADO!', clWhite, tiOk)

  else
    Imprime_display('ITEM ' + Zerar(frmModulo.qrItensITEM.AsString, 4) + ' DESCANCELADO!', clWhite, tiOk);
  Sleep(1000);
  Imprime_display('INFORME O PRODUTO...', clWhite, tiLivre);
  if not AtivaTouch then
    ed_barra.SETFOCUS;
end;

// -------------------------------------------------------------------------- //
// Registrar item no Grid

procedure TfrmVenda.Registra_Item;
var
  Codigo, TExtoExtra, sAliquota: string;
  i: Integer;
  Resto, Qtde:Double;
begin
  sAliquota := '';

  // verificar se o item tem acrescimo
  // lancar item no banco de dados temporario
  Codigo := codifica_item(iItem);
  frmModulo.spCupom_item_temp.Close;
  frmModulo.spCupom_item_temp.ParamByName('Codigo').AsString := Codigo;
  frmModulo.spCupom_item_temp.parambyname('cod_cupom').asstring := sNumero_Cupom;
  frmModulo.spCupom_item_temp.parambyname('item').asinteger := iItem;
  frmModulo.spCupom_item_temp.parambyname('unidade').asstring := sProd_unidade;
  frmModulo.spCupom_Item_temp.parambyname('qtde').asfloat := rProd_qtde;
  if strPizza.ProdutoPrincipal.Valor > 0 then begin
    frmModulo.spCupom_item_temp.ParamByName('cod_produto').asinteger := StrToInt(strPizza.ProdutoPrincipal.Codigo);
    frmModulo.spCupom_Item_temp.parambyname('valor_unitario').asfloat := strPizza.ProdutoPrincipal.Valor;
    frmModulo.spCupom_Item_temp.parambyname('valor_subtotal').asfloat := strPizza.ProdutoPrincipal.Valor;
    frmModulo.spCupom_Item_temp.parambyname('valor_desconto').asfloat := 0;
    frmModulo.spCupom_Item_temp.parambyname('valor_acrescimo').asfloat := 0;
    frmModulo.spCupom_Item_temp.parambyname('valor_total').asfloat := strPizza.ProdutoPrincipal.Valor;
    frmModulo.spCupom_Item_temp.parambyname('complemento').AsString := strPizza.Pizza;
    rProd_total := strPizza.ProdutoPrincipal.Valor; 
  end else begin
    frmModulo.spCupom_item_temp.ParamByName('cod_produto').asinteger := iProd_codigo;
    frmModulo.spCupom_Item_temp.parambyname('valor_unitario').asfloat := rProd_preco + rProd_desconto - rProd_acrescimo;
    frmModulo.spCupom_Item_temp.parambyname('valor_subtotal').asfloat := rProd_qtde * (rProd_preco + rProd_desconto - rProd_acrescimo);
    frmModulo.spCupom_Item_temp.parambyname('valor_desconto').asfloat := rProd_desconto;
    frmModulo.spCupom_Item_temp.parambyname('valor_acrescimo').asfloat := rProd_acrescimo;
    frmModulo.spCupom_Item_temp.parambyname('valor_total').asfloat := rProd_qtde * rProd_preco;
    frmModulo.spCupom_Item_temp.parambyname('complemento').Clear;
  end;
  if Trim(sProd_Compl_Pizza) <> '' then
    frmModulo.spCupom_Item_temp.parambyname('complemento').AsString := Trim(sProd_Compl_Pizza);

  frmModulo.spCupom_item_temp.parambyname('cst').asstring := sProd_CST;
  frmModulo.spCupom_item_temp.parambyname('aliquota').asfloat := rProd_aliquota;
  frmModulo.spCupom_item_temp.parambyname('cancelado').asinteger := 0;
  frmModulo.spCupom_Item_temp.parambyname('tamanho').AsString := sProd_Tamanho;
  frmModulo.spCupom_Item_temp.parambyname('cor').AsString := sProd_Cor;
  frmModulo.spCupom_item_temp.ParamByName('cod_totalizador').asstring := '';
  qrCombo.Close;
  qrCombo.Params.Items[0].Value := iProd_codigo;
  qrCombo.Open;
  TExtoExtra := '';
  if qrComboCOMBO.AsString = 'S' then begin
    qrProdComb.Close;
    qrProdComb.Params.Items[0].Value := Zerar(IntToStr(iProd_codigo),6);
    qrProdComb.Open;
    if not qrProdComb.IsEmpty then begin
      qrProdComb.First;
      while not qrProdComb.Eof do begin
        TExtoExtra := TExtoExtra + qrProdCombQTDE.AsString + ' => ' + qrProdCombPRODUTO.AsString + #13;
        qrProdComb.Next;
      end;
    end;
    if vExtra.Texto <> '' then
      TExtoExtra := TExtoExtra + vExtra.Texto;
  end else if strPizza.Valor > 0 then begin
    TExtoExtra := strPizza.Sabores;
  end else begin
    if vExtra.Texto <> '' then
      TExtoExtra := TExtoExtra + vExtra.Texto;
  end;

  frmModulo.spCupom_item_temp.ParamByName('extra').asstring := TExtoExtra;

  frmModulo.spCupom_item_temp.Prepare;
  frmModulo.spCupom_item_temp.Execute;

  if (cdsLancaProdutos.Active) and (cdsLancaProdutos.RecordCount > 0) then begin
    cdsLancaProdutos.First;
    while not cdsLancaProdutos.Eof do begin
      cdsLancaProdutos.Edit;
      cdsLancaProdutosCOD_ITEM.AsString := Codigo;
      cdsLancaProdutos.Post;
      cdsLancaProdutos.Next;
    end;
  end;
  if Length(strPizza.Produtos) > 0 then begin
    Qtde := RoundTo(1/Length(strPizza.Produtos),-2);
    Resto := RoundTo(1-(Qtde*Length(strPizza.Produtos)),-2);
    for I := 0 to Length(strPizza.Produtos) -1 do begin
      cdsLancaProdutos.Insert;
      cdsLancaProdutosCOD_ITEM.AsString := Codigo;
      cdsLancaProdutosCODPRO.AsString := strPizza.Produtos[i];
      if (i = Length(strPizza.Produtos) -1) and (Resto > 0) then
        cdsLancaProdutosQTDE.AsFloat := Qtde + Resto
      else
        cdsLancaProdutosQTDE.AsFloat := Qtde;
      cdsLancaProdutos.Post;
    end;
  end;




  if not AtivaTouch then
    ed_barra.SetFocus;

  // acumluar o item nas variaveis de totalizacao
  rTotal_Desconto := rTotal_Desconto + rProd_desconto;
  rTotal_Acrescimo := rTotal_Acrescimo + rProd_acrescimo;

  rTotal_Venda := rTotal_Venda + rProd_total;
  Inc(iTotal_Itens);
  Inc(iItem);
  // lancar no dislpay o produto
  Imprime_display(sProd_nome, clWhite, tiOk);
  // atualizar os labels de totais e itens
  lb_item.Caption := IntToStr(iTotal_Itens);
  lb_total.Caption := 'R$ ' + FormatFloat('###,###,##0.00', rTotal_Venda);
  ed_barra.text := '';
  rBal_peso := 0;
  vExtra.Texto := '';
  vExtra.valor := 0;
  ed_qtde.Value := 0;
  strPizza.Pizza := '';
  strPizza.Sabores := '';
  strPizza.Valor := 0;
  SetLength(strPizza.Produtos,0);
  strPizza.ProdutoPrincipal.Codigo := '';
  strPizza.ProdutoPrincipal.Valor := 0;
  sProd_Compl_Pizza := '';
end;

procedure TfrmVenda.RelCupomNFRestauranteBeforePrint(Sender: TfrxReportComponent);
begin
  if Sender is TfrxMemoView then begin
    if TfrxMemoView(Sender).Name = 'cptaxa' then
      TfrxMemoView(Sender).Text := FormatFloat('#,##0.00', rTotal_Comissao);
    if TfrxMemoView(Sender).Name = 'cpCouvert' then
      TfrxMemoView(Sender).Text := FormatFloat('#,##0.00', rTotal_Couvert);
  end;
end;

procedure TfrmVenda.RelFichaBeforePrint(Sender: TfrxReportComponent);
begin
  if Sender is TfrxMemoView then begin
    if TfrxMemoView(Sender).Name = 'lbValidador' then
      TfrxMemoView(Sender).Text := sCodigoSegurancaFicha;
  end;

end;

// -------------------------------------------------------------------------- //
// Limpar os controles para receber uma nova venda/comando

procedure TfrmVenda.Limpa_controles();
begin
  sCli_Nome := '';
  sCli_Endereco := '';
  sCli_Cidade := '';
  sCli_uf := '';
  scli_cep := '';
  sCli_CPF := '';
  sCli_Placa := '';
  sCli_Km := '';
  scli_vendedor := '';

  sConsumidor_CPF := '';
  sConsumidor_Nome := '';
  sConsumidor_Endereco := '';

  ed_barra.Text := '';
  ed_qtde.value := 0;
  ed_unitario.value := 0;
  ed_total_item.value := 0;
  lb_total.caption := 'R$ 0,00';
  lb_item.Caption := '0';
  Imprime_display('C A I X A    L I V R E', clWhite, tiLivre);
  MostraFotoProduto(False);
  MostraLogoMarca(True);
  if not AtivaTouch then
    ed_barra.setfocus;
end;

// -------------------------------------------------------------------------- //
// funcao para alimentar o display superior da tela

procedure TfrmVenda.Imprime_display(texto: string; cor_da_fonte: TColor; Imagem: Tipo_Imagem);
begin
  // armazena os dados atuais do display para enventual uso
  sTexto_anterior := lb_produto.Caption;
  clCor_anterior := lb_produto.Font.color;

  // inicia a impressao do display

  lb_produto.Caption := texto;
  lb_produto.Font.Color := cor_da_fonte;

  lb_produto.Font.Size := 28;
  Application.ProcessMessages;
   // redimensionando o tamanho do label para caber dentro do display independente do
   // tamanho do texto;
end;

// -------------------------------------------------------------------------- //

procedure TfrmVenda.Imprime_display_anterior();
begin
  Imprime_display(sTexto_anterior, clCor_anterior, TiImagem_anterior);
end;

procedure TfrmVenda.ImprimirComanda(Cupom: string);
begin
  if not CancelaIMpressaoCozinha then begin
    qrComanda.Close;
    qrComanda.Params.Items[0].Value := Cupom;
    qrComanda.Open;
    if not (bMensagem_Cupom) or not (Men_Cup_Cozinha) then begin
      cdsOBS.Close;
      cdsOBS.CreateDataSet;
    end
    else begin
      if not cdsOBS.Active then begin
        cdsOBS.Close;
        cdsOBS.CreateDataSet;
        if (bMensagem_Cupom) and (Men_Cup_Simples) then begin
          cdsOBS.Append;
          cdsOBSobs.AsString := sMensagem_Cupom.Lines.Text;
          cdsOBS.Post;
        end;
      end;

    end;

    frComanda.LoadFromFile(ExtractFilePath(Application.ExeName) + 'Rel\F000006.fr3');
    frComanda.PrintOptions.ShowDialog := False;
    frComanda.PrintOptions.Printer := sImpressora_Cozinha;
    frComanda.PrepareReport;
    if bEdicaoRelatorio then begin
      frComanda.DesignReport;
      qrTmp.SQL.Clear;
      qrTmp.SQL.Add('update cupom set impresso = ' + QuotedStr('S') + ' where codigo = ' + QuotedStr(Cupom));
      qrTmp.ExecSQL;
    end
    else begin
      if bExibeCumponNFTela then begin
        frComanda.ShowPreparedReport;
        qrTmp.SQL.Clear;
        qrTmp.SQL.Add('update cupom set impresso = ' + QuotedStr('S') + ' where codigo = ' + QuotedStr(Cupom));
        qrTmp.ExecSQL;
      end
      else if frComanda.Print then begin
        qrTmp.SQL.Clear;
        qrTmp.SQL.Add('update cupom set impresso = ' + QuotedStr('S') + ' where codigo = ' + QuotedStr(Cupom));
        qrTmp.ExecSQL;
      end;
    end;
  end;
end;

procedure TfrmVenda.ImprimirCupomNaoFiscal(Cupom: string);
var
  i: Integer;
  Acao: string;
  Prestacao, Resto: Double;
begin
  if bAtivaImpFicha then begin
    RelFicha.LoadFromFile(ExtractFilePath(Application.ExeName) + 'Rel\F000007.fr3');
    if sImpressora_Ficha <> '' then
      RelFicha.PrintOptions.Printer := sImpressora_Ficha;
    qrCupomNF.Close;
    qrCupomNF.Params.Items[0].Value := Cupom;
    qrCupomNF.Open;
    qrCupomNF.First;
    while not qrCupomNF.Eof do begin
      for i := 1 to qrCupomNFQTDE.AsInteger do begin
        if bEdicaoRelatorio then
          RelFicha.DesignReport
        else
          RelFicha.ShowReport;
      end;
      qrCupomNF.Next;
    end;
  end
  else begin
    if (rTotal_Couvert + rTotal_Comissao) > 0 then
      RelCupomNFRestaurante.LoadFromFile(ExtractFilePath(Application.ExeName) + 'Rel\F000005.fr3')
    else
      RelCupomNF.LoadFromFile(ExtractFilePath(Application.ExeName) + 'Rel\F000004.fr3');
    if sImpressora_Venda_Simples <> '' then
      if (rTotal_Couvert + rTotal_Comissao) > 0 then
        RelCupomNFRestaurante.PrintOptions.Printer := sImpressora_Venda_Simples
      else
        RelCupomNF.PrintOptions.Printer := sImpressora_Venda_Simples;
    qrCupomNF.Close;
    qrCupomNF.Params.Items[0].Value := Cupom;
    qrCupomNF.Open;
    cdsOBS.Close;
    cdsOBS.CreateDataSet;
    if (bMensagem_Cupom) and (Men_Cup_Simples) then begin
      cdsOBS.Append;
      cdsOBSobs.AsString := sMensagem_Cupom.Lines.Text;
      cdsOBS.Post;
    end;
    qrImpForma.Close;
    qrImpForma.Params.Items[0].Value := Cupom;
    qrImpForma.Open;
    if bEdicaoRelatorio then begin
      if (rTotal_Couvert + rTotal_Comissao) > 0 then
        RelCupomNFRestaurante.DesignReport
      else
        RelCupomNF.DesignReport;
      Acao := 'S';
    end
    else begin
      if TipoImprimeCupom = 'P' then begin
        Acao := 'N';
        if Application.MessageBox('Deseja Imprimir o Cupom?', 'Atenção!', MB_ICONQUESTION + MB_YESNO) = IDYES then begin
          Acao := 'S';
          if bExibeCumponNFTela then
            if (rTotal_Couvert + rTotal_Comissao) > 0 then
              RelCupomNFRestaurante.ShowReport
            else
              RelCupomNF.ShowReport
          else if (rTotal_Couvert + rTotal_Comissao) > 0 then begin
            RelCupomNFRestaurante.PrepareReport(True);
            RelCupomNFRestaurante.Print
          end
          else begin
            RelCupomNF.PrepareReport(True);
            RelCupomNF.Print;
          end;
        end;
      end
      else begin
        Acao := 'S';
        if bExibeCumponNFTela then
          if (rTotal_Couvert + rTotal_Comissao) > 0 then
            RelCupomNFRestaurante.ShowReport
          else
            RelCupomNF.ShowReport
        else if (rTotal_Couvert + rTotal_Comissao) > 0 then begin
          RelCupomNFRestaurante.PrepareReport(True);
          RelCupomNFRestaurante.Print
        end
        else begin
          RelCupomNF.PrepareReport(True);
          RelCupomNF.Print;
        end;
      end;
    end;
    if (bCadastra_Crediario) and (rvalor_total_crediario > 0) and (iComprovente_Crediario = 1) and (Acao = 'S') then begin
      cdsParcelas.Close;
      cdsParcelas.CreateDataSet;
      Prestacao := RoundTo(rvalor_total_crediario / iCrediario_prestacao, -2);
      Resto := rvalor_total_crediario - (Prestacao * iCrediario_prestacao);

      for i := 1 to iCrediario_prestacao do begin
        cdsParcelas.Insert;
        cdsParcelasParcela.AsString := Zerar(IntToStr(i), 2);
        cdsParcelasVencimento.AsDateTime := IncMonth(dData_Sistema, i);
        if i <> iCrediario_prestacao then
          cdsParcelasValor.AsFloat := Prestacao
        else
          cdsParcelasValor.AsFloat := Prestacao + Resto;
        cdsParcelas.Post;
      end;
      if bEdicaoRelatorio then begin
        frComprovanteDebito.DesignReport;
      end
      else begin
        if bExibeCumponNFTela then
          frComprovanteDebito.ShowReport
        else begin
          frComprovanteDebito.PrepareReport(True);
          frComprovanteDebito.Print;
        end;
      end;
    end;
  end;
end;

// -------------------------------------------------------------------------- //
// Funcao para iniciar a venda

function TfrmVenda.Abre_Venda(): Boolean;
begin
  TimerTroco.Enabled := False;
  try
    frmModulo.spCupom_Temp_delete.prepare;
    frmModulo.spCupom_Temp_delete.execute;
    cdsLancaProdutos.Close;
    cdsLancaProdutos.CreateDataSet;
    bLanca_Delivery := False;
    iID_Delivery := -1;
    rTotal_TaxaEntrega := 0;
    rTotal_Couvert := 0;
    rTotal_Comissao := 0;
    rTotal_Desconto := 0;
    rTotal_Acrescimo := 0;
    bCadastra_Crediario := False;
    rvalor_total_crediario := 0;
    // Pega Menor numero cupom
    sNumero_Cupom := Zerar(FloatToStr(Max('')), 5);
    sNumero_contador_cupom := Zerar(sNumero_Cupom, 5);

    if Length(sNumero_Cupom) = 5 then
      sNumero_Cupom := '9' + sNumero_Cupom;

    if Length(sNumero_contador_cupom) = 5 then
      sNumero_contador_cupom := '9' + sNumero_contador_cupom;


    // VERIFICAR O TOTALIZADOR


    if (bLanca_pre_venda) or (bLanca_OS) or (bLanca_Abastecimento) then begin
      if bLanca_pre_venda then begin
        query.close;
        query.sql.clear;
        query.sql.add('select * from cliente where codigo = ' + IntToStr(iPre_venda_cliente));
        query.open;
      end
      else begin
        if bLanca_OS then begin
          query.close;
          query.sql.clear;
          query.sql.add('select * from cliente where codigo = ' + IntToStr(iOS_cliente));
          query.open;
        end;
      end;

      if (bLanca_OS) or (bLanca_pre_venda) then begin
        sConsumidor_CPF := query.fieldbyname('cpf').asstring;
        sConsumidor_Nome := query.fieldbyname('nome').asstring;
        sConsumidor_Endereco := query.fieldbyname('endereco').asstring + ' ' + query.fieldbyname('bairro').asstring + '  ' + query.fieldbyname('cidade').asstring + '  ' + query.fieldbyname('uf').asstring;
      end
      else begin
        sConsumidor_CPF := '';
        sConsumidor_Nome := '';
        sConsumidor_Endereco := '';
      end;
    end
    else begin
      if bIdentifica_consumidor then begin
        frmIdentifica := TfrmIdentifica.Create(Self);
        frmIdentifica.ShowModal;
        if (sConsumidor_CPF <> '') and (TipoDeCupom <> tcSimples) then
          frmPrincipal.TipoImpressora := SemImpressora;
        CorEditTotaL;
      end;
    end;

    iVendedorCodigo := 0;
    sVendedorNome := '';

    if bIdentificarVendedor = 1 then begin
      Application.CreateForm(TfrmVendedor, frmVendedor);
      try
        if frmVendedor.ShowModal = mrOk then begin
          iVendedorCodigo := StrToInt(frmModulo.Query.FieldByName('CODIGO').AsString);
          sVendedorNome := frmModulo.Query.FieldByName('NOME').AsString;
        end
        else begin
          result := False;
          Close;
          Exit;
        end
      finally
        FreeAndNil(frmVendedor);
      end;

      if bPerguntaTipoCupom then begin
      Application.CreateForm(Tfrmtipo_cupom, frmtipo_cupom);
      frmtipo_cupom.ShowModal;
      FreeAndNil(frmtipo_cupom);
      end;
    end;
    // buscar variaveis do ECF
    // numero do cupom
    sMsg := sNumero_Cupom;

    if Length(sMsg) <> 6 then begin
      Imprime_display(sMsg, clRed, tiErro);
      result := False;
      Exit;
    end
    else begin
      sNumero_Cupom := sMsg;
      sNumero_Venda := sMsg;
    end;

    sMsg := sNumero_contador_cupom;

    if Length(sMsg) <> 6 then begin
      Imprime_display(sMsg, clRed, tiErro);
      result := False;
      Exit;
    end
    else
      sNumero_contador_cupom := sMsg; //        sNumero_contador_cupom := sMsg;

    // temporario
    frmModulo.spCodigo_Global.Prepare;
    frmModulo.spCodigo_Global.Execute;

    // hora do cupom
    sMsg := TimeToStr(Now);

    try
      hHora_Cupom := StrToTime(sMsg);
    except
      Imprime_display('Hora inválida!', clRed, tiErro);
      result := False;
      Exit;
    end;

    // lancar abertura do cupom na tabela temporaria


    frmModulo.spCupom_Temp.Close;
    frmModulo.spCupom_Temp.ParamByName('numero').asstring := sNumero_Cupom;
    frmModulo.spCupom_Temp.ParamByName('ccf').asstring := sNumero_contador_cupom;
    frmModulo.spCupom_Temp.ParamByName('ecf').asstring := sCaixa;
    frmModulo.spCupom_Temp.ParamByName('data').AsDate := dData_Sistema;
    frmModulo.spCupom_Temp.ParamByName('hora').AsTime := hHora_Cupom;
    frmModulo.spCupom_temp.Prepare;
    frmModulo.spCupom_temp.Execute;

    Imprime_display('ABRINDO O CUPOM...', clWhite, tiInfo);
    // alimentar as variaveis de status
    bVenda := True;
    bTotalizado := False;
    bPago1 := False;
    bPago2 := False;
    bPago3 := False;
    bFinalizado := False;
    // alimentar as variaveis de totais
    rTotal_Venda := 0;
    iTotal_Itens := 0;
    SenhaImpressao := 0;
    lb_item.Caption := '000';
    lb_total.Caption := 'R$ 0,00';
    iItem := 1;
    if (bBusca_foto_produto) and not (AtivaTouch) then
      img_produto.Picture := nil;

    result := True;
  except
    result := False;
  end;
  gravaINI(sConfiguracoes, 'PDV', 'NumCupom', sNumero_Cupom);

  if bVenda then
    gravaINI(sConfiguracoes, 'PDV', 'Aberto', 'SIM')
  else
    gravaINI(sConfiguracoes, 'PDV', 'Aberto', 'NAO');

end;

// -------------------------------------------------------------------------- //
// Funcao para truncar o valor para nao dar diferencao no ECF

function TfrmVenda.Truncar_Valor(valor: Real): Real;
var
  txt_desconto: string;
  i: Integer;
begin
  txt_desconto := FormatFloat('#############0.00000000000', valor);
  i := Pos(',', txt_desconto);
  if i > 0 then begin
    txt_desconto := Copy(txt_desconto, 1, i - 1) + ',' + Copy(txt_desconto, i + 1, 2);
    result := StrToFloat(txt_desconto);
  end
  else
    result := valor;
end;

// -------------------------------------------------------------------------- //

procedure TfrmVenda.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  // verificar se ha cupom aberto, nao permitindo a saida do sistema
  if bVenda then begin
    Imprime_display('CUPOM ABERTO!', clYellow, tiAlerta);
    Sleep(1500);
    Imprime_display('INFORME O PRODUTO...', clWhite, tiLivre);
    if not AtivaTouch then
      ed_barra.SetFocus;
    Abort;
  end
  else begin
    if (TipoDeCupom = tcNFCE) then begin
      CheckConnect.Terminate;
      FreeAndNil(CheckConnect);
    end;
    timer_carga.Enabled := False;
    TimerTroco.Enabled := False;
    tmContigencia.Enabled := False;
  end;
  FreeAndNil(sMensagem_Cupom);
  FreeAndNil(sObsProduto);
end;

// -------------------------------------------------------------------------- //

procedure TfrmVenda.FormCreate(Sender: TObject);
begin
  sMensagem_Cupom := TMemo.Create(Self);
  sMensagem_Cupom.Visible := False;
  sMensagem_Cupom.Parent := Self;
  sMensagem_Cupom.WordWrap := False;

  sObsProduto := TMemo.Create(Self);
  sObsProduto.Visible := False;
  sObsProduto.Parent := Self;
  sObsProduto.WordWrap := False;

  vNumNFCe := 0;
  Carregando := True;
  frmModulo.LerConfiguracao;
  if (TipoDeCupom = tcSimples) then
    frmPrincipal.TipoImpressora := NaoFiscal
  else
    frmPrincipal.TipoImpressora := SemImpressora;
  CorEditTotaL;
  if EdFormatoOff = 0 then
    frmtOffLine := teContingencia
  else
    frmtOffLine := teOffLine;
  if (TipoDeCupom = tcNFCE) then begin
    CheckConnect := TThreadCheckConnection.GetInstance;
    with CheckConnect do begin
      OnStatusChange := OnInternetChange;
      Start;
    end;
  end else
    G1.Visible := False;
  if TipoDeCupom <> tcSAT then
    mmSat.Visible := False;

  // data e hora da ultima carga
  if sCarga_data <> '' then begin
    cpBarra.Panels.Items[11].Text := sCarga_data + ' às ' + scarga_hora;
  end
  else
    cpBarra.Panels.Items[11].Text := '';

  pn_tampa.visible := False;
  pn_tampa.Align := alClient;

  MostraFotoProduto(bBusca_foto_produto);
  MostraLogoMarca(bHabLogoMarca);

  //TrocaResolucao(Screen.Width,Screen.Height,1,1);
  // ajuste para se a resolucao for muito baixa

  if Screen.width <= 1024 then
   cxGrid1.width := 400;

  Carregando := False;

end;

// -------------------------------------------------------------------------- //

procedure TfrmVenda.ed_barraKeyPress(Sender: TObject; var Key: Char);
var
  bDados_balanca: Boolean;
  sx_barra: string;
  MemoryStream: TMemoryStream;
  Jpg: TJPEGImage;
  Bitmap: TBitmap;
  ext: string;

begin

  if Key = '*' then begin

   multiplicador := SplitString(ed_barra.text,'*')[0];
   Imprime_display('MULTIPLICADOR DE ' + multiplicador + ' VEZES',clYellow,tiInfo);
   ed_barra.text := '';
   Key := #0;


  end ;

  if Key = #13 then begin
    sx_barra := Trim(ed_barra.text);

    if sx_barra = '' then begin
      if not AtivaTouch then
        ed_barra.setfocus;
      Exit;
    end;

    if rBal_peso > 0 then
      bDados_balanca := True
    else
      bDados_balanca := False;

    if not bVenda then begin
      try
        // verificar o serial do ecf
        // Abrir o cupom fiscal
        // bloquear ao teclado

        if not Abre_Venda then begin
          bLanca_pre_venda := False;
          bLanca_OS := False;
          bLanca_Mesa := False;
          bLanca_Abastecimento := False;
          // Caso o comando de abertura de venda retornou false, abortar o processo;
          Imprime_display('ERRO AO ABRIR O CUPOM!', clRed, tiErro);
          Exit;
        end;
      finally
        // desbloquear o teclado
      end;
    end;

    iPesquisa_produto := 1;
    // fazer a busca do produto
    sProd_barra := ed_barra.text;



    if frmVenda.Localizar_Produto(ed_barra.Text) then begin
      if (query.fieldbyname('usa_balanca').AsInteger = 1) and (bPesagemAutomatica) then begin
        ed_qtde.Value := RetornaPesoBalanca;
        rBal_peso := ed_qtde.Value;
        if ed_qtde.Value = 0 then
          Exit;
        bDados_balanca := True;
      end;
      if not (AtivaTouch) then begin
        if bBusca_foto_produto then begin
          if not query.FieldByName('fotobd').IsNull then begin
            MostraLogoMarca(False);
            MostraFotoProduto(True);
            MemoryStream := TMemoryStream.Create;
            Jpg := TJPEGImage.Create;
            TBlobField(query.FieldByName('fotobd')).savetostream(MemoryStream);
            MemoryStream.Position := OffsetMemoryStream;
            Jpg.LoadFromStream(MemoryStream);
            img_produto.Picture.Assign(Jpg);
            FreeAndNil(MemoryStream);
          end
          else begin
            img_produto.Picture := nil;
            MostraLogoMarca(True);
            MostraFotoProduto(False);
          end;
        end
        else begin
          MostraLogoMarca(True);
          MostraFotoProduto(False);
        end;
      end;
      if query.FieldByName('pizza').AsString = 'S' then begin
        strPizza := Pizza(query.FieldByName('nome').AsString,rProd_preco);
        if strPizza.Sabores <> '' then begin
          ed_unitario.Value := rProd_preco;
          rProd_total := strPizza.Valor;
          Registra_Item;
          Exit;
        end;
      end;
      // achou o produto
      // alimentar os edits da tela
      if bDados_balanca then begin
        rProd_qtde := rBal_peso;
        // se for pesado
        rProd_total := RoundTo(rProd_qtde * rProd_preco, -2);

        ed_qtde.value := rProd_qtde;
        ed_unitario.Value := rProd_preco;
      end
      else begin
        // se for normal
        if ed_qtde.Value <= 0 then
          ed_qtde.value := rProd_qtde
        else if ed_qtde.Value > 1 then
          rProd_qtde := ed_qtde.Value;
        ed_unitario.Value := rProd_preco;

        if multiplicador <> '' then begin
        rProd_qtde := StrToFloat(multiplicador);
        ed_qtde.Value := StrToFloat(multiplicador);
        multiplicador := '1';
        end;

        rProd_total := Truncar_Valor(rProd_qtde * rProd_preco);
        ed_total_item.Value := rProd_total;
      end;
      // verificar se o sistema permite edicao dos edit's de valores
      if bMuda_qtde or bMuda_unitario or bMuda_total then begin
        Imprime_display(sProd_nome, clWhite, tiInfo);
        ed_qtde.ReadOnly := False;
        ed_unitario.ReadOnly := False;
        if bMuda_qtde then
          ed_qtde.ReadOnly := False
        else
          ed_qtde.ReadOnly := True;
        if bMuda_unitario then
          ed_unitario.ReadOnly := False
        else
          ed_unitario.ReadOnly := True;

        if bMuda_total then
          ed_total_item.ReadOnly := False
        else
          ed_total_item.ReadOnly := True;

        if bMuda_qtde then begin
          if not AtivaTouch then
            ed_qtde.setfocus;
          Exit;
        end;
        if bMuda_unitario then begin
          if not AtivaTouch then
            ed_unitario.setfocus;
          Exit;
        end;
        if bMuda_total then begin
          if not AtivaTouch then
            ed_total_item.setfocus;
          Exit;
        end;
      end
      else begin
        // verificar se existe algum valor zerado
        if (rProd_total <= 0) or (rProd_qtde <= 0) or (rProd_preco <= 0) then begin
          ed_unitario.ReadOnly := False;
          if not AtivaTouch then
            ed_unitario.SetFocus;
          Imprime_display('INFORME O PREÇO DE VENDA DO PRODUTO!', clRed, tiErro);
          Exit;
        end;
        ed_barra.text := '';

        Registra_Item;
      end;
    end
    else begin
      // nao achou o produto
      // lancar no display do produto
      Imprime_display('PRODUTO NÃO ENCONTRADO!', clRed, tiErro);
      ed_barra.SelectAll;
    end;
  end
  else if Key = #27 then begin
    Teclado.Visible := False;
  end;

end;

procedure TfrmVenda.ed_barraKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
begin

end;

// -------------------------------------------------------------------------- //

procedure TfrmVenda.CancelarItem1Click(Sender: TObject);
begin
  if bVenda then begin
    if iTotal_Itens > 0 then begin
      if bSenha_Cancel_Cupom then begin
        frmsenha_supervisor := tfrmsenha_supervisor.create(self);
        frmsenha_supervisor.CancelarItem := True;
        frmsenha_supervisor.showmodal;
        if not bSupervisor_autenticado then
          Exit;
      end;
      if btnCancelaItem.Caption = 'Descancelar Item' then
        Cancela_Item(Zerar(frmModulo.qrItensITEM.AsString, 3), 'D')
      else
        Cancela_Item(Zerar(frmModulo.qrItensITEM.AsString, 3), 'C');
    end
    else begin
      Imprime_display('NÃO EXISTEM ITENS LANÇADOS!', clRed, tiErro);
      Sleep(1000);
      Imprime_display_anterior;
    end;
  end
  else begin
    Imprime_display('Não existe cupom aberto para cancelar!', clRed, tiErro);
    Sleep(1000);
    Imprime_display_anterior;
    Exit;
  end;
end;

procedure TfrmVenda.ed_barraEnter(Sender: TObject);
begin
  if (AtivaTouch) and (ExibeTecladoVirtual) then begin
    Teclado.KeyboardType := ktQWERTZ; // 'Standard';
    Teclado.Width := 736;
    Teclado.Left := RoundDiv((Screen.Width - Teclado.Width), 2);
    Teclado.Top := RoundDiv((Screen.Height - Teclado.Height), 2);
    Teclado.Visible := True;
  end;
end;

function TfrmVenda.RetornaPesoBalanca: Double;
var
  Tentativas: Integer;
  Peso: Double;
begin
  Peso := 0;
  if frmModulo.balanca.Modelo <> balNenhum then begin
    try
      frmModulo.balanca.ativar;
      frmModulo.balanca.Ativo := True;
      Tentativas := 0;
      while Peso <= 0 do begin
        Peso := frmModulo.balanca.LePeso(iBal_time);
        Imprime_display('Coloque o produto na Balança!', clYellow, tiPeso);
        Inc(Tentativas);
        if Tentativas = 5 then begin
          if Application.MessageBox('Não foi possivel obter o peso da balança em 5 tentativas, Tentar novamente?', 'Atenção!', MB_ICONQUESTION + MB_YESNO) = mrYes then begin
            Tentativas := 0;
          end
          else begin
            Peso := 0;
            Break;
          end;
        end
      end;
      frmModulo.balanca.Ativo := False;
      Application.ProcessMessages;
    except
      on E: Exception do begin
        Application.MessageBox(PWideChar('Ocorreu um erro ao tentar conectar-se a balança: ' + #13 + E.Message), 'Atenção!', MB_ICONINFORMATION);
        frmModulo.balanca.Ativo := False;
      end;
    end;
  end
  else begin
    if bPesagemAutomatica then
      Application.MessageBox('O produto informado utiliza balança e o pdv esta configurado para Pesagem Automática e não foi configurada uma balança para capturar o peso do produto!', 'Atenção!', MB_ICONINFORMATION)
    else
      Application.MessageBox('Não foi configurada uma balança para capturar o peso do produto!', 'Atenção!', MB_ICONINFORMATION)
  end;
  Result := Peso;
end;

procedure TfrmVenda.Retornar1Click(Sender: TObject);
begin
  if not AtivaTouch then
    ed_barra.setfocus;
end;

function TfrmVenda.RetornaSenhaImpressao: Integer;
begin
  with frmModulo do begin
    qrSenhaPDV.Close;
    qrSenhaPDV.Open;
    Result := qrSenhaPDVSENHA.AsInteger;
  end;
end;

// -------------------------------------------------------------------------- //

procedure TfrmVenda.Sair1Click(Sender: TObject);
begin
  Close;
end;

// -------------------------------------------------------------------------- //

procedure TfrmVenda.CancelarCupom1Click(Sender: TObject);
var
  str: string;
begin
  if bVenda then begin
    //Caso exista cupom aberto
    if bSenha_Cancel_Cupom then begin
      frmsenha_supervisor := tfrmsenha_supervisor.create(self);
      frmsenha_supervisor.CancelarVenda := True;
      frmsenha_supervisor.showmodal;
      if not bSupervisor_autenticado then
        Exit;
    end;
    Cancela_cupom_aberto;
  end
  else begin
    Imprime_display('Não existe cupom aberto para cancelar!', clRed, tiErro);
    Sleep(1000);
    Imprime_display_anterior;
    Exit;
  end;

end;

// -------------------------------------------------------------------------- //

procedure TfrmVenda.ed_barraExit(Sender: TObject);
begin
  if (AtivaTouch) and (ExibeTecladoVirtual) then
    Teclado.Visible := False;
  // Desativa os comandos do Menu OPCOES
end;

// -------------------------------------------------------------------------- //

procedure TfrmVenda.ED_DESC_ACREEnter(Sender: TObject);
begin
end;

// -------------------------------------------------------------------------- //

procedure TfrmVenda.FecharCupom1Click(Sender: TObject);
var
  rValor_Temp: Real;
  i, icont: Integer;
  NomeArquivo, sCod_Cupom: string;
  bLanca_comprovante_crediario, bLanca_Comprovante_Prestacao: Boolean;
  sCOO_crediario, sGNF_Crediario: string;
  sCOO_Prestacao, sGNF_Prestacao, sGRG_Prestacao: string;
  sIdentificarVendedor: string;
  str: string;
  SR: TSearchRec;
  Origem, Destino: string;
  Desc, Resto, Prestacao: Double;
  PTroco: Double;
  divide: Integer;
begin
  if bVenda then begin
    if rTotal_Venda <= 0 then begin
      Imprime_display('CUPOM ESTÁ ZERADO!', clRed, tiErro);
      Sleep(1000);
      Imprime_display_anterior;
      Exit;
    end;
    img_produto.Visible := False;
    if bLanca_pre_venda then begin
      if rPre_venda_desconto > 0 then
        rTotal_Desconto := rTotal_Desconto + rPre_venda_desconto
      else if rPre_venda_acrescimo > 0 then
        rTotal_Acrescimo := rTotal_Acrescimo + rPre_venda_acrescimo;
    end;
    cdsRecebimento.Close;
    cdsRecebimento.CreateDataSet;
    rvalor_total_convenio := 0;
    rvalor_total_cheque := 0;
    rvalor_total_crediario := 0;
    vRecebimento := EfetuaRecebimento(rTotal_Venda, rTotal_Couvert, rTotal_Comissao, rTotal_Desconto, rTotal_Acrescimo);
    if vRecebimento.Confirma then begin
      rTotal_Desconto := rTotal_Desconto + vRecebimento.Desconto;
      with frmModulo do begin
        try
          qrItens.DisableControls;
          qrItens.First;
          while not qrItens.Eof do begin
            qrItens.Edit;
            Desc := RoundTo((qrItensVALOR_TOTAL.AsFloat / rTotal_Venda) * vRecebimento.Desconto, -2);
            qrItensVALOR_DESCONTO.AsFloat := RoundTo(qrItensVALOR_DESCONTO.AsFloat + Desc, -2);
            qrItensVALOR_TOTAL.AsFloat := RoundTo(qrItensVALOR_TOTAL.AsFloat - Desc, -2);
            qrItens.Post;
            qrItens.Next;
          end;
        finally
          qrItens.EnableControls;
        end;
      end;
      rTotal_Venda := rTotal_Venda - vRecebimento.Desconto;
      CancelaIMpressaoCozinha := vRecebimento.CancelaImpressaoCozinha;

      sMensagem_Cupom.Lines.Clear;
      bFinalizado := False;
      try
        if bIdentificarVendedor = 2 then begin
          Application.CreateForm(TfrmVendedor, frmVendedor);
          try
            if frmVendedor.ShowModal = mrOk then begin
              iVendedorCodigo := StrToInt(frmModulo.Query.FieldByName('CODIGO').AsString);
              sVendedorNome := frmModulo.Query.FieldByName('NOME').AsString;
            end
            else begin
              Exit;
            end
          finally
            FreeAndNil(frmVendedor);
          end;

        if bPerguntaTipoCupom then begin
         Application.CreateForm(Tfrmtipo_cupom, frmtipo_cupom);
         frmtipo_cupom.ShowModal;
         FreeAndNil(frmtipo_cupom);
        end;

        end;



        if (rvalor_total_crediario = 0) and (rvalor_total_convenio = 0) then begin
          bContinua := False;
          frmConsumidor := TfrmConsumidor.create(Self);
          if sConsumidor_CPF <> '' then begin
            frmConsumidor.ed_consumid_cpf.Text := sConsumidor_CPF;
            if sConsumidor_Nome = '' then begin
              sConsumidor_Nome := 'Consumidor Final';
              sCli_Nome := 'Consumidor Final';
            end;
            frmConsumidor.ed_consumid_nome.Text := sConsumidor_Nome;
            frmConsumidor.ed_consumid_endereco.Text := sConsumidor_Endereco;
          end
          else begin
            sConsumidor_Nome := 'Consumidor Final';
            sCli_Nome := 'Consumidor Final';
            sCli_codigo := '000001';
          end;
          try
            bContinua := True;
          finally
            FreeAndNil(frmConsumidor);
          end;
          if not bContinua then begin
            Exit;
          end;
        end;
        Application.ProcessMessages;
        (*************** F E C H A M E N T O   D O   C U P O M ********************)
        if bMensagem_Cupom then
          RetTexto(sMensagem_Cupom);
        if bIdentificarVendedor > 0 then
          sIdentificarVendedor := 'Vendedor ' + texto_justifica(FormatFloat('000', iVendedorCodigo) + ' - ' + sVendedorNome, 37, ' ', taEsquerda) + #10
        else
          sIdentificarVendedor := '';
        if UtilizaSenha then
          SenhaImpressao := RetornaSenhaImpressao
        else
          SenhaImpressao := 0;
        if (frmPrincipal.TipoImpressora = SemImpressora) and (TipoDeCupom = tcNFCE) then begin
          try
            Imprime_display('AGUARDE...  PREPARANDO NFC-E', clWhite, tiLivre);
            if not PrepararNFCE then
              Exit;
            Imprime_display('AGUARDE...  GRAVANDO NFC-E NO BANCO', clWhite, tiLivre);
            if nfce_autorizada then begin
              vgerado_nfce := 'S';
              with frmModulo do begin
                NomeArquivo := ACBRNFCe.Configuracoes.Arquivos.PathNFe;
                if ACBRNFCe.Configuracoes.Arquivos.SepararPorCNPJ then
                  NomeArquivo := NomeArquivo + '\' + edtEmitCNPJ;
                if ACBRNFCe.Configuracoes.Arquivos.SepararPorModelo then
                  NomeArquivo := NomeArquivo + '\NFCe';
                if ACBRNFCe.Configuracoes.Arquivos.SepararPorMes then
                  NomeArquivo := NomeArquivo + '\' + FormatDateTime('YYYYMM', Date);
                if ACBRNFCe.Configuracoes.Arquivos.AdicionarLiteral then
                  NomeArquivo := NomeArquivo + '\NFCe';
                NomeArquivo := NomeArquivo + '\' + Copy(ChaveNFCE, 4, 47) + '-nfe.xml';

                qrNFCEInsert.Close;
                qrNFCEInsert.Open;
                qrNFCEInsert.Insert;
                qrNFCEInsertNUMERO.asinteger := NumeroNFCe;
                qrNFCEInsertDATA.AsDateTime := Date;
                qrNFCEInsertHORA.AsString := FormatDateTime('HH:MM:SS', Time);
                qrNFCEInsertTOTAL.AsFloat := rTotal_Venda;
                qrNFCEInsertCLIENTE.AsString := sCli_Nome;
                qrNFCEInsertCHAVE.AsString := Copy(ChaveNFCE, 4, 47);
                qrNFCEInsertXML.asstring := NomeArquivo;
                qrNFCEInsertSITUACAO.AsInteger := 0;
                qrNFCEInsertTROCO.AsFloat := vRecebimento.Troco;
                if (frmModulo.ACBRNFCe.Configuracoes.Geral.FormaEmissao = frmtOffLine) or (enviadoemcontingencia=True) then begin
                  vcontingencia := 'S';
                  qrNFCEInsertCONTINGENCIA.AsString := 'S';
                  qrNFCEInsertMOTIVOCONTIGENCIA.AsString := MotivoContigencia;
                  enviadoemcontingencia := False;
                end
                else begin
                  vcontingencia := 'N';
                  qrNFCEInsertCONTINGENCIA.AsString := 'N';
                  qrNFCEInsertMOTIVOCONTIGENCIA.AsString := '';
                end;
                qrNFCEInsertENVIADOCONTINGENCIA.AsString := 'N';
                qrNFCEInsertXMLENVIO.LoadFromFile(NomeArquivo);
                qrNFCEInsertEX.AsInteger := 0;

                qrNFCEInsertALTERADO.AsString := 'N';
                qrNFCEInsertXMLCACNELAMENTO.Clear;
                qrNFCEInsertCUPOM.AsString := sNumero_Venda;
                qrNFCEInsert.Post;
                qrNFCEInsert.ApplyUpdates;
              end;
            end
            else begin
              Imprime_display('ERRO ' + frmModulo.ACBRNFCe.WebServices.Enviar.xMotivo, clWhite, tiLivre);
              Exit;
            end;
          except
            on E: Exception do begin
              Imprime_display('ERRO NFCE: ' + E.Message, clWhite, tiLivre);

              Exit;
            end;
          end;
        end
        else begin
          vgerado_nfce := 'N';
          vcontingencia := 'N';
        end;
        // identificacao do consumidor no cupom
        if sCli_Nome <> '' then begin
          bFinalizado := True;
          frmModulo.spCupom_Temp_Edit.close;
          frmModulo.spCupom_Temp_Edit.ParamByName('procedimento').asstring := 'FINALIZADO';
          frmModulo.spCupom_Temp_Edit.Prepare;
          frmModulo.spCupom_Temp_Edit.Execute;
          sPre_Venda_Numero := '';
          sDav_numero := '';
          sPosto_rodape := '';
          sMesa_Numero := '';
        end
        else begin
          bFinalizado := True;
          frmModulo.spCupom_Temp_Edit.Close;
          frmModulo.spCupom_Temp_Edit.ParamByName('procedimento').asstring := 'FINALIZADO';
          frmModulo.spCupom_Temp_Edit.Prepare;
          frmModulo.spCupom_Temp_Edit.execute;
          // sem consumidor
        end;
        Application.ProcessMessages;
        bFinalizado := True;
        // atualizar o totalizador geral do PAF com a do ECF
        //---> FIM
        (**************************************************************************)
        //--> (C U P O M    N A O   F I S C A L )
        bLanca_comprovante_crediario := False;
        // comprovante do crediario
        if (bCadastra_Crediario) and (rvalor_total_crediario > 0) and (iComprovente_Crediario = 1) then begin
          Imprime_display('Aguarde! Imprimindo Comprovante...', clWhite, tiInfo);
          bLanca_comprovante_crediario := False;
          sCOO_Prestacao := sNumero_Cupom;
          sGNF_Prestacao := sGNF;
          sGRG_Prestacao := sGRG;
          bLanca_Comprovante_Prestacao := True;
        end;
        if bFinalizado then begin
          Imprime_display('Aguarde!Finalizando Venda!', clWhite, tiInfo);
          // cadastrar cheques
          if (bCadastra_Cheque) and (rvalor_total_cheque > 0) then begin
          end;
          // lancar convenio
          if (bCadastra_Convenio) and (rvalor_total_convenio > 0) then begin
          end;
          with frmModulo do begin
            // lancamento do cupom no banco de dados
            sNumero_Cupom := sNumero_Venda;
            lbCupom.Caption := 'Útimo Cupom: ' + sNumero_Cupom;
            sCod_Cupom := codifica_cupom;
            spCupom.close;
            spCupom.ParamByName('codigo').asstring := sCod_Cupom;
            if (vNumNFCe > 0) and (TipoDeCupom = tcNFCE) then
              spCupom.ParamByName('numero_nfce').asstring := IntToStr(vNumNFCe)
            else
              spCupom.ParamByName('numero_nfce').Clear;

            spCupom.ParamByName('numero').asstring := sNumero_Cupom;
            spCupom.ParamByName('ccf').asstring := sNumero_contador_cupom;
            spCupom.ParamByName('ECF').AsString := sCaixa;
            spCupom.ParamByName('data').asdate := dData_Sistema;
            spCupom.ParamByName('hora').AsTime := hHora_Cupom;
            spCupom.ParamByName('qtde_item').asinteger := iTotal_Itens;
            spCupom.ParamByName('valor_produto').asfloat := rTotal_Venda;
            spCupom.ParambyName('Valor_Desconto').asfloat := rTotal_Desconto;
            spCupom.ParambyName('Valor_Acrescimo').asfloat := rTotal_Acrescimo;
            spCupom.ParamByName('valor_total').asfloat := rTotal_Venda;
            spCupom.ParamByName('valor_pago').asfloat := vRecebimento.ValorPago;
            spCupom.ParamByName('valor_troco').asfloat := vRecebimento.Troco;
            if sCli_codigo <> '' then
              spCupom.ParamByName('cod_cliente').asstring := sCli_codigo
            else
              spCupom.ParamByName('cod_cliente').Clear;
            spCupom.ParamByName('cancelado').asinteger := 0;
            spcupom.parambyname('cpf_consumidor').asstring := sConsumidor_CPF;
            spcupom.ParamByName('nome_consumidor').asstring := Copy(sConsumidor_Nome, 1, 40);
            spcupom.ParamByName('cod_caixa').asinteger := iNumCaixa;
            spCupom.ParamByName('ecf_caixa').asstring := Copy(sCaixa, 1, 3);
            if iVendedorCodigo <= 0 then
              iVendedorCodigo := icodigo_Usuario;
            spcupom.parambyname('cod_vendedor').asinteger := iVendedorCodigo;
            spcupom.parambyname('contingencia').asstring := vcontingencia;
            spcupom.parambyname('gerado_nfce').asstring := vgerado_nfce;
            spcupom.parambyname('PEGO_PORQUEM').asstring := sCLi_PegoPor;
            if frmPrincipal.TipoImpressora = SemImpressora then begin
              if TipoDeCupom = tcNFCE then
                spcupom.parambyname('SAT').AsInteger := 1
              else
                spcupom.parambyname('SAT').AsInteger := 0;
              spCupom.ParamByName('NAOFISC').asstring := 'N';
            end
            else begin
              spCupom.ParamByName('NAOFISC').asstring := 'S';
              spCupom.ParamByName('sat').AsInteger := 1;
            end;
            spCupom.ParamByName('couvert').AsFloat := rTotal_Couvert;
            spCupom.ParamByName('taxa_garcon').AsFloat := rTotal_Comissao;
            if bImpressaoCozinha then
              spCupom.ParamByName('impresso').AsString := 'N'
            else
              spCupom.ParamByName('impresso').AsString := 'S';
            spcupom.parambyname('SENHA').AsInteger := SenhaImpressao;
            spcupom.parambyname('endereco_consumidor').AsString := Copy(sConsumidor_Endereco, 1, 130);

            spCupom.Prepare;
            spCupom.Execute;

            if bLanca_pre_venda then begin
              // atualizar situacao da pre-venda para 2 = concluida
              frmModulo.query_servidor.close;
              frmModulo.query_servidor.sql.clear;
              frmModulo.query_servidor.sql.add('update c000074 set situacao = 2 where codigo = ''' + Zerar(IntToStr(iPre_venda_codigo), 6) + '''');
              frmModulo.query_servidor.ExecSQL;
              bLanca_pre_venda := False;
            end;
            if bLanca_OS then begin
              // atualizar a situacao da os para FECHADA
              frmModulo.query_servidor.close;
              frmModulo.query_servidor.sql.clear;
              frmModulo.query_servidor.sql.add('update c000051 set situacao = ''FECHADA'' where codigo = ''' + Zerar(IntToStr(iOS_codigo), 6) + '''');
              frmModulo.query_servidor.ExecSQL;
              bLanca_OS := False;
            end;
            if bLanca_Mesa or bLanca_Comanda then begin
              // excluir a mesa e os itens

              frmModulo.query_servidor.close;
              frmModulo.query_servidor.sql.clear;
              frmModulo.query_servidor.sql.add('select * from r000001 where codigo = ' + IntToStr(iMesa_codigo));
              frmModulo.query_servidor.Open;

              frmModulo.qrFechaMesas.sql.clear;
              frmModulo.qrFechaMesas.sql.add('insert into MESAS_FECHADAS (data_abertura, hora_abertura, data_fechamento, hora_fechamento, tempo_uso, COD_FUNCIONARIO, num_mesa, VALOR_FECHAMENTO, VALOR_COMISSAO, CLIENTE_AUTORIZOU)');
              frmModulo.qrFechaMesas.sql.add('values (:data_abertura, :hora_abertura, :data_fechamento, :hora_fechamento, :tempo_uso, :COD_FUNCIONARIO, :num_mesa, :VALOR_FECHAMENTO, :VALOR_COMISSAO, :CLIENTE_AUTORIZOU)');
              frmModulo.qrFechaMesas.ParamByName('data_abertura').AsDateTime := frmModulo.query_servidor.FieldByName('DATA').AsDateTime;
              frmModulo.qrFechaMesas.ParamByName('hora_abertura').AsString := frmModulo.query_servidor.FieldByName('HORA').AsString;
              frmModulo.qrFechaMesas.ParamByName('data_fechamento').AsDate := Date;
              frmModulo.qrFechaMesas.ParamByName('hora_fechamento').AsString := FormatDateTime('HH:MM:SS', Time);
              frmModulo.qrFechaMesas.ParamByName('tempo_uso').AsString := FormatDateTime('HH:MM:SS', Time - StrToTime(frmModulo.query_servidor.FieldByName('HORA').AsString));
              frmModulo.qrFechaMesas.ParamByName('COD_FUNCIONARIO').AsString := frmModulo.query_servidor.FieldByName('COD_FUNCIONARIO').AsString;
              frmModulo.qrFechaMesas.ParamByName('num_mesa').AsInteger := iMesa_codigo;
              frmModulo.qrFechaMesas.ParamByName('VALOR_FECHAMENTO').AsFloat := rTotal_Venda;
              frmModulo.qrFechaMesas.ParamByName('VALOR_COMISSAO').AsFloat := rTotal_Comissao;
              if rTotal_Comissao > 0 then
                frmModulo.qrFechaMesas.ParamByName('CLIENTE_AUTORIZOU').AsString := 'S'
              else
                frmModulo.qrFechaMesas.ParamByName('CLIENTE_AUTORIZOU').AsString := 'N';
              frmModulo.qrFechaMesas.ExecSQL;

              frmModulo.query_servidor.close;
              frmModulo.query_servidor.sql.clear;
              frmModulo.query_servidor.sql.add('delete from r000002 where cod_mesa =' + IntToStr(iMesa_codigo));
              frmModulo.query_servidor.ExecSQL;

              frmModulo.query_servidor.close;
              frmModulo.query_servidor.sql.clear;
              frmModulo.query_servidor.sql.add('delete from r000001 where codigo =' + IntToStr(iMesa_codigo));
              frmModulo.query_servidor.ExecSQL;
            end;

            if bLanca_Delivery then begin
              // excluir a mesa e os itens
              frmModulo.query_servidor.close;
              frmModulo.query_servidor.sql.clear;
              frmModulo.query_servidor.sql.add('update DELIVERY set RECEBIDO = ' + QuotedStr('S') + ' where id = ' + IntToStr(iID_Delivery));
              frmModulo.query_servidor.ExecSQL;
            end;

            // lancamento dos items do cupom no banco de dados
            qrItens.First;
            while not qrItens.Eof do begin
              // situacoes
              // 1 - Venda do Item
              // 3 - Cancelamento do Item
              // 4 - Desconto no Item
              // 5 - Acrescimo no Item

              if qrItensCANCELADO.AsInteger = 0 then begin
                with frmModulo do begin
                  qrEstoque.Close;
                  qrEstoque.ParamByName('cod').AsInteger := qrItensCOD_PRODUTO.AsInteger;
                  qrEstoque.Open;
                end;
                spCupom_Item.close;
                spCupom_Item.ParamByName('codigo').AsString := codifica_item(qrItensITEM.AsInteger);
                spCupom_Item.parambyname('cod_cupom').asstring := sCod_Cupom;
                spCupom_Item.parambyname('item').asinteger := qrItensITEM.AsInteger;
                spCupom_Item.ParamByName('cod_produto').asinteger := qrItensCOD_PRODUTO.AsInteger;
                spCupom_Item.parambyname('unidade').asstring := qrItensUNIDADE.AsString;
                spCupom_Item.parambyname('qtde').asfloat := qrItensQTDE.AsFloat;
                spCupom_Item.parambyname('valor_unitario').asfloat := qrItensVALOR_UNITARIO.AsFloat;
                spCupom_Item.parambyname('valor_subtotal').asfloat := qrItensVALOR_SUBTOTAL.AsFloat;
                spCupom_Item.parambyname('valor_desconto').asfloat := qrItensVALOR_DESCONTO.asfloat;
                spCupom_Item.parambyname('valor_acrescimo').asfloat := qrItensVALOR_ACRESCIMO.asfloat;
                spCupom_Item.parambyname('valor_total').asfloat := qrItensVALOR_TOTAL.asfloat;
                spCupom_Item.parambyname('cst').asstring := qrItensCST.asstring;
                spCupom_Item.parambyname('aliquota').asfloat := qrItensALIQUOTA.asfloat;
                spCupom_Item.parambyname('cancelado').asinteger := qrItensCANCELADO.asinteger;
                spCupom_Item.parambyname('tamanho').AsString := qrItensTAMANHO.AsString;
                spCupom_Item.parambyname('cor').AsString := qrItensCOR.AsString;
                spCupom_Item.parambyname('csosn').AsString := qrEstoqueCSOSN.AsString;
                spCupom_Item.parambyname('classificacao_fiscal').AsString := qrEstoqueNCM.AsString;
                spCupom_Item.parambyname('BASE_SUB').AsFloat := 0;
                spCupom_Item.parambyname('ICMS_SUB').AsFloat := 0;
                spCupom_Item.parambyname('isentas_icms').AsFloat := 0;
                spCupom_Item.parambyname('outras_icms').AsFloat := 0;
                spCupom_item.ParamByName('cod_totalizador').asstring := '';
                if Trim(qrEstoqueCFOP.AsString) <> '' then
                  spCupom_Item.parambyname('cfop').AsString := Trim(qrEstoqueCFOP.AsString)
                else
                  spCupom_Item.parambyname('cfop').AsString := edtcfop;

                spCupom_Item.parambyname('extra').AsString := qrItensEXTRA.AsString;
                spCupom_item.ParamByName('COMPLEMENTO').asstring := qrItensCOMPLEMENTO.AsString;

                spCupom_Item.Prepare;
                spCupom_Item.Execute;

                cdsLancaProdutos.Filter := 'COD_ITEM = ' + QuotedStr(qrItensCODIGO.AsString);
                cdsLancaProdutos.Filtered := True;
                cdsLancaProdutos.First;
                while not cdsLancaProdutos.Eof do begin
                  qrLancaProdutos.Close;
                  qrLancaProdutos.Open;
                  qrLancaProdutos.Append;
                  qrLancaProdutosCOD_ITEM.AsString := qrItensCODIGO.AsString;
                  qrLancaProdutosCODPRO.AsString := cdsLancaProdutosCODPRO.AsString;
                  qrLancaProdutosQTDE.AsFloat := cdsLancaProdutosQTDE.AsFloat;
                  qrLancaProdutos.Post;
                  qrLancaProdutos.ApplyUpdates;
                  cdsLancaProdutos.Next;
                end;
              end;
              qrItens.Next;
            end;
            // lancamento das formas de pagamento
            PTroco := 0;
            divide := 0;
            if vRecebimento.Troco > 0 then begin
              cdsRecebimento.First;
              while not cdsRecebimento.Eof do begin
                Inc(divide);
                cdsRecebimento.Next;
              end;
              PTroco := (vRecebimento.Troco / divide);
            end;
            cdsRecebimento.First;
            while not cdsRecebimento.Eof do begin
              spCupom_Forma.close;
              spCupom_Forma.ParamByName('codigo').asstring := codifica_forma(cdsRecebimento.RecNo);
              spCupom_Forma.ParamByName('cod_cupom').asstring := sCod_Cupom;
              spCupom_Forma.ParamByName('forma').asstring := cdsRecebimentoTipo.AsString;
              spCupom_Forma.ParamByName('valor').asfloat := cdsRecebimentovalor.AsFloat;
              if ((cdsRecebimentoTipo.AsString = StRecCartaoDE) or (cdsRecebimentoTipo.AsString = StRecCartaoCR) or (cdsRecebimentoTipo.AsString = StRecCrediario) or (cdsRecebimentoTipo.AsString = StRecConvenio)) then
                spCupom_Forma.ParamByName('troco').asfloat := 0
              else
                spCupom_Forma.ParamByName('troco').asfloat := PTroco;
              if cdsRecebimentobanco.AsInteger <= 0 then begin
                spCupom_Forma.ParamByName('prestacao').asinteger := 1;
                spCupom_Forma.ParamByName('banco').asstring := '';
              end
              else begin
                spCupom_Forma.ParamByName('prestacao').asinteger := cdsRecebimentoParcelas.AsInteger;
                spCupom_Forma.ParamByName('banco').asstring := Zerar(IntToStr(cdsRecebimentobanco.AsInteger), 3);
              end;
              if (cdsRecebimentoTipo.AsString = StRecCrediario) then
                spCupom_Forma.ParamByName('prestacao').asinteger := iCrediario_prestacao;
              spCupom_Forma.ParamByName('tipo').asstring := 'CUPOM NAO FISCAL';
              if (cdsRecebimentoTipo.AsString = StRecCartaoDE) then
                spCupom_Forma.ParamByName('tipocartao').asstring := 'D'
              else if (cdsRecebimentoTipo.AsString = StRecCartaoCR) then
                spCupom_Forma.ParamByName('tipocartao').asstring := 'C'
              else
                spCupom_Forma.ParamByName('tipocartao').asstring := '';

              spCupom_Forma.Prepare;
              spCupom_Forma.Execute;

              if (cdsRecebimentoTipo.AsString = StRecCartaoCR) or (cdsRecebimentoTipo.AsString = StRecCartaoDE) then begin
                Prestacao := RoundTo(cdsRecebimentovalor.AsFloat / cdsRecebimentoParcelas.AsInteger, -2);
                Resto := cdsRecebimentovalor.AsFloat - (Prestacao * cdsRecebimentoParcelas.AsInteger);
                for i := 1 to cdsRecebimentoParcelas.AsInteger do begin
                  qrCupom_Cartao.Open;
                  qrCupom_Cartao.Insert;
                  qrCupom_CartaoCODIGO.AsString := codifica_forma(i);
                  qrCupom_CartaoCODIGO_CUPOM.AsString := sCod_Cupom;
                  qrCupom_CartaoBANCO.AsString := Zerar(IntToStr(cdsRecebimentobanco.AsInteger), 3);
                  if (cdsRecebimentoTipo.AsString = StRecCartaoDE) then
                    qrCupom_CartaoTIPO_CARTAO.AsString := 'D'
                  else if (cdsRecebimentoTipo.AsString = StRecCartaoCR) then
                    qrCupom_CartaoTIPO_CARTAO.AsString := 'C'
                  else
                    qrCupom_CartaoTIPO_CARTAO.AsString := '';
                  qrCupom_CartaoPRESTACAO.AsInteger := i;
                  if i <> cdsRecebimentoParcelas.AsInteger then
                    qrCupom_CartaoVALOR.AsFloat := Prestacao
                  else
                    qrCupom_CartaoVALOR.AsFloat := Prestacao + Resto;
                  qrCupom_CartaoVENCIMENTO.asdatetime := IncMonth(dData_Sistema, i);
                  qrCupom_CartaoEX.AsString := 'N';
                  qrCupom_Cartao.Post;
                  qrCupom_Cartao.ApplyUpdates;
                end;
              end;
              cdsRecebimento.Next;
            end;

            if (bCadastra_Convenio) and (rvalor_total_convenio > 0) then begin
              qrCupomConvenio.Open;
              qrCupomConvenio.Insert;
              qrCupomConvenioCODIGO.asstring := codifica_crediario(i);
              qrCupomConvenioCOD_CUPOM.asstring := sCod_Cupom;
              qrCupomConvenioDATA.AsDateTime := dData_Sistema;
              qrCupomConvenioHORA.AsString := FormatDateTime('HH:MM:SS', Time);
              qrCupomConvenioCOD_CLIENTE.asinteger := StrToInt(sCli_codigo);
              qrCupomConvenioVENCIMENTO.asdatetime := IncMonth(dData_Sistema, 1);
              qrCupomConvenioVALOR.asfloat := rvalor_total_convenio;
              qrCupomConvenioEX.AsInteger := 0;
              qrCupomConvenio.Post;
              qrCupomConvenio.ApplyUpdates;

            end;

            if (bCadastra_Crediario) and (rvalor_total_crediario > 0) then begin
              Prestacao := RoundTo(rvalor_total_crediario / iCrediario_prestacao, -2);
              Resto := rvalor_total_crediario - (Prestacao * iCrediario_prestacao);
              for i := 1 to iCrediario_prestacao do begin
                spCupom_Crediario.close;
                spCupom_Crediario.ParamByName('codigo').asstring := codifica_crediario(i);
                spCupom_Crediario.ParamByName('cod_cupom').asstring := sCod_Cupom;
                spCupom_Crediario.ParamByName('data').asdate := dData_Sistema;
                spCupom_Crediario.ParamByName('Hora').astime := Time;
                spCupom_Crediario.ParamByName('cod_cliente').asinteger := StrToInt(sCli_codigo);
                spCupom_crediario.ParamByName('vencimento').asdatetime := IncMonth(dData_Sistema, i);
                if i <> iCrediario_prestacao then
                  spCupom_Crediario.parambyname('valor').asfloat := Prestacao
                else
                  spCupom_Crediario.parambyname('valor').asfloat := Prestacao + Resto;
                spCupom_Crediario.ParamByName('descricao').asstring := Copy(sCrediario_Nome, 1, 30);
                spCupom_Crediario.Prepare;
                spCupom_Crediario.Execute;
              end;
            end;


            // lancamento do comprovante do crediario
            if bLanca_comprovante_crediario then begin
              sNumero_Cupom := Zerar(somenteNumero(sCOO_crediario), 6);
              if sNumero_Cupom <> '000000' then begin
                spNao_Fiscal.close;
                spNao_Fiscal.parambyname('codigo').asstring := codifica_cupom;
                spNao_fiscal.ParamByName('ecf').asstring := sCaixa;
                spNao_fiscal.ParamByName('data').asdatetime := dData_Sistema;
                spNao_Fiscal.ParamByName('indice').AsString := sTotalizador_Crediario;
                spNao_Fiscal.ParamByName('descricao').AsString := sNome_Totalizador_Crediario;
                spNao_fiscal.ParamByName('valor').asfloat := rvalor_total_crediario;
                spNao_fiscal.ParamByName('hora').Astime := Time;
                spNao_fiscal.ParamByName('COO').asstring := sCOO_crediario;
                spNao_fiscal.ParamByName('GNF').asstring := sGNF_Crediario;
                spNao_fiscal.ParamByName('CDC').Clear;
                spNao_fiscal.ParamByName('GRG').clear;
                spNao_fiscal.ParamByName('DENOMINACAO').asstring := 'CN';
                spnao_fiscal.Prepare;
                spNao_Fiscal.Execute;
              end;
            end;
            // lancamento do comprovante da prestacao
            if bLanca_Comprovante_Prestacao then begin
              sNumero_Cupom := Zerar(somenteNumero(sCOO_Prestacao), 6);
              if sNumero_Cupom <> '000000' then begin
                spNao_Fiscal.close;
                spNao_Fiscal.parambyname('codigo').asstring := codifica_cupom;
                spNao_fiscal.ParamByName('ecf').asstring := sCaixa;
                spNao_fiscal.ParamByName('data').asdatetime := dData_Sistema;
                spNao_fiscal.ParamByName('hora').Astime := Time;
                spNao_fiscal.ParamByName('indice').asstring := 'RG';
                spNao_fiscal.ParamByName('Descricao').asstring := 'RELATÓRIO GERENCIAL';
                spNao_fiscal.ParamByName('valor').asfloat := 0;
                spNao_fiscal.ParamByName('COO').asstring := sCOO_Prestacao;
                spNao_fiscal.ParamByName('GNF').asstring := sGNF_Prestacao;
                spNao_fiscal.ParamByName('GRG').asstring := sGRG_Prestacao;
                spNao_fiscal.ParamByName('CDC').Clear;
                spNao_fiscal.ParamByName('DENOMINACAO').asstring := 'RG';
                spnao_fiscal.Prepare;
                spNao_Fiscal.Execute;
              end;
            end;
            // lancar os dados do comprador, mesmo sem cadastro ou a vista
            spCupom_consumidor.Close;
            spCupom_consumidor.parambyname('codigo').Asstring := sCod_Cupom;
            if sCli_codigo <> '' then
              spCupom_consumidor.parambyname('cod_cliente').Asinteger := StrToInt(sCli_codigo)
            else
              spCupom_consumidor.parambyname('cod_cliente').Clear;
            spCupom_consumidor.parambyname('nome').asstring := Copy(sCli_Nome, 1, 80);
            spCupom_consumidor.parambyname('endereco').asstring := Copy(sCli_Endereco, 1, 80);
            spCupom_consumidor.parambyname('cidade').asstring := Copy(sCli_Cidade, 1, 50);
            spCupom_consumidor.parambyname('uf').asstring := Copy(sCli_uf, 1, 2);
            spCupom_consumidor.parambyname('cep').asstring := Copy(scli_cep, 1, 9);
            spCupom_consumidor.parambyname('cpf').asstring := Copy(sCli_CPF, 1, 18);
            spCupom_consumidor.parambyname('placa').asstring := Copy(sCli_Placa, 1, 10);
            spCupom_consumidor.parambyname('km').asstring := Copy(sCli_Km, 1, 10);
            spCupom_consumidor.parambyname('vendedor').asstring := Copy(scli_vendedor, 1, 50);
            spCupom_consumidor.Prepare;
            spCupom_consumidor.Execute;
          end;
          if (frmPrincipal.TipoImpressora = SemImpressora) and (TipoDeCupom = tcSAT) then begin
            EnviaSAT(sCod_Cupom);
          end;

          bVenda := False;
          if not (AtivaTouch) then begin
            if bBusca_foto_produto then begin
              img_produto.Picture := nil;
            end;
            if bBusca_foto_produto then begin
              img_produto.Visible := True;
            end;
          end;
          if ((frmPrincipal.TipoImpressora = NaoFiscal) and (TipoImprimeCupom <> 'N')) or (bAtivaImpFicha) then
            ImprimirCupomNaoFiscal(sCod_Cupom);
          if (bImpressaoCozinha) and not (bAtivaImpFicha) then
            ImprimirComanda(sCod_Cupom);


          // Excluir os arquivos temporarios
          frmModulo.spCupom_Temp_delete.prepare;
          frmModulo.spCupom_Temp_delete.execute;

          Limpa_controles;
          if vRecebimento.Troco > 0 then
            Imprime_display('Pago: R$ ' + FormatFloat('###,###,##0.00', vRecebimento.ValorPago) + '            ' + 'Troco: R$ ' + FormatFloat('###,###,##0.00', vRecebimento.Troco), clWhite, tiPgto)
          else
            Imprime_display('C A I X A    L I V R E', clWhite, tiLivre);

          TimerTroco.Enabled := True; // Apos 5 segundos

          MostraFotoProduto(False);
          MostraLogoMarca(True);

        end;
      finally
        if not (frmModulo.Conexao_Servidor.AutoCommit) and (frmModulo.Conexao_Servidor.InTransaction) then
          frmModulo.Conexao_Servidor.Commit;

        PopupMenu := pop_principal;

        //BlockInput(false);
        if bVenda then begin
          gravaINI(sConfiguracoes, 'PDV', 'Aberto', 'SIM');
        end
        else begin
          gravaINI(sConfiguracoes, 'PDV', 'Aberto', 'NAO');
          CorEditTotaL;
        end;
        {: ACIONAR GUILHOTINA}
        if frmPrincipal.TipoImpressora = NaoFiscal then
          AcionarGuilhotinaNaoFiscal;
        vcontingencia := 'N';
        vgerado_nfce := 'N';
        vNumNFCe := 0;
        ed_total_item.Value := 0;

        if bLanca_Mesa then
          menu_mesaClick(frmVenda)
        else if bLanca_Comanda then
          Comandas1Click(frmVenda)
        else if bLanca_Delivery then
          mnDeliveryClick(frmVenda)
        else if not AtivaTouch then
          ed_barra.SETFOCUS;
      end;
    end;
  end
  else begin
    Imprime_display('Não há cupom aberto!', clYellow, tiAlerta);
    Sleep(1000);
    Imprime_display_anterior;
  end;
end;

procedure TfrmVenda.mnDeliveryClick(Sender: TObject);
var
  nitem, id: Integer;
begin
  if bVenda then begin
    Imprime_display('Venda Aberta!', clRed, tiErro);
    Sleep(1500);
    Imprime_display_anterior;
    Exit;
  end;

  if not bServidor_Conexao then begin
    repeat
    try
      frmModulo.Conexao_Servidor.Connected := False;
      frmModulo.Conexao_Servidor.Connected := True;
      bServidor_Conexao := True;
    except
      on E: Exception do begin
        if Application.messagebox(PWideChar('Erro na conexão com o banco de dados do servidor!' + #13 + 'Mensagem: ' + E.Message + #13 + 'Deseja tentar outra vez?'), 'Erro', MB_YESNO + MB_ICONERROR) = IDNO then begin
          Break;
        end;
      end;
    end;
    until bServidor_Conexao = True;
  end;
  if not bServidor_Conexao then
    Exit;

  id := RetIdFecharDelivery;


  // iniciar a impressao da pre-venda
  if id > 0 then begin
    Imprime_display('Iniciando impressão do Delivery!', clWhite, tiInfo);
    try
      // verificar o serial do ec
      // Abrir o cupom fiscal
      // bloquear ao teclado
      //BlockInput(True);
      if not Abre_Venda then begin
        // Caso o comando de abertura de venda retornou false, abortar o processo;
        Imprime_display('ERRO AO ABRIR O CUPOM!', clRed, tiErro);
        Exit;
      end;
    finally
      // desbloquear o teclado
      //BlockInput(False);
    end;
    rTotal_TaxaEntrega := frmModulo.qrDeliveryVALOR_TAXA_ENTREGA.AsFloat;
    if rTotal_TaxaEntrega > 0 then begin
      qrServidor.Close;
      qrServidor.SQL.Clear;
      qrServidor.SQL.Add('select PRODUTO_TAXA_ENTREGA from c000001');
      qrServidor.Open;
      if Trim(qrServidor.FieldByName('PRODUTO_TAXA_ENTREGA').AsString) = '' then begin
        Application.MessageBox('Não foi informado nas configurações do gerencial o produto para lançamento da taxa de entrega.', 'Atenção!', MB_ICONINFORMATION);
        Exit;
      end;
    end;
    bLanca_Delivery := True;
    iID_Delivery := id;
    with frmModulo do begin
      qrImpDelivery.Close;
      qrImpDelivery.ParamByName('ID').AsInteger := id;
      qrImpDelivery.Open;
      qrImpDelivery.First;
      nitem := 1;
      while not qrImpDelivery.eof do begin
        sProd_nome := qrImpDelivery.fieldbyname('produto').asstring;
        sProd_unidade := qrImpDelivery.fieldbyname('unidade').asstring;
        sProd_CST := qrImpDelivery.fieldbyname('cst').asstring;
        rProd_aliquota := qrImpDelivery.fieldbyname('aliquota').asfloat;
        iProd_codigo := qrImpDelivery.fieldbyname('codproduto').asinteger;
        sProd_barra := qrImpDelivery.fieldbyname('codbarra').asstring;
        rProd_qtde := qrImpDelivery.fieldbyname('quantidade').asfloat;
        rProd_preco := qrImpDelivery.fieldbyname('unitario').asfloat;
        rProd_total := qrImpDelivery.fieldbyname('total').asfloat;
        rProd_desconto := 0;
        rProd_acrescimo := 0;
        sProd_Tamanho := '';
        sProd_Cor := '';
        sProd_Compl_Pizza := qrImpDeliveryCOMPLEMENTO.AsString;
        vExtra.Texto := qrImpDeliveryEXTRA.AsString;
        // registrar o item
        frmModulo.query_servidor2.Close;
        frmModulo.query_servidor2.SQL.Clear;
        frmModulo.query_servidor2.SQL.Add('select * from ITEM_DELIVERY_SUB where ID_ITEM = ' + QuotedStr(qrImpDeliveryID_ITEM.AsString));
        frmModulo.query_servidor2.Open;
        frmModulo.query_servidor2.First;
        strPizza.Pizza := '';
        strPizza.Sabores := '';
        strPizza.Valor := 0;
        SetLength(strPizza.Produtos,0);
        strPizza.ProdutoPrincipal.Codigo := '';
        strPizza.ProdutoPrincipal.Valor := 0;
        while not frmModulo.query_servidor2.Eof do begin
          cdsLancaProdutos.Insert;
          cdsLancaProdutosCODPRO.AsString := frmModulo.query_servidor2.FieldByName('CODPRO').AsString;
          cdsLancaProdutosQTDE.AsFloat := frmModulo.query_servidor2.FieldByName('QTDE').AsFloat;
          cdsLancaProdutos.Post;
          frmModulo.query_servidor2.Next;
        end;
        Registra_Item;
        Inc(nItem);
        Application.ProcessMessages;
        qrImpDelivery.next;
      end;
    end;
    if rTotal_TaxaEntrega > 0 then begin
      with frmModulo do begin
        qrTemp.Close;
        qrTemp.SQL.Clear;
        qrTemp.SQL.Add('select * from estoque where codigo = ' + QuotedStr(qrServidor.FieldByName('PRODUTO_TAXA_ENTREGA').AsString));
        qrTemp.Open;
        sProd_nome := qrTemp.FieldByName('NOME').AsString;
        sProd_unidade := qrTemp.FieldByName('UNIDADE').AsString;
        sProd_CST := qrTemp.FieldByName('CST').AsString;
        rProd_aliquota := qrTemp.FieldByName('ALIQUOTA').AsFloat;
        iProd_codigo := qrTemp.FieldByName('CODIGO').AsInteger;
        sProd_barra := qrTemp.FieldByName('COD_BARRA').AsString;
        rProd_qtde := 1;
        rProd_preco := RoundTo(rTotal_TaxaEntrega, -2);
        rProd_total := RoundTo(rTotal_TaxaEntrega, -2);
        rProd_desconto := 0;
        rProd_acrescimo := 0;
        sProd_Tamanho := '';
        sProd_Cor := '';
      end;
      // registrar o item
      Registra_Item;
    end;
    lb_total.Caption := 'R$ ' + FormatFloat('###,###,##0.00', rTotal_Venda);
    FecharCupom1Click(frmVenda);
  end;

end;

procedure TfrmVenda.mnEnviaContigenciaClick(Sender: TObject);
begin
  if TdxStatusBarStateIndicatorPanelStyle(cpBarra.Panels[7].PanelStyle).Indicators[0].IndicatorType = sitGreen then
    EnviaContingencia
  else
    Application.MessageBox('Sem conexão com internet para envio das contingências!', 'Atenção!', MB_ICONERROR);
end;

procedure TfrmVenda.G1Click(Sender: TObject);
begin
  frmSenha_Supervisor := TfrmSenha_Supervisor.create(Self);
  frmSenha_Supervisor.showmodal;

  if not bSupervisor_autenticado then
    Exit;

  frmNotasconsumidor := TfrmNotasconsumidor.create(Self);
  frmNotasconsumidor.showmodal;
  FreeAndNil(frmNotasconsumidor);
end;

procedure TfrmVenda.GerarNFCe(NumNFe: string);
var
  divide, i, nItem: Integer;
  total_desconto, total_acrescimo, total_produtos, total_servico, total_icms, total_base, total_trib, PTroco: Real;
  ok: Boolean;
begin
  try
    with frmModulo do begin
      total_acrescimo := 0;
      qrfilial.Open;
      with ACBRNFCe.NotasFiscais.add.NFe do begin
        Ide.cNF := StrToInt(NumNFe) + 1;
        Ide.natOp := 'VENDA AO CONSUMIDOR FINAL';

        if tipo_pgto = 1 then
          Ide.indPag := ipPrazo
        else
          Ide.indPag := ipVista;

        Ide.Modelo := 65;
        Ide.Serie := StrToInt(edtSerie);
        Ide.nNF := StrToInt(NumNFe);
        Ide.dEmi := Now;
        Ide.dSaiEnt := Now;
        Ide.hSaiEnt := Now;
        if frmModulo.ACBRNFCe.Configuracoes.Geral.FormaEmissao = frmtOffLine then begin
          Ide.dhCont := Now;
          Ide.xJust := MotivoContigencia;
        end;
        Ide.tpNF := tnSaida;
        Ide.tpEmis := frmModulo.ACBRNFCe.Configuracoes.Geral.FormaEmissao;
        Ide.tpAmb := ACBRNFCe.Configuracoes.WebServices.Ambiente;
        Ide.cUF := UFtoCUF(edtEmitUF);
        Ide.cMunFG := StrToInt(edtEmitCodCidade);
        Ide.finNFe := fnNormal;
        Ide.tpImp := tiNFCe;
        Ide.indFinal := cfConsumidorFinal;
        Ide.indPres := pcPresencial;

        Ide.verProc := '1.0';
        Emit.CNPJCPF := edtEmitCNPJ;
        Emit.IE := edtEmitIE;
        Emit.IM := edtEmitIM;
        Emit.xNome := edtEmitRazao;
        Emit.xFant := edtEmitFantasia;

        Emit.EnderEmit.fone := edtEmitFone;
        Emit.EnderEmit.CEP := StrToInt(edtEmitCEP);
        Emit.EnderEmit.xLgr := edtEmitLogradouro;
        Emit.EnderEmit.nro := edtEmitNumero;
        Emit.EnderEmit.xCpl := edtEmitComp;
        Emit.EnderEmit.xBairro := edtEmitBairro;
        Emit.EnderEmit.cMun := StrToInt(edtEmitCodCidade);
        Emit.EnderEmit.xMun := edtEmitCidade;
        Emit.EnderEmit.UF := edtEmitUF;
        Emit.EnderEmit.cPais := 1058;
        Emit.EnderEmit.xPais := 'BRASIL';
        Emit.IEST := '';

        // regime tributario da empresa
        // (1-crtSimplesNacional, 2-crtSimplesExcessoReceita, 3-crtRegimeNormal)
        if qrfilial.fieldbyname('CRT').asinteger = 1 then
          Emit.CRT := crtSimplesNacional
        else if qrfilial.fieldbyname('CRT').asinteger = 2 then
          Emit.CRT := crtSimplesExcessoReceita
        else
          Emit.CRT := crtRegimeNormal;

        // dados destinatarios

        Dest.CNPJCPF := OnlyNumber(sConsumidor_CPF);
        Dest.ISUF := '';
        Dest.xNome := sConsumidor_Nome;
        Dest.indIEDest := inNaoContribuinte;
        Dest.EnderDest.fone := '';
        if scli_cep <> '' then
          Dest.EnderDest.CEP := StrToInt(OnlyNumber(scli_cep))
        else
          Dest.EnderDest.CEP := 0;

        Dest.EnderDest.xLgr := '';
        Dest.EnderDest.nro := '';
        Dest.EnderDest.xCpl := sConsumidor_Endereco;
        Dest.EnderDest.xBairro := '';
        Dest.EnderDest.cMun := 0; // analisar funcao
        Dest.EnderDest.xMun := '';
        Dest.EnderDest.UF := sCli_uf;
        Dest.EnderDest.cPais := 1058;
        Dest.EnderDest.xPais := 'BRASIL';

        // Adicionando Produtos
        nItem := 1;
        total_produtos := 0;
        total_servico := 0;
        total_icms := 0;
        total_base := 0;
        total_trib := 0;
        total_desconto := 0;
        qrItens.First;
        while not qrItens.Eof do begin
          // prepar query
          qrProdNCFE.close;
          qrProdNCFE.sql.clear;
          qrProdNCFE.sql.add('select CODIGO, NOME,COD_BARRA,NCM,CST,ALIQNACIONAL,CFOP,CODIGO_ANP,informa_codigo_barra_xml from ESTOQUE ');
          qrProdNCFE.sql.add('where CODIGO = :pcodigo');
          qrProdNCFE.ParamByName('pcodigo').asinteger := qrItensCOD_PRODUTO.asinteger;
          qrProdNCFE.Open;

          if qrItensCANCELADO.AsInteger = 0 then begin
            with Det.add do begin
              Prod.nItem := nItem;
              nItem := nItem + 1;
              Prod.cProd := qrItensCOD_PRODUTO.AsString;
              Prod.uCom := qrItensUNIDADE.asstring;
              Prod.uTrib := qrItensUNIDADE.asstring;
              if qrProdNCFE.FieldByName('informa_codigo_barra_xml').AsString = 'S' then begin
                Prod.cEAN := qrProdNCFE.fieldbyname('COD_BARRA').asstring;
                Prod.cEANTrib := qrProdNCFE.fieldbyname('COD_BARRA').asstring;
              end else begin
                Prod.cEAN := 'SEM GTIN';
                Prod.cEANTrib := 'SEM GTIN';
              end;
              Prod.xProd := qrProdNCFE.fieldbyname('NOME').asstring;
              Prod.NCM := somenteNumero(qrProdNCFE.fieldbyname('NCM').asstring);
              Prod.EXTIPI := '';
              if Trim(qrProdNCFE.fieldbyname('CFOP').AsString) <> '' then
                Prod.CFOP := Trim(qrProdNCFE.fieldbyname('CFOP').AsString)
              else
                Prod.CFOP := edtcfop;
              Prod.qCom := qrItensQTDE.AsFloat;
              Prod.qTrib := Prod.qCom;
              Prod.vUnCom := qrItensVALOR_UNITARIO.asfloat;
              Prod.vUnTrib := Prod.vUnCom;
              Prod.vProd := RoundTo(Prod.vUnCom * Prod.qCom, -2);
              Prod.vDesc := 0;
              Prod.vOutro := qrItensVALOR_ACRESCIMO.asfloat; // RoundTo((Prod.vProd / (rTotal_Venda - rTotal_Acrescimo)) * rTotal_Acrescimo, -2);
              Prod.vDesc := qrItensVALOR_DESCONTO.asfloat; // RoundTo(Prod.vDesc + ((Prod.vProd / rTotal_Venda) * rTotal_Desconto), -2);
              if trim(qrProdNCFE.FieldByName('CODIGO_ANP').AsString) <> '' then begin
                qrANP.close;
                qrANP.Params.Items[0].Value := qrProdNCFE.FieldByName('CODIGO_ANP').AsString;
                qrANP.Open;
                if not qrANP.IsEmpty then begin
                  Prod.comb.cProdANP := qrProdNCFE.FieldByName('CODIGO_ANP').AsInteger;
                  Prod.comb.descANP := qrANPDESCRICAO.AsString;
                  Prod.comb.UFcons := Dest.EnderDest.UF;
                end;
              end;

              QRCSOSN.close;
              QRCSOSN.sql.clear;
              QRCSOSN.sql.add('select pro.csosn, pro.aliquota icms, pro.cest, tip.codigo servico ');
              QRCSOSN.sql.Add('from C000025 pro');
              QRCSOSN.sql.Add('left join tipo_servico tip on tip.id = pro.id_tipo_servico');
              QRCSOSN.sql.add('where pro.codigo = :pcodigo');
              QRCSOSN.ParamByName('pcodigo').asstring := IntToStrZero(qrItensCOD_PRODUTO.asinteger, 6);
              QRCSOSN.Open;
              if (Trim(QRCSOSN.fieldbyname('cest').asstring) <> '') and (Trim(QRCSOSN.fieldbyname('cest').asstring) <> '0') then
                Prod.CEST := QRCSOSN.fieldbyname('cest').asstring;
              Prod.vFrete := 0;
              Prod.vSeg := 0;
              total_desconto := RoundTo(total_desconto + Prod.vDesc, -2);
              total_acrescimo := RoundTo(total_acrescimo + Prod.vOutro, -2);
              with Imposto do begin
                vTotTrib := RoundTo((Prod.vProd * qrProdNCFE.fieldbyname('ALIQNACIONAL').AsFloat) / 100, -2);
                total_trib := total_trib + vTotTrib;
                if Trim(QRCSOSN.FieldByName('servico').AsString) <> '' then begin
                  qrServidor.Close;
                  qrServidor.SQL.Clear;
                  qrServidor.SQL.Add('select emp.iss, emp.cod_municipio_ibge from C000004 emp');
                  qrServidor.Open;
                  ISSQN.vBC := Prod.vProd;
                  ISSQN.vAliq := qrServidor.FieldByName('iss').AsFloat;
                  ISSQN.vISSQN := RoundTo((ISSQN.vBC * ISSQN.vAliq) / 100, -2);
                  ISSQN.cMunFG := qrServidor.FieldByName('cod_municipio_ibge').AsInteger;
                  ISSQN.cListServ := Trim(QRCSOSN.FieldByName('servico').AsString);
                  ISSQN.indISS := iiExigivel;
                  ISSQN.cMun := qrServidor.FieldByName('cod_municipio_ibge').AsInteger;
                  ISSQN.indIncentivo := iiSim;
                  PIS.CST := pis07;
                  COFINS.CST := cof07;
                  with Total.ISSQNtot do begin
                    vServ := ISSQN.vBC;
                    vBC := ISSQN.vBC;
                    vISS := ISSQN.vISSQN;
                    dCompet := Date;
                  end;
                  total_servico := RoundTo(total_servico + Prod.vProd, -2);
                end
                else begin
                  // simples nacional
                  total_produtos := RoundTo(total_produtos + Prod.vProd, -2);
                  if qrfilial.fieldbyname('CRT').asinteger = 1 then begin
                    with ICMS do begin
                      if QRCSOSN.FieldByName('csosn').AsString = '' then
                        ICMS.CSOSN := csosn102
                      else if (QRCSOSN.fieldbyname('csosn').asstring = '101') then
                        ICMS.CSOSN := csosn101
                      else if (QRCSOSN.fieldbyname('csosn').asstring = '102') then
                        ICMS.CSOSN := csosn102
                      else if (QRCSOSN.fieldbyname('csosn').asstring = '103') then
                        ICMS.CSOSN := csosn103
                      else if (QRCSOSN.fieldbyname('csosn').asstring = '300') then
                        ICMS.CSOSN := csosn300
                      else if (QRCSOSN.fieldbyname('csosn').asstring = '400') then
                        ICMS.CSOSN := csosn400
                      else if (QRCSOSN.fieldbyname('csosn').asstring = '201') then
                        ICMS.CSOSN := csosn201
                      else if (QRCSOSN.fieldbyname('csosn').asstring = '202') then
                        ICMS.CSOSN := csosn202
                      else if (QRCSOSN.fieldbyname('csosn').asstring = '500') then
                        ICMS.CSOSN := csosn500
                      else if (QRCSOSN.fieldbyname('csosn').asstring = '900') then
                        ICMS.CSOSN := csosn900;

                      case ICMS.CSOSN of
                        csosn101:
                          begin
                            ICMS.orig := oeNacional;
                            ICMS.pCredSN := 0.0; // Colocar o percentual do Crédito
                            ICMS.vCredICMSSN := 0.0; // Colocar o valor do Crédito
                          end;
                        csosn102:
                          begin
                            ICMS.orig := oeNacional;
                          end;
                        csosn201:
                          begin
                            ICMS.orig := oeNacional;
                            ICMS.modBCST := dbisMargemValorAgregado;
                            ICMS.pMVAST := 0;
                            ICMS.pRedBCST := 00.00;
                            ICMS.vBCST := 0;
                            ICMS.pICMSST := 00.00;
                            ICMS.vICMSST := 0;
                            ICMS.pCredSN := 0.0; // Colocar o percentual do Crédito
                            ICMS.vCredICMSSN := 0.0; // Colocar o valor do Crédito
                          end;
                        csosn202:
                          begin
                            ICMS.orig := oeNacional;
                            ICMS.modBCST := dbisMargemValorAgregado;
                            ICMS.pMVAST := 0;
                            ICMS.pRedBCST := 00.00;
                            ICMS.vBCST := 0;
                            ICMS.pICMSST := 00.00;
                            ICMS.vICMSST := 0;
                          end;
                        csosn500:
                          begin
                            ICMS.orig := oeNacional;
                            ICMS.vBCSTRet := 0;
                            ICMS.vICMSSTRet := 0;
                          end;
                        csosn900:
                          begin
                            ICMS.orig := oeNacional;
                            ICMS.modBC := dbiValorOperacao;
                            ICMS.vBC := RoundTo(qrItensVALOR_TOTAL.asfloat, -2);
                            ICMS.pRedBC := 0;
                            ICMS.pICMS := RoundTo(QRCSOSN.FieldByName('icms').AsFloat, -2);
                            ICMS.vICMS := RoundTo((ICMS.vBC * ICMS.pICMS) / 100, -2);
                            ICMS.modBCST := dbisMargemValorAgregado;
                            ICMS.pMVAST := 0;
                            ICMS.pRedBCST := 00.00;
                            ICMS.vBCST := 0;
                            ICMS.pICMSST := 00.00;
                            ICMS.vICMSST := 0;
                            ICMS.pCredSN := 0.0; // Colocar o percentual do Crédito
                            ICMS.vCredICMSSN := 0.0; // Colocar o valor do Crédito
                          end;
                      end;
                      with ICMSUFDest do begin
                        vBCUFDest := 0.00;
                        pFCPUFDest := 0.00;
                        pICMSUFDest := 0.00;
                        pICMSInter := 0.00;
                        pICMSInterPart := 0.00;
                        vFCPUFDest := 0.00;
                        vICMSUFDest := 0.00;
                        vICMSUFRemet := 0.00;
                      end;
                    end;
                  end
                  else begin
                    with ICMS do begin
                      if (qrItensCST.asstring = '000') then
                        CST := cst00
                      else if (qrItensCST.asstring = '010') then
                        CST := cst10
                      else if (qrItensCST.asstring = '020') then
                        CST := cst20
                      else if (qrItensCST.asstring = '030') then
                        CST := cst30
                      else if (qrItensCST.asstring = '040') then
                        CST := cst40
                      else if (qrItensCST.asstring = '050') then
                        CST := cst50
                      else if (qrItensCST.asstring = '060') then
                        CST := cst60
                      else if (qrItensCST.asstring = '070') then
                        CST := cst70
                      else if (qrItensCST.asstring = '080') then
                        CST := cst80
                      else if (qrItensCST.asstring = '090') then
                        CST := cst90;
                      case ICMS.CST of
                        cst00:
                          begin
                            ICMS.orig := oeNacional;
                            ICMS.modBC := dbiValorOperacao;
                            ICMS.vBC := RoundTo(qrItensVALOR_TOTAL.asfloat, -2);
                            ;
                            ICMS.pICMS := RoundTo(qrItensALIQUOTA.asfloat, -2);
                            ICMS.vICMS := RoundTo((ICMS.vBC * ICMS.pICMS) / 100, -2);
                            total_icms := total_icms + ICMS.vICMS;
                            total_base := total_base + ICMS.vBC;
                          end;
                        cst10:
                          begin
                            ICMS.orig := oeNacional;
                            ICMS.modBC := dbiValorOperacao;
                            ICMS.vBC := RoundTo(qrItensVALOR_TOTAL.asfloat, -2);
                            ;
                            ICMS.pICMS := RoundTo(qrItensALIQUOTA.asfloat, -2);
                            ;
                            ICMS.vICMS := RoundTo((ICMS.vBC * ICMS.pICMS) / 100, -2);
                            ICMS.modBCST := dbisMargemValorAgregado;
                            ICMS.pMVAST := 0;
                            ICMS.pRedBCST := 00.00;
                            ICMS.vBCST := 0;
                            ICMS.pICMSST := 00.00;
                            ICMS.vICMSST := 0;
                            total_icms := total_icms + ICMS.vICMS;
                            total_base := total_base + ICMS.vBC;
                          end;
                        cst20:
                          begin
                            ICMS.orig := oeNacional;
                            ICMS.modBC := dbiValorOperacao;
                            ICMS.pRedBC := 0.00;
                            ICMS.vBC := RoundTo(qrItensVALOR_TOTAL.asfloat, -2);
                            ;
                            ICMS.pICMS := RoundTo(qrItensALIQUOTA.asfloat, -2);
                            ;
                            ICMS.vICMS := RoundTo((ICMS.vBC * ICMS.pICMS) / 100, -2);
                            ICMS.vICMSDeson := 0.00;
                            total_icms := total_icms + ICMS.vICMS;
                            total_base := total_base + ICMS.vBC;
                          end;
                        cst30:
                          begin
                            ICMS.orig := oeNacional;
                            ICMS.modBCST := dbisMargemValorAgregado;
                            ICMS.pMVAST := 0.00;
                            ICMS.pRedBCST := 0.00;
                            ICMS.vBCST := 0;
                            ICMS.pICMSST := 0;
                            ICMS.vICMSST := 0;
                            ICMS.vICMSDeson := 0.00;
                          end;
                        cst40, cst41, cst50:
                          begin
                            ICMS.orig := oeNacional;
                            ICMS.vICMSDeson := 0.00;
                          end;
                        cst51:
                          begin
                            ICMS.orig := oeNacional;
                            ICMS.modBC := dbiValorOperacao;
                            ICMS.pRedBC := 0.00;
                            ICMS.vBC := RoundTo(qrItensVALOR_TOTAL.asfloat, -2);
                            ;
                            ICMS.pICMS := RoundTo(qrItensALIQUOTA.asfloat, -2);
                            ;
                            ICMS.vICMSOp := 0.00;
                            ICMS.pDif := 0.00;
                            ICMS.vICMSDif := 0.00;
                            ICMS.vICMS := RoundTo((ICMS.vBC * ICMS.pICMS) / 100, -2);
                            total_icms := total_icms + ICMS.vICMS;
                            total_base := total_base + ICMS.vBC;
                          end;
                        cst60:
                          begin
                            ICMS.orig := oeNacional;
                            ICMS.vBCSTRet := 0.00;
                            ICMS.vICMSSTRet := 0.00;
                          end;
                        cst70:
                          begin
                            ICMS.orig := oeNacional;
                            ICMS.modBC := dbiValorOperacao;
                            ICMS.pRedBC := 0.00;
                            ICMS.vBC := RoundTo(qrItensVALOR_TOTAL.asfloat, -2);
                            ;
                            ICMS.pICMS := RoundTo(qrItensALIQUOTA.asfloat, -2);
                            ;
                            ICMS.vICMS := RoundTo((ICMS.vBC * ICMS.pICMS) / 100, -2);
                            ICMS.modBCST := dbisMargemValorAgregado;
                            ICMS.pMVAST := 0.00;
                            ICMS.pRedBCST := 0.00;
                            ICMS.vBCST := 0.00;
                            ICMS.pICMSST := 0.00;
                            ICMS.vICMSST := 0.00;
                            ICMS.vICMSDeson := 0.00;
                            total_icms := total_icms + ICMS.vICMS;
                            total_base := total_base + ICMS.vBC;
                          end;
                        cst90:
                          begin
                            ICMS.orig := oeNacional;
                            ICMS.modBC := dbiValorOperacao;
                            ICMS.vBC := RoundTo(qrItensVALOR_TOTAL.asfloat, -2);
                            ;
                            ICMS.pRedBC := 0.00;
                            ICMS.pICMS := RoundTo(qrItensALIQUOTA.asfloat, -2);
                            ;
                            ICMS.vICMS := RoundTo((ICMS.vBC * ICMS.pICMS) / 100, -2);
                            ICMS.modBCST := dbisMargemValorAgregado;
                            ICMS.pMVAST := 0.00;
                            ICMS.pRedBCST := 0.00;
                            ICMS.vBCST := 0.00;
                            ICMS.pICMSST := 0.00;
                            ICMS.vICMSST := 0.00;
                            ICMS.vICMSDeson := 0.00;
                            total_icms := total_icms + ICMS.vICMS;
                            total_base := total_base + ICMS.vBC;
                          end;
                      end;
                    end;
                  end;
                end;
              end;
            end;
          end;
          qrItens.Next;
        end;
//        if total_acrescimo <> rTotal_Acrescimo then
//          Det[Det.Count - 1].Prod.vOutro := Det[Det.Count - 1].Prod.vOutro + (rTotal_Acrescimo - total_acrescimo);
//        if total_desconto <> rTotal_Desconto then
//          Det[Det.Count - 1].Prod.vDesc := Det[Det.Count - 1].Prod.vDesc + (rTotal_Acrescimo - total_acrescimo);

        Total.ICMSTot.vBC := total_base;
        Total.ICMSTot.vICMS := total_icms;
        Total.ICMSTot.vBCST := 0;
        Total.ICMSTot.vST := 0;
        Total.ICMSTot.vProd := total_produtos;
        Total.ICMSTot.vFrete := 0;
        Total.ICMSTot.vSeg := 0;
        Total.ICMSTot.vDesc := total_desconto;
        Total.ICMSTot.vII := 0;
        Total.ICMSTot.vIPI := 0;
        Total.ICMSTot.vPIS := 0;
        Total.ICMSTot.vCOFINS := 0;
        Total.ICMSTot.vOutro := total_acrescimo;
        Total.ICMSTot.vNF := RoundTo(total_produtos + total_servico - total_desconto + total_acrescimo, -2);

        // partilha do icms e fundo de pobreza
        Total.ICMSTot.vFCPUFDest := 0.00;
        Total.ICMSTot.vICMSUFDest := 0.00;
        Total.ICMSTot.vICMSUFRemet := 0.00;
        Total.ICMSTot.vTotTrib := total_trib;

        Transp.modFrete := mfSemFrete; // NFC-e não pode ter FRETE
        PTroco := 0;
        divide := 0;
        if vRecebimento.Troco > 0 then begin
          cdsRecebimento.First;
          while not cdsRecebimento.Eof do begin
            if (cdsRecebimentoTipo.AsString = StRecDinheiro) or (cdsRecebimentoTipo.AsString = StRecCheque) then
              Inc(divide);
            cdsRecebimento.Next;
          end;
          PTroco := (vRecebimento.Troco / divide);
        end;
        cdsRecebimento.First;
        while not cdsRecebimento.Eof do begin
          with pag.add do // PAGAMENTOS apenas para NFC-e
          begin
            if (cdsRecebimentoTipo.AsString = StRecCheque) then
              tPag := fpCheque;
            if (cdsRecebimentoTipo.AsString = StRecCrediario) then
              tPag := fpCreditoLoja;
            if (cdsRecebimentoTipo.AsString = StRecCartaoDE) then begin
              tPag := fpCartaoDebito;
              tBand := StrToBandeiraCartao(ok, cdsRecebimentobandeira.AsString);
              tpIntegra := tiPagNaoIntegrado;
            end;
            if (cdsRecebimentoTipo.AsString = StRecCartaoCR) then begin
              tPag := fpCartaoCredito;
              tBand := StrToBandeiraCartao(ok, cdsRecebimentobandeira.AsString);
              tpIntegra := tiPagNaoIntegrado;
            end;
            if (cdsRecebimentoTipo.AsString = StRecDinheiro) then
              tPag := fpDinheiro;
            if (cdsRecebimentoTipo.AsString = StRecConvenio) then
              tPag := fpCreditoLoja;
            if (cdsRecebimentoTipo.AsString = StRecCartaoDE) or (cdsRecebimentoTipo.AsString = StRecCartaoCR) or (cdsRecebimentoTipo.AsString = StRecCrediario) or (cdsRecebimentoTipo.AsString = StRecConvenio) then
              vPag := cdsRecebimentovalor.AsFloat
            else
              vPag := cdsRecebimentovalor.AsFloat - PTroco;
          end;
          cdsRecebimento.Next;
        end;
        InfAdic.infCpl := 'Atendente: ' + sNome_Operador;
        if (cdsRecebimentoTipo.AsString = StRecDinheiro) then
          InfAdic.infCpl := 'Valor Entregue em Dinheiro: R$' + FormatFloat('#,##0.00',vRecebimento.ValorPago);
        if sVendedorNome <> '' then
          InfAdic.infCpl := InfAdic.infCpl + ';Vendedor: ' + sVendedorNome;

        if (sMensagem_Cupom.Lines.Text <> '') and (Men_Cup_NFCE) then
          InfAdic.infCpl := InfAdic.infCpl + ';' + sMensagem_Cupom.Lines.Text;
        if UtilizaSenha then begin
          InfAdic.infCpl := InfAdic.infCpl + ';' + 'Senha de Retirada: ' + IntToStr(SenhaImpressao);
        end;
        InfAdic.infAdFisco := '';
      end;
    end;
  except
    on E: Exception do
      Application.messagebox(PWideChar('Erro na geração da NFCE' + #13 + 'Erro: ' + E.Message), 'Erro', MB_OK + MB_ICONERROR);
  end;

end;

procedure TfrmVenda.GrupoClick(Sender: TObject);
var
  i, j: Integer;
begin
  for i := 0 to scGrupo.ComponentCount - 1 do begin
    if scGrupo.Components[i].Tag = TComponent(Sender).Tag then begin
      if scGrupo.Components[i].ClassType = TPanel then begin
        for j := 0 to scGrupo.Components[i].ComponentCount - 1 do begin
          if scGrupo.Components[i].Components[j].ClassType = TRzLabel then begin
            TRzLabel(TComponent(TPanel(scGrupo.Components[i]).Components[j])).Font.Color := clRed;
            TRzLabel(TComponent(TPanel(scGrupo.Components[i]).Components[j])).Font.Style := [fsBold];
          end;
        end;
      end;
    end
    else begin
      if scGrupo.Components[i].ClassType = TPanel then begin
        for j := 0 to scGrupo.Components[i].ComponentCount - 1 do begin
          if scGrupo.Components[i].Components[j].ClassType = TRzLabel then begin
            TRzLabel(TComponent(TPanel(scGrupo.Components[i]).Components[j])).Font.Color := clBlack;
            TRzLabel(TComponent(TPanel(scGrupo.Components[i]).Components[j])).Font.Style := [];
          end;
        end;
      end;
    end;
  end;
//  SetFocusedControl(TWinControl(Sender));
  MontaProdutos(TComponent(Sender).Tag);
end;

procedure TfrmVenda.PrepararImpressao;
begin
  ACBrSATExtratoFortes1.LarguraBobina := Sat_Largura;
  ACBrSATExtratoFortes1.MargemSuperior := Sat_MargemTopo;
  ACBrSATExtratoFortes1.MargemInferior := Sat_MargemFundo;
  ACBrSATExtratoFortes1.MargemEsquerda := Sat_MargemEsquerda;
  ACBrSATExtratoFortes1.MargemDireita := Sat_MargemDireita;
  ACBrSATExtratoFortes1.MostraPreview := Sat_Preview;
  if Sat_Impressora <> '' then
    ACBrSATExtratoFortes1.Impressora := Sat_Impressora;
end;

function TfrmVenda.PrepararNFCE: Boolean;
var
  Acao: string;
  i: Integer;
  Prestacao, Resto: Double;
  ContingenciaTemporaria: Boolean;
  Sender : TObject;
begin
  Result := True;
  nfce_autorizada := False;
  frmModulo.LerConfiguracao;
  if EdFormatoOff = 0 then
    frmtOffLine := teContingencia
  else
    frmtOffLine := teOffLine;
  vAux := frmModulo.codifica('888888');
  vNumNFCe := StrToInt(vAux);
  vSincrono := '1';
  vNumLote := vAux;
  Sincrono := True;
  with frmModulo do begin
    try
      ACBRNFCe.NotasFiscais.clear;

      Imprime_display('AGUARDE...  GERANDO NFC-E', clWhite, tiLivre);
      GerarNFCe(vAux);

      Imprime_display('AGUARDE...  ASSINANDO NFC-E', clWhite, tiLivre);
      ACBRNFCe.NotasFiscais.Assinar;

      Imprime_display('AGUARDE...  VALIDANDO NFC-E', clWhite, tiLivre);
      ACBRNFCe.NotasFiscais.Validar;

      if ACBRNFCe.Configuracoes.Geral.FormaEmissao <> frmtOffLine then begin
        Imprime_display('AGUARDE...  ENVIANDO NFC-E', clWhite, tiLivre);
        try
          ACBRNFCe.Enviar(vNumLote, False, Sincrono);
        except
          on E: Exception do begin
            Application.MessageBox(PWideChar(E.Message), 'Atenção!', MB_ICONINFORMATION);
            if(E.Message.Contains('12002')) then begin
              Imprime_display('Comunicação Ruim -> Não houve retorno da SEFAZ',clWhite,tiLivre);
              ContingenciaTemporaria := True;
//              frmModulo.ACBRNFCe.Configuracoes.Geral.FormaEmissao := frmtOffLine;
               ACBrNFCe.NotasFiscais.Items[0].NFe.Ide.tpEmis := teOffLine;
               ACBrNFCe.NotasFiscais.Items[0].NFe.Ide.dhCont := Now;
               ACBrNFCe.NotasFiscais.Items[0].NFe.Ide.xJust  := 'Nota fiscal emitida em contingência';

               //GerarNFCe(vAux);        <---- essa instrução fazia gerar 2 xml's e imprimir em duas vias
               ACBRNFCe.NotasFiscais.Assinar;
               ACBRNFCe.NotasFiscais.Validar;
               enviadoemcontingencia := True;
               ChaveNFCE := ACBRNFCe.NotasFiscais.Items[0].NFe.infNFe.Id;
               NumeroNFCe := StrToInt(vAux);
               
            end
            else begin
            

            if (E.Message.Contains('12007')) then begin
              Imprime_display('Comunicação Ruim -> Enviando em Contingência',clWhite,tiLivre);
              ContingenciaTemporaria := True;
              enviadoemcontingencia := True;
              ACBrNFCe.NotasFiscais.Items[0].NFe.Ide.tpEmis := teOffLine;
               ACBrNFCe.NotasFiscais.Items[0].NFe.Ide.dhCont := Now;
               ACBrNFCe.NotasFiscais.Items[0].NFe.Ide.xJust  := 'Nota fiscal emitida em contingência';

               //GerarNFCe(vAux);     <---- essa instrução fazia gerar 2 xml's e imprimir em duas vias
               ACBRNFCe.NotasFiscais.Assinar;
               ACBRNFCe.NotasFiscais.Validar;
               enviadoemcontingencia := True;
               ChaveNFCE := ACBRNFCe.NotasFiscais.Items[0].NFe.infNFe.Id;
               NumeroNFCe := StrToInt(vAux);
            end
            else begin
            Result := False;
            Exit;
            end;

            end;
          end;
        end;
        if ACBRNFCe.NotasFiscais.Items[0].Confirmada then begin
          if ACBRNFCe.WebServices.Enviar.cStat = 100 then begin
            cStatus := 100;
            ChaveNFCE := ACBRNFCe.NotasFiscais.Items[0].NFe.infNFe.Id;
            NumeroNFCe := StrToInt(vAux);
          end;
        end
        else begin
          Imprime_display(ACBRNFCe.WebServices.Enviar.xMotivo, clWhite, tiLivre);
        end;
      end
      else begin
        ChaveNFCE := ACBRNFCe.NotasFiscais.Items[0].NFe.infNFe.Id;
        NumeroNFCe := StrToInt(vAux);
      end;
      ACBRDANFENFCe.FastFile := 'C:\TALOS\PDV\Schemas\DANFeNFCe.fr3';
      if FileExists(frmPrincipal.LerINi(sConfiguracoes, 'PDV', 'CAMINHO_LOGO', '')) then
        ACBRDANFENFCe.Logo := frmPrincipal.LerINi(sConfiguracoes, 'PDV', 'CAMINHO_LOGO', '');

      //ACBRDANFENFCe.ImprimeDetalhamentoEspecifico := True;

      ACBRDANFENFCe.Impressora := sImpressora_Venda_Simples;
      //ACBRDANFENFCe.EspessuraBorda := edMargem;

//      ACBRDANFENFCe.Detalhado := True;
      ACBRDANFENFCe.vTroco := vRecebimento.Troco;
      ACBRDANFENFCe.Impressora := sImpressora_Venda_Simples;
//      ACBRDANFENFCe.ViaConsumidor := edDescEsta;
//      ACBRDANFENFCe.EspessuraBorda := edMargem;

      ACBRDANFENFCe.MargemDireita := edMargDir;
      ACBRDANFENFCe.MargemEsquerda := edMargEsq;
      ACBRDANFENFCe.MargemSuperior := edMargSup;
      ACBRDANFENFCe.MargemInferior := edMarginf;
      ACBRDANFENFCe.MostraPreview := bExibeCumponNFTela;

      if TipoImprimeCupom = 'P' then begin
        Acao := 'N';
        if Application.MessageBox('Deseja Imprimir o Cupom?', 'Atenção!', MB_ICONQUESTION + MB_YESNO) = IDYES then begin
          Acao := 'S';
          ACBRNFCe.NotasFiscais.Imprimir;
        end;
      end
      else begin
        Acao := 'S';
        ACBRNFCe.NotasFiscais.Imprimir;
      end;

      if (bCadastra_Crediario) and (rvalor_total_crediario > 0) and (iComprovente_Crediario = 1) and (Acao = 'S') then begin
        cdsParcelas.Close;
        cdsParcelas.CreateDataSet;
        Prestacao := RoundTo(rvalor_total_crediario / iCrediario_prestacao, -2);
        Resto := rvalor_total_crediario - (Prestacao * iCrediario_prestacao);

        for i := 1 to iCrediario_prestacao do begin
          cdsParcelas.Insert;
          cdsParcelasParcela.AsString := Zerar(IntToStr(i), 2);
          cdsParcelasVencimento.AsDateTime := IncMonth(dData_Sistema, i);
          if i <> iCrediario_prestacao then
            cdsParcelasValor.AsFloat := Prestacao
          else
            cdsParcelasValor.AsFloat := Prestacao + Resto;
          cdsParcelas.Post;
        end;
        if bEdicaoRelatorio then begin
          frComprovanteDebito.DesignReport;
        end
        else begin
          if bExibeCumponNFTela then
            frComprovanteDebito.ShowReport
          else begin
            frComprovanteDebito.PrepareReport(True);
            frComprovanteDebito.Print;
          end;
        end;
      end;

      ACBRNFCe.NotasFiscais.clear;

      if (cStatus = 100) or (frmModulo.ACBRNFCe.Configuracoes.Geral.FormaEmissao = frmtOffLine) or (ContingenciaTemporaria = True) then
        nfce_autorizada := True
      else
        nfce_autorizada := False;

      ContingenciaTemporaria := false;
    except
      on E: Exception do begin
        frmModulo.codifica('888888', 'D');
        Application.messagebox(PWideChar('Erro na geração da NFCE' + #13 + 'Erro: ' + E.Message), 'Erro', MB_OK + MB_ICONERROR);
        nfce_autorizada := False;
      end;

    end;

  end;

end;

procedure TfrmVenda.ProdutoClick(Sender: TObject);
var
  i, j: Integer;
begin
  MouseLeave(Sender);
  for i := 0 to scProduto.ComponentCount - 1 do begin
    if scProduto.Components[i].Tag = TComponent(Sender).Tag then begin
      if scProduto.Components[i].ClassType = TPanel then begin
        for j := 0 to scProduto.Components[i].ComponentCount - 1 do begin
          if scProduto.Components[i].Components[j].ClassType = TRzLabel then begin
            TRzLabel(TComponent(TPanel(scProduto.Components[i]).Components[j])).Font.Color := clRed;
            TRzLabel(TComponent(TPanel(scProduto.Components[i]).Components[j])).Font.Style := [fsBold];
          end;
        end;
      end;
    end
    else begin
      if scProduto.Components[i].ClassType = TPanel then begin
        for j := 0 to scProduto.Components[i].ComponentCount - 1 do begin
          if scProduto.Components[i].Components[j].ClassType = TRzLabel then begin
            TRzLabel(TComponent(TPanel(scProduto.Components[i]).Components[j])).Font.Color := clBlack;
            TRzLabel(TComponent(TPanel(scProduto.Components[i]).Components[j])).Font.Style := [];
          end;
        end;
      end;
    end;
  end;
  if not bVenda then begin
    try
      // verificar o serial do ecf
      // Abrir o cupom fiscal
      // bloquear ao teclado

      if not Abre_Venda then begin
        bLanca_pre_venda := False;
        bLanca_OS := False;
        bLanca_Mesa := False;
        bLanca_Abastecimento := False;
        // Caso o comando de abertura de venda retornou false, abortar o processo;
        Imprime_display('ERRO AO ABRIR O CUPOM!', clRed, tiErro);
        Exit;
      end;
    finally
      // desbloquear o teclado
    end;
  end;
  iPesquisa_produto := 1;
  if frmVenda.Localizar_Produto(Zerar(IntToStr(TComponent(Sender).Tag), 6)) then begin
    if (query.fieldbyname('usa_balanca').AsInteger = 1) and (bPesagemAutomatica) then begin
      ed_qtde.Value := RetornaPesoBalanca;
      rProd_qtde := ed_qtde.Value;
      if ed_qtde.Value = 0 then
        Exit;
    end
    else begin
      if ed_qtde.value > 0 then
        rProd_qtde := ed_qtde.Value
      else if ed_qtde.value <= 0 then
        ed_qtde.Value := rProd_qtde;
    end;
    qrTmp.Close;
    qrTmp.SQL.Clear;
    qrTmp.SQL.Add('select * from estoque est where est.codigo = ' + IntToStr(TComponent(Sender).Tag));
    qrTmp.Open;
    if qrTmp.FieldByName('pizza').AsString = 'S' then begin
      strPizza := Pizza(qrTmp.FieldByName('nome').AsString,rProd_preco);
      if strPizza.Sabores <> '' then begin
        ed_unitario.Value := rProd_preco;
        rProd_total := strPizza.Valor;
        Registra_Item;
      end;
    end else begin
      ed_unitario.Value := rProd_preco;
      rProd_total := Truncar_Valor(rProd_qtde * rProd_preco);
      Registra_Item;
    end;
  end;
end;

procedure TfrmVenda.ed_qtdeKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then begin
    if  (ed_qtde.Value >= 100.000) then begin
  ShowMessage('Digitado valor de quantidade maior do que o aceito pela SEFAZ');
  ed_qtde.Value := 1.00;

  end;
    if rProd_qtde <> ed_qtde.value then begin
      rProd_preco := frmModulo.PrecoDeVenda(iProd_codigo, ed_qtde.value);
      ed_unitario.Value := rProd_preco;
      rProd_qtde := ed_qtde.value;
      rProd_total := RoundTo(rProd_qtde * rProd_preco, -2);
      ed_total_item.Value := rProd_total;
    end;
    if (bMuda_unitario) then begin
      Imprime_display(sProd_nome, clWhite, tiInfo);
      ed_unitario.ReadOnly := False;
      ed_unitario.setfocus;
      Exit;
    end;
    if (bMuda_total) then begin
      Imprime_display(sProd_nome, clWhite, tiInfo);
      ed_total_item.ReadOnly := False;
      ed_total_item.setfocus;
      Exit;
    end
    else begin
      if (rProd_total <= 0) or (rProd_qtde <= 0) or (rProd_preco <= 0) then begin
        Imprime_display('TOTAL NÃO PODE SER ZERADO OU NEGATIVO!', clRed, tiErro);
        Sleep(2000);
        Exit;
      end;
      ed_barra.text := '';
      Registra_Item;
    end;
  end
  else if Key = #27 then begin
    Teclado.Visible := False;
  end;
end;

procedure TfrmVenda.ed_qtdeKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
begin

end;

// -------------------------------------------------------------------------- //

procedure TfrmVenda.ed_qtdeEnter(Sender: TObject);
begin
  // esconder o panel de cancelamento de item, caso esteja visivel
  if AtivaTouch then
    ed_qtde.ReadOnly := False;
  if (AtivaTouch) and (ExibeTecladoVirtual) then begin
    Teclado.KeyboardType := ktNUMERIC; //'NumPad';
    Teclado.Width := 330;
    Teclado.Left := RoundDiv((Screen.Width - Teclado.Width), 2);
    Teclado.Top := RoundDiv((Screen.Height - Teclado.Height), 2);
    Teclado.Visible := True;
  end;

end;

procedure TfrmVenda.ed_qtdeExit(Sender: TObject);
begin
  if (AtivaTouch) and (ExibeTecladoVirtual) then begin

    Teclado.Visible := False;

  end;








end;

// -------------------------------------------------------------------------- //

procedure TfrmVenda.ed_unitarioEnter(Sender: TObject);
begin
  // esconder o panel de cancelamento de item, caso esteja visivel
  if (AtivaTouch) and (ExibeTecladoVirtual) then begin
    Teclado.KeyboardType := ktNUMERIC; //'NumPad';
    Teclado.Width := 330;
    Teclado.Left := RoundDiv((Screen.Width - Teclado.Width), 2);
    Teclado.Top := RoundDiv((Screen.Height - Teclado.Height), 2);
    Teclado.Visible := True;
  end;
end;

procedure TfrmVenda.ed_unitarioExit(Sender: TObject);
begin
  if (AtivaTouch) and (ExibeTecladoVirtual) then
    Teclado.Visible := False;

end;

// -------------------------------------------------------------------------- //

procedure TfrmVenda.ed_total_itemKeyPress(Sender: TObject; var Key: Char);
var
  rd: real;
begin
  if Key = #13 then begin
    rprod_qtde := ed_total_item.value / ed_unitario.value;
    rProd_total := rProd_qtde * ed_unitario.Value;
    if rProd_total < ed_total_item.value then begin
      while formatfloat('########0.00', rProd_total) <> formatfloat('########0.00', ed_total_item.value) do begin
        rprod_qtde := rprod_qtde + 0.001;
        rProd_total := rprod_qtde * ed_unitario.Value;
      end;
    end
    else begin
      if rProd_total > ed_total_item.value then begin
        while formatfloat('########0.00', rProd_total) <> formatfloat('########0.00', ed_total_item.value) do begin
          rprod_qtde := rprod_qtde - 0.001;
          rProd_total := rprod_qtde * ed_unitario.Value;
        end;
      end;
    end;
    ed_qtde.value := rProd_qtde;
    if bMuda_unitario then begin
      if formatfloat('##########0.00', rProd_preco) <> formatfloat('##########0.00', ed_unitario.value) then begin
        // verificar seh eh desconto ou acrescimo
        if rProd_preco < ed_unitario.value then begin
          // foi acrescimo
          rProd_acrescimo := ed_unitario.value - rProd_preco;
        end
        else begin
          // foi desconto
          rProd_desconto := rProd_preco - ed_unitario.value;

          if (isenha_desconto = 1) and (rprod_desconto > 0) then begin
            if rProd_desconto_maximo > 0 then begin
              rd := (rprod_desconto / rProd_preco) * 100;
              if rd > rProd_desconto_maximo then begin
                frmsenha_supervisor := tfrmsenha_supervisor.create(self);
                frmsenha_supervisor.ValidaDesconto := True;
                frmsenha_supervisor.showmodal;
                if not bSupervisor_autenticado then
                  exit;
              end;
            end
            else begin
              frmsenha_supervisor := tfrmsenha_supervisor.create(self);
              frmsenha_supervisor.ValidaDesconto := True;
              frmsenha_supervisor.showmodal;
              if not bSupervisor_autenticado then
                exit;
            end;
          end;
        end;
      end;
    end;
    Registra_Item;
  end;
end;

procedure TfrmVenda.ACBrSAT1GetcodigoDeAtivacao(var Chave: AnsiString);
begin
  Chave := CodigoAtivacaoSAT;
end;

procedure TfrmVenda.ACBrSAT1GetsignAC(var Chave: AnsiString);
begin
  Chave := SwHAssinatura;
end;

procedure TfrmVenda.AcionaBalana1Click(Sender: TObject);
begin
  if frmModulo.balanca.Modelo <> balNenhum then begin
    try
      frmModulo.balanca.ativar;
      frmModulo.balanca.Ativo := True;
      rBal_peso := frmModulo.balanca.LePeso(iBal_time);
      Imprime_display('Peso do Produto: ' + FormatFloat('###,###,##0.00', rBal_peso), clYellow, tiPeso);
      frmModulo.balanca.Ativo := False;
      Application.ProcessMessages;
    except
      on E: Exception do begin
        Application.MessageBox(PWideChar('Ocorreu um erro ao tentar conectar-se a balança: ' + #13 + E.Message), 'Atenção!', MB_ICONINFORMATION);
        frmModulo.balanca.Ativo := False;
      end;
    end;
  end;
end;

procedure TfrmVenda.ConfiguraSAT;
var
  tmp, IniFile: string;
  Ini: TIniFile;
  Ok: Boolean;
  StreamMemo: TMemoryStream;
begin
  IniFile := sConfiguracoes;

  Ini := TIniFile.Create(IniFile);
  try
    with ACBrSAT1 do begin
      Modelo := TACBrSATModelo(Ini.ReadInteger('SAT', 'Modelo', 0));
      ArqLOG := Ini.ReadString('SAT', 'ArqLog', 'ACBrSAT.log');
      NomeDLL := Ini.ReadString('SAT', 'NomeDLL', 'C:\SAT\SAT.DLL');
      Config.ide_numeroCaixa := iNumCaixa;
      Config.ide_tpAmb := TpcnTipoAmbiente(Ini.ReadInteger('SAT', 'Ambiente', 1));
      Config.ide_CNPJ := Ini.ReadString('SwH', 'CNPJ', '');
      Config.emit_CNPJ := Ini.ReadString('Emit', 'CNPJ', '');
      Config.emit_IE := Ini.ReadString('Emit', 'IE', '');
      Config.emit_IM := Ini.ReadString('Emit', 'IM', '');
      Config.emit_cRegTrib := TpcnRegTrib(Ini.ReadInteger('Emit', 'RegTributario', 0));
      Config.emit_cRegTribISSQN := TpcnRegTribISSQN(Ini.ReadInteger('Emit', 'RegTribISSQN', 0));
      Config.emit_indRatISSQN := TpcnindRatISSQN(Ini.ReadInteger('Emit', 'IndRatISSQN', 0));
      Config.PaginaDeCodigo := Ini.ReadInteger('SAT', 'PaginaDeCodigo', 0);
      Config.EhUTF8 := Ini.ReadBool('SAT', 'UTF8', True);
      Config.infCFe_versaoDadosEnt := StringToFloat(FloatToString(Ini.ReadFloat('SAT', 'versaoDadosEnt', cversaoDadosEnt)));

      ConfigArquivos.SalvarCFe := Ini.ReadBool('SAT', 'SalvarCFe', True);
      ConfigArquivos.SalvarCFeCanc := Ini.ReadBool('SAT', 'SalvarCFeCanc', True);
      ConfigArquivos.SalvarEnvio := Ini.ReadBool('SAT', 'SalvarEnvio', True);
      ConfigArquivos.SepararPorCNPJ := Ini.ReadBool('SAT', 'SepararPorCNPJ', True);
      ConfigArquivos.SepararPorMes := Ini.ReadBool('SAT', 'SepararPorMES', True);
      ConfigArquivos.PastaCFeVenda := Ini.ReadString('SAT', 'PATH_SALVAR_VENDA', '');
      ConfigArquivos.PastaEnvio := Ini.ReadString('SAT', 'PATH_SALVAR_ENVIO', '');
      ConfigArquivos.PastaCFeCancelamento := Ini.ReadString('SAT', 'PATH_SALVAR_CANC', '');

    end;


    
    CodigoAtivacaoSAT := Ini.ReadString('SAT', 'CodigoAtivacao', '');
    SwHAssinatura := Ini.ReadString('SwH', 'Assinatura', '');
    Sat_FormatXML := Ini.ReadBool('SAT', 'FormatarXML', True);


    Sat_Largura := Ini.ReadInteger('Fortes', 'Largura', StrToInt(ACBrSATExtratoFortes1.MargemSuperior.ToString));
    Sat_MargemTopo := Ini.ReadInteger('Fortes', 'MargemTopo', StrToInt( ACBrSATExtratoFortes1.MargemSuperior.ToString));
    Sat_MargemFundo := Ini.ReadInteger('Fortes', 'MargemFundo', StrToInt(ACBrSATExtratoFortes1.MargemInferior.ToString));
    Sat_MargemEsquerda := Ini.ReadInteger('Fortes', 'MargemEsquerda',   StrToInt(ACBrSATExtratoFortes1.MargemEsquerda.ToString));
    Sat_MargemDireita := Ini.ReadInteger('Fortes', 'MargemDireita',  StrToInt(ACBrSATExtratoFortes1.MargemDireita.TOString));

    Sat_Largura := Ini.ReadInteger('Fortes', 'Largura', ACBrSATExtratoFortes1.LarguraBobina);
    Sat_MargemTopo := Ini.ReadInteger('Fortes', 'MargemTopo', Integer.Parse(ACBrSATExtratoFortes1.MargemSuperior.ToString));
    Sat_MargemFundo := Ini.ReadInteger('Fortes', 'MargemFundo', Integer.Parse(ACBrSATExtratoFortes1.MargemInferior.ToString));
    Sat_MargemEsquerda := Ini.ReadInteger('Fortes', 'MargemEsquerda', Integer.Parse(ACBrSATExtratoFortes1.MargemEsquerda.ToString));
    Sat_MargemDireita := Ini.ReadInteger('Fortes', 'MargemDireita', Integer.Parse(ACBrSATExtratoFortes1.MargemDireita.ToString));

    Sat_Preview := Ini.ReadBool('Fortes', 'Preview', True);

    Sat_Impressora := Ini.ReadString('Printer', 'Name', '');

    Sat_RedeTipoInter := Ini.ReadInteger('Rede', 'tipoInter', 0);
    Sat_RedeTipoLan := Ini.ReadInteger('Rede', 'tipoLan', 0);
    Sat_RedeSSID := Ini.ReadString('Rede', 'SSID', '');
    Sat_RedeSeg := Ini.ReadInteger('Rede', 'seg', 0);
    Sat_RedeCodigo := Ini.ReadString('Rede', 'codigo', '');
    Sat_RedeIP := Ini.ReadString('Rede', 'lanIP', '');
    Sat_RedeMask := Ini.ReadString('Rede', 'lanMask', '');
    Sat_RedeGW := Ini.ReadString('Rede', 'lanGW', '');
    Sat_RedeDNS1 := Ini.ReadString('Rede', 'lanDNS1', '');
    Sat_RedeDNS2 := Ini.ReadString('Rede', 'lanDNS2', '');
    Sat_RedeUsuario := Ini.ReadString('Rede', 'usuario', '');
    Sat_RedeSenha := Ini.ReadString('Rede', 'senha', '');
    Sat_RedeProxy := Ini.ReadInteger('Rede', 'proxy', 0);
    Sat_RedeProxyIP := Ini.ReadString('Rede', 'proxy_ip', '');
    Sat_RedeProxyPorta := Ini.ReadInteger('Rede', 'proxy_porta', 0);
    Sat_RedeProxyUser := Ini.ReadString('Rede', 'proxy_user', '');
    Sat_RedeProxySenha := Ini.ReadString('Rede', 'proxy_senha', '');

    Sat_CfopPadrao := Ini.ReadString('Valores', 'CFOP', '5102');

  finally
    Ini.Free;
  end;

end;

procedure TfrmVenda.ConsultadeClientes1Click(Sender: TObject);
begin
  Imprime_display('Consulta Cliente', clWhite, tiCliente);
  frmCliente_consulta := TfrmCliente_consulta.create(Self);
  frmCliente_consulta.showmodal;
  FreeAndNil(frmCliente_consulta);
  Imprime_display_anterior;
end;

// -------------------------------------------------------------------------- //

procedure TfrmVenda.ConsultadePreos1Click(Sender: TObject);
begin
  Imprime_display('Consulta de Preço', clWhite, tiPgto);
  //abre a tela de consulta de preco
  frmPreco_consulta := TfrmPreco_consulta.create(Self);
  frmPreco_consulta.showmodal;
  Imprime_display_anterior;
end;

procedure TfrmVenda.CorEditTotaL;
begin
  if frmPrincipal.TipoImpressora = SemImpressora then begin
    barraAtalho.Color := $006A3500;
  end
  else begin
    barraAtalho.Color := $00134017;
  end;
end;

// -------------------------------------------------------------------------- //

procedure TfrmVenda.Opes1Click(Sender: TObject);
begin
  // mostrar o panel contendo a legenda dos comandos do menu OPCOES
  pop_principal.Popup(frmVenda.left + 360, frmVenda.top + 330);
end;

// -------------------------------------------------------------------------- //

procedure TfrmVenda.PesquisadeProdutos1Click(Sender: TObject);
begin
  frmProduto_consulta := TfrmProduto_consulta.create(Self);
  iPesquisa_produto := 0;
  frmProduto_consulta.showmodal;

  if iProd_codigo > 0 then
    ed_barra.Text := IntToStr(iProd_codigo);

end;

// -------------------------------------------------------------------------- //

procedure TfrmVenda.Cupons1Click(Sender: TObject);
begin
  frmCupom_Menu := TfrmCupom_Menu.create(Self);
  frmCupom_Menu.showmodal;
end;

procedure TfrmVenda.cxGrid1DBBandedTableView1FocusedRecordChanged(Sender: TcxCustomGridTableView; APrevFocusedRecord, AFocusedRecord: TcxCustomGridRecord; ANewItemRecordFocusingChanged: Boolean);
begin
  if frmModulo.qrItensCANCELADO.AsInteger = 1 then
    btnCancelaItem.Caption := 'Descancelar Item'
  else
    btnCancelaItem.Caption := 'Cancelar Item';
end;

procedure TfrmVenda.AcionaGaveta1Click(Sender: TObject);
begin
  Gaveta_Abre;
end;

// -------------------------------------------------------------------------- //

procedure TfrmVenda.FecharCaixa1Click(Sender: TObject);
begin
  frmSenha_Supervisor := TfrmSenha_Supervisor.create(Self);
  frmSenha_Supervisor.FechaCaixa := True;
  frmSenha_Supervisor.showmodal;
  frmVenda.Imprime_display_anterior;

  if not bSupervisor_autenticado then
    Exit;

  try
    pn_tampa.Visible := True;
    if bFechamentoCego then begin
      frmFechamentoCego := TfrmFechamentoCego.create(Self);
      frmFechamentoCego.showmodal;
    end
    else begin
      frmCaixa_Fechamento := TfrmCaixa_Fechamento.create(Self);
      frmCaixa_Fechamento.showmodal;
    end;
  finally
    pn_tampa.visible := False;
  end;
end;

// -------------------------------------------------------------------------- //

procedure TfrmVenda.FormShow(Sender: TObject);
var
  I: Integer;
  sImgFundo: string;
  tmp, sCupomAbertoECF: string;
begin
  vExtra.Texto := '';
  vExtra.valor := 0;

  TipoImprimeCupom := frmPrincipal.LerINi(ExtractFilePath(Application.ExeName) + 'CFG\cfg.ini', 'Geral', 'IMPRESSAO CUPOM', 'S');
  sImpressora_Venda_Simples := frmPrincipal.LerINi(ExtractFilePath(Application.ExeName) + 'CFG\cfg.ini', 'Geral', 'IMPRESSORA VENDA SIMPLES', '');
  bExibeCumponNFTela := frmPrincipal.LerINi(ExtractFilePath(Application.ExeName) + 'CFG\cfg.ini', 'Geral', 'Exibir em Tela', '0') = '1';

  bImpressaoCozinha := frmPrincipal.LerINi(ExtractFilePath(Application.ExeName) + 'CFG\cfg.ini', 'Geral', 'IMPRESSORA ESPECIFICA', '0') = '1';
  sImpressora_Cozinha := frmPrincipal.LerINi(ExtractFilePath(Application.ExeName) + 'CFG\cfg.ini', 'Geral', 'IMPRESSORA COZINHA', '');

  bAtivaImpFicha := frmPrincipal.LerINi(ExtractFilePath(Application.ExeName) + 'CFG\cfg.ini', 'Geral', 'IMPRESSAO FICHA', '0') = '1';
  sImpressora_Ficha := frmPrincipal.LerINi(ExtractFilePath(Application.ExeName) + 'CFG\cfg.ini', 'Geral', 'IMPRESSORA FICHA', '');
  sCodigoSegurancaFicha := frmPrincipal.LerINi(ExtractFilePath(Application.ExeName) + 'CFG\cfg.ini', 'Geral', 'SEGURANCA FICHA', '');

  Touch_Colunas := StrToInt(frmPrincipal.LerINi(ExtractFilePath(Application.ExeName) + 'CFG\cfg.ini', 'Geral', 'Colunas Touch', '5'));
  Touch_Linhas := StrToInt(frmPrincipal.LerINi(ExtractFilePath(Application.ExeName) + 'CFG\cfg.ini', 'Geral', 'Linhas Touch', '5'));
  Touch_linhas_Grupo := StrToInt(frmPrincipal.LerINi(ExtractFilePath(Application.ExeName) + 'CFG\cfg.ini', 'Geral', 'Linhas Touch Grupo', '1'));
  Touch_Altura_Grupo := StrToInt(frmPrincipal.LerINi(ExtractFilePath(Application.ExeName) + 'CFG\cfg.ini', 'Geral', 'Altura Touch Grupo', '86'));

  UtilizaSenha := frmPrincipal.LerINi(ExtractFilePath(Application.ExeName) + 'CFG\cfg.ini', 'Geral', 'CONTROLE DE SENHA', '0') = '1';

  cpBarra.Panels[6].Visible := (TipoDeCupom = tcNFCE) or (TipoDeCupom = tcSAT);
  cpBarra.Panels[7].Visible := (TipoDeCupom = tcNFCE) or (TipoDeCupom = tcSAT);
  cpBarra.Panels[8].Visible := TipoDeCupom = tcNFCE;
  cpBarra.Panels[9].Visible := TipoDeCupom = tcNFCE;

  if TipoDeCupom = tcSAT then begin
    cpBarra.Panels[6].Text := 'Status S@T';
    cpBarra.Panels[6].Width := cpBarra.Panels[6].Width + 15;

    frmMsg_Operador.lb_msg.caption := 'Aguarde! Acessando o SAT...';
    frmMsg_Operador.Show;
    frmMsg_Operador.Refresh;
    Application.ProcessMessages;

    ConfiguraSAT;

    ACBrSAT1.Inicializar;
    if ACBrSAT1.Inicializado then begin
      ACBrSAT1.ConsultarStatusOperacional;
      if ACBrSAT1.Status.ESTADO_OPERACAO = opDESBLOQUEADO then begin
        SatOk := True;
        TdxStatusBarStateIndicatorPanelStyle(cpBarra.Panels[7].PanelStyle).Indicators[0].IndicatorType := sitGreen
      end
      else begin
        SatOk := False;
        TdxStatusBarStateIndicatorPanelStyle(cpBarra.Panels[7].PanelStyle).Indicators[0].IndicatorType := sitRed;
      end;
    end
    else begin
      SatOk := False;
      TdxStatusBarStateIndicatorPanelStyle(cpBarra.Panels[7].PanelStyle).Indicators[0].IndicatorType := sitRed;
    end;
  end;
  frmModulo.qrconfig.Close;
  frmModulo.qrconfig.Open;
  Limpa_controles;
  bMudouProvisorio := False;
  if (TipoDeCupom <> tcSimples) then begin
    if frmPrincipal.LerINi(ExtractFilePath(Application.ExeName) + 'CFG\cfg.ini', 'PDV', 'Inicia', 'F') = 'F' then
      iImpressora := 0
    else
      iImpressora := 1;

    ImgTipoImpressora(iImpressora);
    CorEditTotaL;
  end;
 // CentralizarPanel(pnFundo);
  sCupomAbertoECF := '';
  cpBarra.Panels[5].Text := frmModulo.Conexao_Servidor.Server;

  sImgFundo := ExtractFilePath(Application.ExeName) + 'img\fundo_venda.jpg';

  if FileExists(sImgFundo) then
    imgFundo.Picture.LoadFromFile(sImgFundo);

  bIdentificarVendedor := LerParametro('INFORMAR_VENDEDOR', 'I', 0);
  iColunaCOnsultaProdutos := LerParametro('COLUNA_CONSULTA_PRODUTOS', 'I', 0);

  timer_cargaTimer(frmVenda);

  // verificar se existem cupons abertos e fazer o tratamento //**
  sCupomAbertoECF := LerIni(sConfiguracoes, 'PDV', 'Aberto', 'NAO');
  pnTotal.Visible := not AtivaTouch;
  colBotDiminuir.Visible := AtivaTouch;
  colBotAlmuntar.Visible := AtivaTouch;
  if (sCupomAbertoECF = 'SIM') or (bcupom_aberto) then
    Cancela_cupom_aberto;
end;

procedure TfrmVenda.frComprovanteDebitoBeforePrint(Sender: TfrxReportComponent);

  function FormatarCPFCNPJ(const sDoc: string): string;
  var
    Doc: string;
  begin
    Doc := somenteNumero(sDoc);
    if (Length(Doc) = 11) then begin
      Result := Copy(Doc, 1, 3) + '.' + Copy(Doc, 4, 3) + '.' + Copy(Doc, 7, 3) + '-' + Copy(Doc, 10, 2);
    end;
    if (Length(Doc) = 14) then begin
      Result := Copy(Doc, 1, 2) + '.' + Copy(Doc, 3, 3) + '.' + Copy(Doc, 6, 3) + '/' + Copy(Doc, 9, 4) + '-' + Copy(Doc, 13, 2);
    end;
  end;

begin
  if TfrxMemoView(Sender).Name = 'lbEmpresa' then
    TfrxMemoView(Sender).Text := edtEmitFantasia;
  if TfrxMemoView(Sender).Name = 'lbDocEmpresa' then
    TfrxMemoView(Sender).Text := FormatarCPFCNPJ(edtEmitCNPJ);
  if TfrxMemoView(Sender).Name = 'lbDataHora' then
    TfrxMemoView(Sender).Text := 'DATA: ' + FormatDateTime('DD/MM/YYYY', Date) + ' HORA: ' + FormatDateTime('HH:MM:SS', Time);
  if TfrxMemoView(Sender).Name = 'lbCupom' then
    TfrxMemoView(Sender).Text := Zerar(sNumero_Cupom, 6);
  if TfrxMemoView(Sender).Name = 'lbCliente' then
    TfrxMemoView(Sender).Text := sCli_codigo + '-' + sCli_Nome;
  if TfrxMemoView(Sender).Name = 'lbEndereco' then
    TfrxMemoView(Sender).Text := sCli_Endereco;
  if TfrxMemoView(Sender).Name = 'lbDocCliente' then
    TfrxMemoView(Sender).Text := FormatarCPFCNPJ(sCli_CPF);
  if TfrxMemoView(Sender).Name = 'lbPegoPor' then
    TfrxMemoView(Sender).Text := sCLi_PegoPor;
  if TfrxMemoView(Sender).Name = 'lbPegoPor' then
    TfrxMemoView(Sender).Text := sCLi_PegoPor;
end;

procedure TfrmVenda.frxDesigner1GetTemplateList(List: TStrings);
begin

end;

// -------------------------------------------------------------------------- //

procedure TfrmVenda.Sangria1Click(Sender: TObject);
begin
  if not bVenda then begin
    frmSangria := TfrmSangria.create(Self);
    frmSangria.showmodal;
  end;
end;

procedure TfrmVenda.scGrupoMouseWheelDown(Sender: TObject; Shift: TShiftState; MousePos: TPoint; var Handled: Boolean);
begin
  with scGrupo.VertScrollBar do begin
    Position := Position + Increment;
  end;
end;

procedure TfrmVenda.scGrupoMouseWheelUp(Sender: TObject; Shift: TShiftState; MousePos: TPoint; var Handled: Boolean);
begin
  with scGrupo.VertScrollBar do begin
    Position := Position - Increment;
  end;
end;

procedure TfrmVenda.btnDimQtdClick(Sender: TObject);
begin
  if ed_qtde.Value > 0 then
    ed_qtde.Value := ed_qtde.Value - 1;
end;

procedure TfrmVenda.btnAumQtdClick(Sender: TObject);
begin
  ed_qtde.Value := ed_qtde.Value + 1;
end;

procedure TfrmVenda.sp_total_pagarContextPopup(Sender: TObject; MousePos: TPoint; var Handled: Boolean);
begin

end;

// -------------------------------------------------------------------------- //

procedure TfrmVenda.Suprimento1Click(Sender: TObject);
begin
  if not bVenda then begin
    frmSuprimento := TfrmSuprimento.create(Self);
    frmSuprimento.showmodal;
  end;
end;

// -------------------------------------------------------------------------- //

procedure TfrmVenda.rocarOperador1Click(Sender: TObject);
begin
  sFuncao_Senha := '001';
  frmsenha := Tfrmsenha.create(Self);
  frmsenha.showmodal;

  if busuario_autenticado then begin
    // mudar o nome do usuario na tela de venda
    cpBarra.Panels.Items[1].Text := Copy(sNome_Operador, 1, 10);



    Application.MessageBox('Troca efetuada com sucesso!', 'Aviso', MB_OK + MB_ICONINFORMATION);

  end;

end;

// -------------------------------------------------------------------------- //

procedure TfrmVenda.C1Click(Sender: TObject);
begin
  frmIdentifica := TfrmIdentifica.Create(Self);
  frmIdentifica.ShowModal;
  if (TipoDeCupom <> tcSimples) then begin
    if sConsumidor_CPF <> '' then
      frmPrincipal.TipoImpressora := SemImpressora;
    CorEditTotaL;
  end;

end;

procedure TfrmVenda.CaixaIndisponvel1Click(Sender: TObject);
begin
  if bVenda then
    Exit;

  frmProtetor_tela := TfrmProtetor_tela.Create(Self);
  frmProtetor_tela.ShowModal;
end;

// -------------------------------------------------------------------------- //

procedure TfrmVenda.menu_PrevendaClick(Sender: TObject);
begin
  if menu_Prevenda.Visible = False then
    Exit;

  if bVenda then begin
    Imprime_display('Venda Aberta!', clRed, tiErro);
    Sleep(1500);
    Imprime_display_anterior;
    Exit;
  end;

  if not bServidor_Conexao then begin
    repeat
    try
      frmModulo.Conexao_Servidor.Connected := False;
      frmModulo.Conexao_Servidor.Connected := True;
      bServidor_Conexao := True;
    except
      on E: Exception do begin
        if Application.messagebox(PWideChar('Erro na conexão com o banco de dados do servidor!' + #13 + 'Mensagem: ' + E.Message + #13 + 'Deseja tentar outra vez?'), 'Erro', MB_YESNO + MB_ICONERROR) = IDNO then begin
          Break;
        end;
      end;
    end;
    until bServidor_Conexao = True;
  end;
  if not bServidor_Conexao then
    Exit;

  bLanca_pre_venda := False;

  frmPre_Venda := TfrmPre_Venda.create(Self);
  frmPre_Venda.showmodal;

  // iniciar a impressao da pre-venda
  if bLanca_pre_venda then begin
    Imprime_display('Iniciando impressão da Pré-venda!', clWhite, tiInfo);
    try
      // verificar o serial do ecf
      // Abrir o cupom fiscal
      // bloquear ao teclado
      //BlockInput(true);
      if not Abre_Venda then begin
        // Caso o comando de abertura de venda retornou false, abortar o processo;
        Imprime_display('ERRO AO ABRIR O CUPOM!', clRed, tiErro);
        Exit;
      end;
    finally
      // desbloquear o teclado
      //BlockInput(False);
    end;

    // vender os itens
    // rodar a query do modulo filtrada com os produtos da pre-venda
    frmModulo.query_servidor.first;
    while not frmModulo.query_servidor.eof do begin
      sProd_nome := frmModulo.query_servidor.fieldbyname('produto').asstring;
      sProd_unidade := frmModulo.query_servidor.fieldbyname('unidade').asstring;
      sProd_CST := frmModulo.query_servidor.fieldbyname('cst').asstring;
      rProd_aliquota := frmModulo.query_servidor.fieldbyname('aliquota').asfloat;
      iProd_codigo := frmModulo.query_servidor.fieldbyname('codproduto').asinteger;
      sProd_barra := frmModulo.query_servidor.fieldbyname('codbarra').asstring;
      rProd_qtde := frmModulo.query_servidor.fieldbyname('qtde').asfloat;
      rProd_preco := frmModulo.query_servidor.fieldbyname('unitario').asfloat;
      rProd_total := frmModulo.query_servidor.fieldbyname('total').asfloat;
      rProd_desconto := frmModulo.query_servidor.fieldbyname('desconto').asfloat;
      rProd_acrescimo := frmModulo.query_servidor.fieldbyname('acrescimo').asfloat;
      sProd_Tamanho := '';
      sProd_Cor := '';

      // registrar o item
      Registra_Item;
      Application.ProcessMessages;
      frmModulo.query_servidor.next;
    end;
    FecharCupom1Click(frmVenda);
  end;
end;

procedure TfrmVenda.mmSatClick(Sender: TObject);
begin
  Application.CreateForm(TfrmCuponsSAT, frmCuponsSAT);
  frmCuponsSAT.ShowModal;
  FreeAndNil(frmCuponsSAT);
end;

// -------------------------------------------------------------------------- //

procedure TfrmVenda.Oramento1Click(Sender: TObject);
begin
  if Oramento1.visible = False then
    Exit;

  if not bServidor_Conexao then begin
    repeat
    try
      frmModulo.Conexao_Servidor.Connected := False;
      frmModulo.Conexao_Servidor.Connected := True;
    except
      if Application.messagebox(PWideChar('Não foi possível se conectar ao servidor!' + #13 + 'Deseja tentar outra vez?'), 'Erro', MB_YESNO + MB_ICONERROR) = IDNO then
        Break;
    end;
    until frmModulo.conexao_servidor.Connected;
  end;

  if not bServidor_Conexao then
    Exit;

  bLanca_OS := False;
  frmOrcamento_Abrir := TfrmOrcamento_Abrir.create(Self);
  frmOrcamento_Abrir.showmodal;

  // iniciar a impressao da pre-venda
  if bLanca_OS then begin
    Imprime_display('Iniciando impressão do Cupom!', clWhite, tiInfo);
    try
      // verificar o serial do ecf
      // Abrir o cupom fiscal
      // bloquear ao teclado
      //BlockInput(true);
      if not Abre_Venda then begin
        // Caso o comando de abertura de venda retornou false, abortar o processo;
        Imprime_display('ERRO AO ABRIR O CUPOM!', clRed, tiErro);
        Exit;
      end;
    finally
      // desbloquear o teclado
      //BlockInput(False);
    end;

    // vender os itens
    // rodar a query do modulo filtrada com os produtos da pre-venda
    frmModulo.query_servidor.first;
    while not frmModulo.query_servidor.eof do begin
      sProd_nome := frmModulo.query_servidor.fieldbyname('produto').asstring;
      sProd_unidade := frmModulo.query_servidor.fieldbyname('unidade').asstring;
      sProd_CST := frmModulo.query_servidor.fieldbyname('cst').asstring;
      rProd_aliquota := frmModulo.query_servidor.fieldbyname('aliquota').asfloat;
      iProd_codigo := frmModulo.query_servidor.fieldbyname('codproduto').asinteger;
      sProd_barra := frmModulo.query_servidor.fieldbyname('codbarra').asstring;
      rProd_qtde := frmModulo.query_servidor.fieldbyname('qtde').asfloat;
      rProd_preco := frmModulo.query_servidor.fieldbyname('unitario').asfloat;
      rProd_total := frmModulo.query_servidor.fieldbyname('total').asfloat;
      rProd_desconto := frmModulo.query_servidor.fieldbyname('desconto').asfloat;
      rProd_acrescimo := frmModulo.query_servidor.fieldbyname('acrescimo').asfloat;
      sProd_Tamanho := '';
      sProd_Cor := '';

      // registrar o item
      Registra_Item;
      Application.ProcessMessages;
      frmModulo.query_servidor.next;
    end;

    query.CLOSE;
    query.SQL.CLEAR;
    query.SQL.ADD('UPDATE DAV SET COO_CUPOM_FISCAL = ''' + sNumero_Cupom + ''',');
    query.SQL.ADD('CCF = ''' + sNumero_contador_cupom + ''' where numero = ''' + SDAV_ATUALIZADO + '''');
    query.ExecSQL;

    frmModulo.query_servidor.close;
    frmModulo.query_servidor.sql.clear;
    frmModulo.query_servidor.sql.add('update c000074 set tipo = 10 where codigo = ''' + Zerar(IntToStr(iOS_codigo), 6) + '''');
    frmModulo.query_servidor.ExecSQL;

    FecharCupom1Click(frmVenda);
  end;
end;

// -------------------------------------------------------------------------- //

procedure TfrmVenda.AdvMetroButton1Click(Sender: TObject);
begin
  Sair1.Click;
end;

procedure TfrmVenda.AdvMetroButton2Click(Sender: TObject);
begin
  Application.Minimize;
end;

procedure TfrmVenda.AjustaDescontoAcrescimo(Desconto, Acrescimo: Double);
var
  TotDes, TotAcr: Double;
begin
  if (Desconto <> 0) or (Acrescimo <> 0) then begin
    with frmModulo do begin
      TotDes := 0;
      TotAcr := 0;
      qrItemAJ.Close;
      qrItemAJ.Open;
      qrItemAJ.First;
      while not qrItemAJ.Eof do begin
        qrItemAJ.Edit;
        if Desconto > 0 then
          qrItemAJVALOR_DESCONTO.AsFloat := qrItemAJVALOR_DESCONTO.AsFloat + RoundTo(((qrItemAJVALOR_TOTAL.AsFloat / rTotal_Venda) * Desconto), -2);
        if Acrescimo > 0 then
          qrItemAJVALOR_ACRESCIMO.AsFloat := qrItemAJVALOR_ACRESCIMO.AsFloat + RoundTo(((qrItemAJVALOR_TOTAL.AsFloat / rTotal_Venda) * Acrescimo), -2);
        qrItemAJVALOR_TOTAL.AsFloat := qrItemAJVALOR_SUBTOTAL.AsFloat - qrItemAJVALOR_DESCONTO.AsFloat + qrItemAJVALOR_ACRESCIMO.AsFloat;
        TotDes := TotDes + qrItemAJVALOR_DESCONTO.AsFloat;
        TotAcr := TotAcr + qrItemAJVALOR_ACRESCIMO.AsFloat;
        qrItemAJ.Post;
        qrItemAJ.Next;
      end;
      qrItens.Close;
      qrItens.Open;
    end;
  end;

end;

procedure TfrmVenda.Assinararquivo1Click(Sender: TObject);
begin
  frmModulo.Dlg_arquivo.Filter := 'Arquivo Texto|*.txt';
  frmModulo.Dlg_arquivo.Title := 'Assinar arquivo';
  if frmModulo.Dlg_arquivo.Execute then begin
    assinatura_digital(frmModulo.Dlg_arquivo.FileName);
  end;
end;

// -------------------------------------------------------------------------- //

procedure TfrmVenda.Recebimento1Click(Sender: TObject);
begin
  if not bServidor_Conexao then begin
    repeat
    try
      frmModulo.Conexao_Servidor.Connected := False;
      frmModulo.Conexao_Servidor.Connected := True;
    except
      if Application.messagebox(PWideChar('Não foi possível se conectar ao servidor!' + #13 + 'Deseja tentar outra vez?'), 'Erro', MB_YESNO + MB_ICONERROR) = IDNO then
        Break;
    end;
    until frmModulo.conexao_servidor.Connected;
  end;

  if not bServidor_Conexao then
    Exit;


//  frmContasReceber := tfrmcontasReceber.create(self);
  Application.CreateForm(Tfrmcontasreceber, frmcontasreceber);
  frmcontasreceber.showmodal;
end;

// -------------------------------------------------------------------------- //

procedure TfrmVenda.Menu_osClick(Sender: TObject);
begin
//  if Menu_os.Visible = false then exit;


  if bVenda then begin
    Imprime_display('Venda Aberta!', clRed, tiErro);
    Sleep(1500);
    Imprime_display_anterior;
    Exit;
  end;

  if not bServidor_Conexao then begin
    repeat
    try
      frmModulo.Conexao_Servidor.Connected := False;
      frmModulo.Conexao_Servidor.Connected := True;
      bServidor_Conexao := True;
    except
      on E: Exception do begin
        if Application.messagebox(PWideChar('Erro na conexão com o banco de dados do servidor!' + #13 + 'Mensagem: ' + E.Message + #13 + 'Deseja tentar outra vez?'), 'Erro', MB_YESNO + MB_ICONERROR) = IDNO then begin
          Break;
        end;
      end;
    end;
    until bServidor_Conexao = True;
  end;
  if not bServidor_Conexao then
    Exit;

  bLanca_OS := False;

  frmOS := TfrmOS.create(Self);
  frmOS.showmodal;

  // iniciar a impressao da pre-venda
  if bLanca_OS then begin
    Imprime_display('Iniciando impressão da O.S.!', clWhite, tiInfo);
    try
      // Abrir o cupom fiscal
      if not Abre_Venda then begin
        // Caso o comando de abertura de venda retornou false, abortar o processo;
        Imprime_display('ERRO AO ABRIR O CUPOM!', clRed, tiErro);
        Exit;
      end;
    finally
    end;

    // vender os servicos
    // fazer a soma dos serviso e lancar comO:
    // 9999999999999 Prestação de Serviço Municipal    Valor Unitario R$ 1,00   Nao Tributado

    frmModulo.query_servidor2.SQL.CLEAR;
    frmModulo.query_servidor2.SQL.ADD('select sum(valor) total from c000053');
    frmModulo.query_servidor2.sql.add('where codos = ''' + Zerar(IntToStr(iOS_codigo), 6) + '''');
    frmModulo.query_servidor2.OPEN;

    query.CLOSE;
    query.SQL.CLEAR;
    query.SQL.ADD('UPDATE DAV SET COO_CUPOM_FISCAL = ''' + sNumero_Cupom + ''',');
    query.SQL.ADD('CCF = ''' + sNumero_contador_cupom + ''' where numero = ''' + SDAV_ATUALIZADO + '''');
    query.ExecSQL;

    if frmModulo.query_servidor2.fieldbyname('total').asfloat > 0 then begin
      sProd_nome := 'PRESTAC.DE SERVICO MUNICIPAL';
      sProd_unidade := 'UN';
      sProd_CST := '041';
      rProd_aliquota := 0;
      iProd_codigo := 999999;
      sProd_barra := '9999999999999';
      rProd_qtde := frmModulo.query_servidor2.fieldbyname('total').asfloat;
      rProd_preco := 1;
      rProd_total := frmModulo.query_servidor2.fieldbyname('total').asfloat;
      rProd_desconto := 0;
      rProd_acrescimo := 0;
      sProd_Tamanho := '';
      sProd_Cor := '';

      // registrar o item
      Registra_Item;
      Application.ProcessMessages;
    end;


    // vender os itens
    // rodar a query do modulo filtrada com os produtos da pre-venda
    frmModulo.query_servidor.first;
    while not frmModulo.query_servidor.eof do begin
      sProd_nome := frmModulo.query_servidor.fieldbyname('produto').asstring;
      sProd_unidade := frmModulo.query_servidor.fieldbyname('unidade').asstring;
      sProd_CST := frmModulo.query_servidor.fieldbyname('cst').asstring;
      rProd_aliquota := frmModulo.query_servidor.fieldbyname('aliquota').asfloat;
      iProd_codigo := frmModulo.query_servidor.fieldbyname('codproduto').asinteger;
      sProd_barra := frmModulo.query_servidor.fieldbyname('codbarra').asstring;
      rProd_qtde := frmModulo.query_servidor.fieldbyname('qtde').asfloat;
      rProd_preco := frmModulo.query_servidor.fieldbyname('unitario').asfloat;
      rProd_total := frmModulo.query_servidor.fieldbyname('total').asfloat;
      rProd_desconto := frmModulo.query_servidor.fieldbyname('desconto').asfloat;
      rProd_acrescimo := frmModulo.query_servidor.fieldbyname('acrescimo').asfloat;
      sProd_Tamanho := '';
      sProd_Cor := '';

      // registrar o item
      Registra_Item;
      Application.ProcessMessages;
      frmModulo.query_servidor.next;
    end;
    FecharCupom1Click(frmVenda);
  end;
end;

procedure TfrmVenda.menu_mesaClick(Sender: TObject);
var
  nItem: Integer;
  Maior, ppValor:Double;
  ppCodigo:string;
begin
  if menu_mesa.Visible = False then
    Exit;

  if bVenda then begin
    Imprime_display('Venda Aberta!', clRed, tiErro);
    Sleep(1500);
    Imprime_display_anterior;
    Exit;
  end;

  if not bServidor_Conexao then begin
    repeat
    try
      frmModulo.Conexao_Servidor.Connected := False;
      frmModulo.Conexao_Servidor.Connected := True;
      bServidor_Conexao := True;
    except
      on E: Exception do begin
        if Application.messagebox(PWideChar('Erro na conexão com o banco de dados do servidor!' + #13 + 'Mensagem: ' + E.Message + #13 + 'Deseja tentar outra vez?'), 'Erro', MB_YESNO + MB_ICONERROR) = IDNO then begin
          Break;
        end;
      end;
    end;
    until bServidor_Conexao = True;
  end;
  if not bServidor_Conexao then
    Exit;

  bLanca_Mesa := False;

  frmMesas := TfrmMesas.create(Self);
  frmMesas.showmodal;

  // iniciar a impressao da pre-venda
  if bLanca_Mesa then begin
    Imprime_display('Iniciando impressão do Consumo!', clWhite, tiInfo);
    try
      // verificar o serial do ec
      // Abrir o cupom fiscal
      // bloquear ao teclado
      //BlockInput(True);
      if not Abre_Venda then begin
        // Caso o comando de abertura de venda retornou false, abortar o processo;
        Imprime_display('ERRO AO ABRIR O CUPOM!', clRed, tiErro);
        Exit;
      end;
    finally
      // desbloquear o teclado
      //BlockInput(False);
    end;

    // vender os itens
    // rodar a query do modulo filtrada com os produtos da pre-venda
    frmModulo.query_servidor.first;
    nItem := 1;
    frmModulo.qrMesas.Close;
    frmModulo.qrMesas.ParamByName('cod').AsInteger := frmModulo.query_servidor.fieldbyname('COD_MESA').AsInteger;
    frmModulo.qrMesas.Open;
    while not frmModulo.query_servidor.eof do begin
      if frmModulo.query_servidor.fieldbyname('cancelado').asfloat = 0 then begin
        cdsLancaProdutos.Close;
        cdsLancaProdutos.CreateDataSet;
        sProd_nome := frmModulo.query_servidor.fieldbyname('produto').asstring;
        sProd_unidade := frmModulo.query_servidor.fieldbyname('unidade').asstring;
        sProd_CST := frmModulo.query_servidor.fieldbyname('cst').asstring;
        rProd_aliquota := frmModulo.query_servidor.fieldbyname('aliquota').asfloat;
        iProd_codigo := frmModulo.query_servidor.fieldbyname('cod_produto').asinteger;
        sProd_barra := frmModulo.query_servidor.fieldbyname('codbarra').asstring;
        rProd_qtde := frmModulo.query_servidor.fieldbyname('qtde').asfloat;
        rProd_preco := frmModulo.query_servidor.fieldbyname('unitario').asfloat;
        rProd_total := frmModulo.query_servidor.fieldbyname('total').asfloat;
        sProd_Compl_Pizza := frmModulo.query_servidor.fieldbyname('complemento').AsString;
        rProd_desconto := 0;
        rProd_acrescimo := frmModulo.query_servidor.fieldbyname('acrescimo').asfloat;
        sProd_Tamanho := '';
        sProd_Cor := '';
        vExtra.Texto := frmModulo.query_servidor.fieldbyname('extra').AsString;
        // registrar o item
        frmModulo.query_servidor2.Close;
        frmModulo.query_servidor2.SQL.Clear;
        frmModulo.query_servidor2.SQL.Add('select * from r000004 where codigo = ' + QuotedStr(frmModulo.query_servidor.FieldByName('codigo').AsString));
        frmModulo.query_servidor2.Open;
        frmModulo.query_servidor2.First;
        strPizza.Pizza := '';
        strPizza.Sabores := '';
        strPizza.Valor := 0;
        SetLength(strPizza.Produtos,0);
        strPizza.ProdutoPrincipal.Codigo := '';
        strPizza.ProdutoPrincipal.Valor := 0;
        while not frmModulo.query_servidor2.Eof do begin
          cdsLancaProdutos.Insert;
          cdsLancaProdutosCODPRO.AsString := frmModulo.query_servidor2.FieldByName('CODPRO').AsString;
          cdsLancaProdutosQTDE.AsFloat := frmModulo.query_servidor2.FieldByName('QTDE').AsFloat;
          cdsLancaProdutos.Post;
          frmModulo.query_servidor2.Next;
        end;
        Registra_Item;
        Inc(nItem);
      end;
      Application.ProcessMessages;
      frmModulo.query_servidor.next;
    end;

    if rTotal_Venda <= 0 then begin
      Cancela_cupom_aberto;

      // excluir a mesa e os itens
      frmModulo.query_servidor.close;
      frmModulo.query_servidor.sql.clear;
      frmModulo.query_servidor.sql.add('delete from r000002 where cod_mesa =' + IntToStr(iMesa_codigo));
      frmModulo.query_servidor.ExecSQL;

      frmModulo.query_servidor.close;
      frmModulo.query_servidor.sql.clear;
      frmModulo.query_servidor.sql.add('delete from r000001 where codigo =' + IntToStr(iMesa_codigo));
      frmModulo.query_servidor.ExecSQL;
    end
    else begin
      rTotal_Comissao := 0;
      rTotal_Couvert := 0;
      with frmModulo do begin
        if qrMesasCLIENTE_AUTORIZOU.AsString = 'S' then begin
          rTotal_Comissao := (rTotal_Venda * qrconfigCOMISSAO_PERCENTUAL.AsFloat) / 100;
        end
        else begin
          if qrconfigCOBRA_COMISSAO.AsString = 'O' then
            rTotal_Comissao := (rTotal_Venda * qrconfigCOMISSAO_PERCENTUAL.AsFloat) / 100;
          if qrconfigCOBRA_COMISSAO.AsString = 'P' then
            if Application.MessageBox('Cliente autorizou incluir taxa do garçon na comanda?', 'Atenção?', MB_ICONQUESTION + MB_YESNO) = mrYes then
              rTotal_Comissao := (rTotal_Venda * qrconfigCOMISSAO_PERCENTUAL.AsFloat) / 100;
        end;
        if rTotal_Comissao > 0 then
          rTotal_Venda := rTotal_Venda + rTotal_Comissao;
        if qrconfigVALOR_COUVER.AsFloat > 0 then begin
          rTotal_Couvert := qrconfigVALOR_COUVER.AsFloat;
          rTotal_Venda := rTotal_Venda + rTotal_Couvert;
        end;
      end;
      FecharCupom1Click(frmVenda);
    end;
  end;
end;

procedure TfrmVenda.tmContigenciaTimer(Sender: TObject);
begin
  if TdxStatusBarStateIndicatorPanelStyle(cpBarra.Panels[7].PanelStyle).Indicators[0].IndicatorType = sitRed then
    TdxStatusBarStateIndicatorPanelStyle(cpBarra.Panels[7].PanelStyle).Indicators[0].IndicatorType := sitYellow
  else
    TdxStatusBarStateIndicatorPanelStyle(cpBarra.Panels[7].PanelStyle).Indicators[0].IndicatorType := sitRed;
end;

// -------------------------------------------------------------------------- //

procedure TfrmVenda.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if (shift =[ssCtrl]) and (Key = 84) then begin
Application.CreateForm(Tfrmtipo_cupom, frmtipo_cupom);
frmtipo_cupom.ShowModal;
FreeAndNil(frmtipo_cupom);
end;
end;

procedure TfrmVenda.FormKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (Key = 66) and (Shift = [ssCtrl]) then begin
    if (sConsumidor_CPF <> '') and (frmPrincipal.TipoImpressora = SemImpressora) then begin
      Application.MessageBox('Impossivel Realizar a ação CPF do Cliente já Informado!', 'Erro', MB_OK + MB_ICONERROR);
      Exit;
    end;
    if (TipoDeCupom <> tcSimples) then begin
      if frmPrincipal.TipoImpressora = SemImpressora then
        frmPrincipal.TipoImpressora := NaoFiscal
      else
        frmPrincipal.TipoImpressora := SemImpressora;
    end;
    CorEditTotaL;
  end;
end;

procedure TfrmVenda.Fabricao1Click(Sender: TObject);
begin
  if not bServidor_Conexao then begin
    repeat
    try
      frmModulo.Conexao_Servidor.Connected := False;
      frmModulo.Conexao_Servidor.Connected := True;
      bServidor_Conexao := True;
    except
      on E: Exception do begin
        if Application.messagebox(PWideChar('Erro na conexão com o banco de dados do servidor!' + #13 + 'Mensagem: ' + E.Message + #13 + 'Deseja tentar outra vez?'), 'Erro', MB_YESNO + MB_ICONERROR) = IDNO then begin
          Break;
        end;
      end;
    end;
    until bServidor_Conexao = True;
  end;
  if not bServidor_Conexao then
    Exit;


  // atualizar os dados no servidor

  frmFabricacao := TfrmFabricacao.create(Self);
  frmFabricacao.showmodal;

end;

// -------------------------------------------------------------------------- //

procedure TfrmVenda.timer_cargaTimer(Sender: TObject);
begin
  frmModulo.query.close;
  frmModulo.query.sql.clear;
  frmModulo.query.SQL.add('select carga_data, carga_hora from config');
  frmModulo.query.open;
  frmModulo.qrconfig.open;
  cpBarra.Panels.Items[11].Text := frmModulo.query.fieldbyname('carga_data').asstring + ' às ' + frmModulo.query.fieldbyname('carga_hora').asstring;
end;

// -------------------------------------------------------------------------- //

procedure TfrmVenda.ed_unitarioKeyPress(Sender: TObject; var Key: Char);
var
  rd: Real;
begin
  if Key = #13 then begin
    if ed_unitario.value <= 0 then begin
      ed_unitario.SetFocus;
      Exit;
    end;
    if (FormatFloat('##########0.00', rProd_preco) <> FormatFloat('##########0.00', ed_unitario.value)) and (rProd_preco > 0) then begin
      // verificar seh eh desconto ou acrescimo
      if rProd_preco < ed_unitario.value then begin
        // foi acrescimo
        rProd_acrescimo := ed_unitario.value - rProd_preco;
        if rProd_acrescimo_maximo > 0 then begin
          rd := (rProd_acrescimo / rProd_preco) * 100;
          if rd > rProd_acrescimo_maximo then begin
            frmSenha_Supervisor := TfrmSenha_Supervisor.create(Self);
            frmSenha_Supervisor.showmodal;
            if not bSupervisor_autenticado then
              Exit;
          end;
        end
        else begin
          frmSenha_Supervisor := TfrmSenha_Supervisor.create(Self);
          frmSenha_Supervisor.showmodal;
          if not bSupervisor_autenticado then
            Exit;
        end;
      end
      else begin
        // foi desconto
        rProd_desconto := rProd_preco - ed_unitario.value;
        if rProd_desconto_maximo > 0 then begin
          rd := (rProd_desconto / rProd_preco) * 100;
          if rd > rProd_desconto_maximo then begin
            frmSenha_Supervisor := TfrmSenha_Supervisor.create(Self);
            frmSenha_Supervisor.ValidaDesconto := True;
            frmSenha_Supervisor.showmodal;
            if not bSupervisor_autenticado then
              Exit;
          end;
        end
        else begin
          frmSenha_Supervisor := TfrmSenha_Supervisor.create(Self);
          frmSenha_Supervisor.ValidaDesconto := True;
          frmSenha_Supervisor.showmodal;
          if not bSupervisor_autenticado then
            Exit;
        end;
      end;
      rProd_preco := ed_unitario.value;
      rProd_total := RoundTo(rProd_qtde * rProd_preco, -2);
      ed_total_item.Value := rProd_total;
    end;
    if rProd_preco = 0 then begin
      rProd_preco := ed_unitario.value;
      rProd_total := RoundTo(rProd_qtde * rProd_preco, -2);
      ed_total_item.Value := rProd_total;
    end;
    if (bMuda_total) then begin
      Imprime_display(sProd_nome, clWhite, tiInfo);
      ed_total_item.ReadOnly := False;
      ed_total_item.setfocus;
      Exit;
    end;
    Registra_Item;
    if bMudouProvisorio then begin
      bMuda_unitario := False;
      bMudouProvisorio := False;
    end;
  end
  else if Key = #27 then begin
    Teclado.Visible := False;
  end;
end;

function TfrmVenda.ImgTipoImpressora(i: Integer): TImpressora;
begin
  case i of
    0:
      frmPrincipal.TipoImpressora := SemImpressora;
    1:
      frmPrincipal.TipoImpressora := NaoFiscal;
    2:
      frmPrincipal.TipoImpressora := Fiscal;
  end;
  result := frmPrincipal.TipoImpressora;
end;

procedure TfrmVenda.Comandas1Click(Sender: TObject);
var
  nItem: Integer;
  str: string;
begin

  if Comandas1.Visible = False then
    Exit;

  if bVenda then begin
    Imprime_display('Venda Aberta!', clRed, tiErro);
    Sleep(1500);
    Imprime_display_anterior;
    Exit;
  end;

  if not bServidor_Conexao then begin
    repeat
    try
      frmModulo.Conexao_Servidor.Connected := False;
      frmModulo.Conexao_Servidor.Connected := True;
      bServidor_Conexao := True;
    except
      on E: Exception do begin
        if Application.messagebox(PWideChar('Erro na conexão com o banco de dados do servidor!' + #13 + 'Mensagem: ' + E.Message + #13 + 'Deseja tentar outra vez?'), 'Erro', MB_YESNO + MB_ICONERROR) = IDNO then begin
          Break;
        end;
      end;
    end;
    until bServidor_Conexao = True;
  end;
  if not bServidor_Conexao then
    Exit;

  bLanca_Comanda := False;

  FComanda := TFComanda.create(Self);
  FComanda.showmodal;

  // iniciar a impressao da pre-venda
  if bLanca_Comanda then begin
    Imprime_display('Iniciando impressão do Consumo!', clWhite, tiInfo);
    try
      // verificar o serial do ecf
      // Abrir o cupom fiscal
      // bloquear ao teclado
      //BlockInput(True);
      if not Abre_Venda then begin
        // Caso o comando de abertura de venda retornou false, abortar o processo;
        Imprime_display('ERRO AO ABRIR O CUPOM!', clRed, tiErro);
        Exit;
      end;
    finally
      // desbloquear o teclado
      //BlockInput(False);
    end;


    // vender os itens
    // rodar a query do modulo filtrada com os produtos da pre-venda
    frmModulo.query_servidor.first;
    nItem := 1;
    while not frmModulo.query_servidor.eof do begin

      if frmModulo.query_servidor.fieldbyname('cancelado').asfloat = 0 then begin
        cdsLancaProdutos.Close;
        cdsLancaProdutos.CreateDataSet;
        sProd_nome := frmModulo.query_servidor.fieldbyname('produto').asstring;
        sProd_unidade := frmModulo.query_servidor.fieldbyname('unidade').asstring;
        sProd_CST := frmModulo.query_servidor.fieldbyname('cst').asstring;
        rProd_aliquota := frmModulo.query_servidor.fieldbyname('aliquota').asfloat;
        iProd_codigo := frmModulo.query_servidor.fieldbyname('cod_produto').asinteger;
        sProd_barra := frmModulo.query_servidor.fieldbyname('codbarra').asstring;
        rProd_qtde := frmModulo.query_servidor.fieldbyname('qtde').asfloat;
        rProd_preco := frmModulo.query_servidor.fieldbyname('unitario').asfloat;
        rProd_total := frmModulo.query_servidor.fieldbyname('total').asfloat;
        rProd_desconto := 0;
        rProd_acrescimo := frmModulo.query_servidor.fieldbyname('acrescimo').asfloat;
        sProd_Tamanho := '';
        sProd_Cor := '';
        vExtra.Texto := frmModulo.query_servidor.fieldbyname('extra').AsString;
        // registrar o item
        frmModulo.query_servidor2.Close;
        frmModulo.query_servidor2.SQL.Clear;
        frmModulo.query_servidor2.SQL.Add('select * from r000004 where codigo = ' + QuotedStr(frmModulo.query_servidor.FieldByName('codigo').AsString));
        frmModulo.query_servidor2.Open;
        frmModulo.query_servidor2.First;
        strPizza.Pizza := '';
        strPizza.Sabores := '';
        strPizza.Valor := 0;
        SetLength(strPizza.Produtos,0);
        strPizza.ProdutoPrincipal.Codigo := '';
        strPizza.ProdutoPrincipal.Valor := 0;
        while not frmModulo.query_servidor2.Eof do begin
          cdsLancaProdutos.Insert;
          cdsLancaProdutosCODPRO.AsString := frmModulo.query_servidor2.FieldByName('CODPRO').AsString;
          cdsLancaProdutosQTDE.AsFloat := frmModulo.query_servidor2.FieldByName('QTDE').AsFloat;
          cdsLancaProdutos.Post;
          frmModulo.query_servidor2.Next;
        end;
        Registra_Item;
        Inc(nItem);
      end;

      Application.ProcessMessages;
      frmModulo.query_servidor.next;
    end;

    if rTotal_Venda <= 0 then begin
      Cancela_cupom_aberto;

      // excluir a mesa e os itens
      frmModulo.query_servidor.close;
      frmModulo.query_servidor.sql.clear;
      frmModulo.query_servidor.sql.add('delete from r000002 where cod_mesa =' + IntToStr(iMesa_codigo));
      frmModulo.query_servidor.ExecSQL;

      frmModulo.query_servidor.close;
      frmModulo.query_servidor.sql.clear;
      frmModulo.query_servidor.sql.add('delete from r000001 where codigo =' + IntToStr(iMesa_codigo));
      frmModulo.query_servidor.ExecSQL;
      // inserir a liberacao da mesa para nao aparecer no sistema de frente

      frmModulo.mesa_comanda := '';

    end
    else begin
      rTotal_Comissao := 0;
      rTotal_Couvert := 0;
      with frmModulo do begin
        if qrMesasCLIENTE_AUTORIZOU.AsString = 'S' then begin
          rTotal_Comissao := (rTotal_Venda * qrconfigCOMISSAO_PERCENTUAL.AsFloat) / 100;
        end
        else begin
          if qrconfigCOBRA_COMISSAO.AsString = 'O' then
            rTotal_Comissao := (rTotal_Venda * qrconfigCOMISSAO_PERCENTUAL.AsFloat) / 100;
          if qrconfigCOBRA_COMISSAO.AsString = 'P' then
            if Application.MessageBox('Cliente autorizou incluir taxa do garçon na comanda?', 'Atenção?', MB_ICONQUESTION + MB_YESNO) = mrYes then
              rTotal_Comissao := (rTotal_Venda * qrconfigCOMISSAO_PERCENTUAL.AsFloat) / 100;
        end;
        if rTotal_Comissao > 0 then
          rTotal_Venda := rTotal_Venda + rTotal_Comissao;
        if qrconfigVALOR_COUVER.AsFloat > 0 then begin
          rTotal_Couvert := qrconfigVALOR_COUVER.AsFloat;
          rTotal_Venda := rTotal_Venda + rTotal_Couvert;
        end;
      end;
      FecharCupom1Click(frmVenda);
    end;
  end;

end;

procedure TfrmVenda.MontaGrupos;
var
  i: Integer;
  cpPanel: TPanel;
  cpImage: TImage;
  cpLabel: TLabel;
  Altura, Conta, TColuna, TItens, TLeft, TTop: Integer;
  MemoryStream: TMemoryStream;
  Bitmap: TJPEGImage;
  CodCrupo: Integer;
begin
  TColuna := RoundDiv(scGrupo.Width, Touch_Colunas);
  if Touch_linhas_Grupo > 1 then begin
    pnTouch_Grupo.Height := Touch_Altura_Grupo + Panel1.Height;
  end;
  qrGrupo.Close;
  qrGrupo.Open;
  i := 0;
  TLeft := 0;
  TTop := 0;
  Conta := 0;
  TItens := RoundDiv(qrGrupo.RecordCount, Touch_linhas_Grupo);
  Altura := RoundDiv(scGrupo.Height - Panel1.Height, Touch_linhas_Grupo);
  while not qrGrupo.Eof do begin
    CodCrupo := qrGrupoCODIGO.AsInteger;
    Inc(i);
    Inc(Conta);
    cpPanel := TPanel.Create(scGrupo);
    with cpPanel do begin
      Name := 'pnTouch_Grupo' + IntToStr(i);
      Parent := scGrupo;
      if Touch_linhas_Grupo > 1 then begin
        Left := TLeft;
        Top := TTop;
        Width := TColuna;
        Height := Altura;
        Align := alNone;
      end
      else begin
        Left := 0;
        Top := 0;
        Width := TColuna;
        Height := 86;
        Align := alLeft;
      end;
      Caption := '';
      TabOrder := i - 1;
      Color := clWhite;
      Tag := qrGrupoCODIGO.AsInteger;
      BorderWidth := 2;
      OnClick := GrupoClick;
      ParentBackground := False;
      if Touch_linhas_Grupo > 1 then begin
        TLeft := TLeft + TColuna;
        if Conta = TItens then begin
          TLeft := 0;
          TTop := TTop + RoundDiv(scGrupo.Height - Panel1.Height, Touch_linhas_Grupo);
          Conta := 0;
        end;
      end;
    end;
    cpLabel := TRzLabel.Create(cpPanel);
    with cpLabel do begin
      Name := 'lbTouch_Grupo' + IntToStr(i);
      Parent := cpPanel;
      Height := 16;
      Align := alBottom;
      Caption := qrGrupoGRUPO.AsString;
      Alignment := taCenter;
      TRANSPARENT := True;
      Tag := qrGrupoCODIGO.AsInteger;
      OnClick := GrupoClick;
    end;
    if not qrGrupoFOTO.IsNull then begin
      cpImage := TImage.Create(cpPanel);
      Bitmap := TJPEGImage.Create;
      MemoryStream := TMemoryStream.Create;
      qrGrupoFOTO.savetostream(MemoryStream);
      MemoryStream.Position := OffsetMemoryStream;
      Bitmap.LoadFromStream(MemoryStream);
      with cpImage do begin
        Name := 'imTouch_Grupo' + IntToStr(i);
        Parent := cpPanel;
        Align := alClient;
        Picture.Assign(Bitmap);
        Center := True;
        Stretch := False;
        Tag := qrGrupoCODIGO.AsInteger;
        OnClick := GrupoClick;
        TRANSPARENT := True;
      end;
      FreeAndNil(MemoryStream);
    end;
    qrGrupo.Next;
  end;
  if TItens <= Touch_Colunas then begin
    while (scGrupo.Height) > (Altura * Touch_linhas_Grupo) do
      pnTouch_Grupo.Height := pnTouch_Grupo.Height - 1;
  end;
  MontaProdutos(CodCrupo);
end;

procedure TfrmVenda.MontaProdutos(Grupo: Integer);
var
  i: Integer;
  cpPanel: TPanel;
  cpImage: TImage;
  cpLabel: TLabel;
  Conta, TColuna, TLinha, TLeft, TTop: Integer;
  MemoryStream: TMemoryStream;
  Bitmap: TJPEGImage;
begin
  for i := scProduto.ControlCount - 1 downto 0 do
    TComponent(scProduto.Controls[i]).Free;
  TColuna := RoundDiv(scProduto.Width, Touch_Colunas);
  TLinha := RoundDiv(scProduto.Height, Touch_Linhas);
  qrProduto.Close;
  qrProduto.Params.Items[0].Value := Zerar(IntToStr(Grupo), 6);
  qrProduto.Open;
  i := 0;
  TLeft := 0;
  TTop := 0;
  Conta := 0;
  while not qrProduto.Eof do begin
    Inc(i);
    Inc(Conta);
    cpPanel := TPanel.Create(scProduto);
    with cpPanel do begin
      Name := 'pnTouch_Produto' + IntToStr(i);
      Parent := scProduto;
      Left := TLeft;
      Top := TTop;
      Width := TColuna;
      Height := TLinha;
      Align := alNone;
      Caption := '';
      TabOrder := i - 1;
      Color := clWhite;
      Tag := qrProdutoCODIGO.AsInteger;
      BorderWidth := 2;
      OnClick := ProdutoClick;
      OnMouseDown := MouseDown;
      OnMouseLeave := MouseLeave;
      ParentBackground := False;
      TLeft := TLeft + TColuna;
      if Conta = Touch_Colunas then begin
        TLeft := 0;
        TTop := TTop + TLinha;
        Conta := 0;
      end;
    end;
    cpLabel := TRzLabel.Create(cpPanel);
    with cpLabel do begin
      Name := 'lbTouch_Produto' + IntToStr(i);
      Parent := cpPanel;
      Height := 16;
      Align := alBottom;
      Caption := qrProdutoNOME.AsString;
      Alignment := taCenter;
      TRANSPARENT := True;
      Tag := qrProdutoCODIGO.AsInteger;
      OnClick := ProdutoClick;
      OnMouseDown := MouseDown;
      OnMouseLeave := MouseLeave;
    end;
    if not qrProdutoFOTOBD.IsNull then begin
      cpImage := TImage.Create(cpPanel);
      Bitmap := TJPEGImage.Create;
      MemoryStream := TMemoryStream.Create;
      qrProdutoFOTOBD.savetostream(MemoryStream);
      MemoryStream.Position := OffsetMemoryStream;
      Bitmap.LoadFromStream(MemoryStream);
      with cpImage do begin
        Name := 'imTouch_Produto' + IntToStr(i);
        Parent := cpPanel;
        Align := alClient;
        Picture.Assign(Bitmap);
        Center := True;
        Stretch := False;
        Tag := qrProdutoCODIGO.AsInteger;
        OnClick := ProdutoClick;
        OnMouseDown := MouseDown;
        OnMouseLeave := MouseLeave;
        TRANSPARENT := True;
      end;
      FreeAndNil(MemoryStream);
    end;
    qrProduto.Next;
  end;

end;

procedure TfrmVenda.MontaTelaTouch;
var
  i: Integer;
  cpPanel: TPanel;
  cpImage: TImage;
  cpLabel: TLabel;
  TColuna: Integer;
  TLinha: Integer;
  MemoryStream: TMemoryStream;
  Bitmap: TJPEGImage;
begin
  cxGrid1DBBandedTableView1COD_BARRA.Visible := False;
  btnCancelaVenda.Visible := True;
  btnCancelaItem.Visible := True;
  btnFechaCupom.Visible := True;
  Repaint;
  Update;
  Refresh;
  Panel7.Anchors := [akLeft, akTop];
  Panel7.Left := pnTouch.Left;
  Panel7.Width := pnTouch.Width;
  pnBotoes.Visible := True;
  pnBotoes.Left := cxGrid1.Left;
  pnBotoes.Width := cxGrid1.Width;
  pnBotoesInferior.Visible := True;
  pnTouch.Visible := True;
  pnBarra.Anchors := [akLeft, akTop];
  pnBarra.Left := cxGrid1.Left;
  pnBarra.Top := pnTouch.Top;
  pnBarra.Width := pnBotoes.Width - pnQuantidade.Width - 5;

  pnQuantidade.Anchors := [akLeft, akTop];
  pnQuantidade.Left := pnBarra.Left + pnBarra.Width + 5;
  pnQuantidade.Top := pnBarra.Top;

  cxGrid1.Top := pnBarra.Top + pnBarra.Height + 5;
  if AtivaTouch then
    cxGrid1.Height := pnTouch.Height - (pnBarra.Height + pnBotoesInferior.Height + 10)
  else
    cxGrid1.Height := pnTouch.Height - (pnBarra.Height + 5);
  for i := scGrupo.ControlCount - 1 downto 0 do
    TComponent(scGrupo.Controls[i]).Free;
  for i := scProduto.ControlCount - 1 downto 0 do
    TComponent(scProduto.Controls[i]).Free;
  btnDimQtd.Visible := True;
  btnAumQtd.Visible := True;
  MontaGrupos;
end;

procedure TfrmVenda.MostraFotoProduto(b: Boolean);
begin
  if (bBusca_foto_produto) and not (AtivaTouch) then
    if b then begin
      img_produto.Visible := True;
    end
    else begin
      img_produto.Visible := False;
    end;
end;

procedure TfrmVenda.MostraLogoMarca(b: Boolean);
begin
  if not AtivaTouch then begin
    if bHabLogoMarca then
      img_logo.Visible := b;

    if bHabLogoMarca then
      if b then
        if FileExists(EditLogoMarca) then
          img_logo.Picture.LoadFromFile(EditLogoMarca);
  end
  else
    img_logo.Visible := False;

end;

procedure TfrmVenda.MouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  Controle := TControl(Sender);
  TimerExtra.Enabled := True;
end;

procedure TfrmVenda.MouseLeave(Sender: TObject);
begin
  Controle := nil;
  TimerExtra.Enabled := False;
end;

procedure TfrmVenda.TimerExtraTimer(Sender: TObject);
begin
  LongPress;
end;

procedure TfrmVenda.TimerTrocoTimer(Sender: TObject);
begin
  TimerTroco.Enabled := False;

  Imprime_display('C A I X A    L I V R E', clWhite, tiLivre);

end;

procedure TfrmVenda.CentralizarPanel(p: TPanel);
begin
  p.Top := (Height - p.Height) div 2;
  p.Left := (Width - p.Width) div 2;
end;

procedure TfrmVenda.colBotAlmuntarPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
var
  local: Integer;
  Valor: Double;
begin
  Application.ProcessMessages;
  query.SQL.Clear;
  Inc(iTotal_Itens);
  Valor := frmModulo.qrItensVALOR_UNITARIO.AsFloat;
  rTotal_Venda := rTotal_Venda + Valor;
  query.SQL.Add('update CUPOM_ITEM_TEMP set qtde = qtde + 1, valor_subtotal = valor_subtotal + ' + FloatToStr(Valor) + ', valor_total = valor_subtotal + ' + FloatToStr(Valor) + ' where item = ' + frmModulo.qrItensITEM.AsString);
  query.ExecSQL;

  with frmModulo do begin
    local := qrItensITEM.AsInteger;
    qrItens.DisableControls;
    qrItens.Close;
    qrItens.Open;
    qrItens.Locate('ITEM', local, [loCaseInsensitive]);
    qrItens.EnableControls;
  end;

  lb_item.Caption := IntToStr(iTotal_Itens);
  lb_total.Caption := 'R$ ' + FormatFloat('###,###,##0.00', rTotal_Venda);

end;

procedure TfrmVenda.colBotDiminuirPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
var
  local: Integer;
  Valor: Double;
begin
  if frmModulo.qrItensQTDE.AsInteger > 1 then begin
    Application.ProcessMessages;
    query.SQL.Clear;
    Dec(iTotal_Itens);
    Valor := frmModulo.qrItensVALOR_UNITARIO.AsFloat;
    rTotal_Venda := rTotal_Venda - Valor;
    query.SQL.Add('update CUPOM_ITEM_TEMP set qtde = qtde - 1, valor_subtotal = valor_subtotal - ' + FloatToStr(Valor) + ', valor_total = valor_subtotal - ' + FloatToStr(Valor) + ' where item = ' + frmModulo.qrItensITEM.AsString);
    query.ExecSQL;

    with frmModulo do begin
      local := qrItensITEM.AsInteger;
      qrItens.DisableControls;
      qrItens.Close;
      qrItens.Open;
      qrItens.Locate('ITEM', local, [loCaseInsensitive]);
      qrItens.EnableControls;
    end;

    lb_item.Caption := IntToStr(iTotal_Itens);
    lb_total.Caption := 'R$ ' + FormatFloat('###,###,##0.00', rTotal_Venda);
  end;
end;

procedure TfrmVenda.FormResize(Sender: TObject);
begin
  if not AtivaTouch then begin
    img_logo.Top := pnBaseFoto.Top + 10;
    img_logo.Left := pnBaseFoto.Left + 10;

    img_produto.Top := pnBaseFoto.Top + 10;
    img_produto.Left := pnBaseFoto.Left + 10;

    img_logo.Height := pnBaseFoto.Height - 20;
    img_logo.Width := pnBaseFoto.Width - 20;

    img_produto.Height := pnBaseFoto.Height - 20;
    img_produto.Width := pnBaseFoto.Width - 20;
    cxGrid1.Left := CentralizaGrid.Left + RoundDiv((CentralizaGrid.Width - cxGrid1.Width), 2);
    cxGrid1.Top := CentralizaGrid.Top + RoundDiv((CentralizaGrid.Height - cxGrid1.Height), 2);
  end;

  if AtivaTouch then
    MontaTelaTouch;

end;

end.

