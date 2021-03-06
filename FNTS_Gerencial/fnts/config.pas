unit config;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Collection, ComCtrls, ExtCtrls, StdCtrls, Buttons, TFlatPanelUnit,
  Spin, Mask, DBCtrls, DB, ExtDlgs, wwdbedit, Wwdbspin, wwdblook, PageView,
  Wwdotdot, Wwdbcomb, Menus, ZAbstractRODataset, ZAbstractDataset, ZDataset,
  Wwdatsrc, AdvGlowButton, RzPanel, RzRadGrp, RzDBRGrp, ACBrNFe, RzEdit,
  IdBaseComponent, IdComponent, IdTCPConnection, IdTCPClient, IdFTP, IniFiles,
  RzCmboBx, RzDBEdit, RzDBBnEd, RzBorder, dxGDIPlusClasses, cyBaseSpeedButton,
  cySpeedButton, AdvMetroButton, AdvSmoothPanel, AdvSmoothExpanderPanel,
  ACBrBase, ACBrDFe, JvExMask, JvToolEdit, JvBaseEdits, JvDBControls, Vcl.Printers,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer,
  cxEdit, cxGroupBox, cxRadioGroup, cxDBEdit, cxTextEdit, cxMaskEdit,
  cxButtonEdit, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit,
  cxDBExtLookupComboBox, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage,
  cxNavigator, cxDBData, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid, cxSpinEdit, Vcl.FileCtrl,
  ACBrDFeSSL, pcnConversao, ACBrNFeDANFEFRDM, ACBrNFeDANFEClass, ACBrNFeDANFEFR,
  ACBrMail, dxCore, dxColorEdit, dxDBColorEdit, dxSkinsCore, dxSkinBlack,
  dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom,
  dxSkinDarkSide, dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis,
  dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray,
  dxSkinOffice2013White, dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic,
  dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinsDefaultPainters,
  dxSkinValentine, dxSkinVS2010, dxSkinWhiteprint, dxSkinXmas2008Blue;

const
  SELDIRHELP = 1000;

type
  TDadosFtp = record
    Host: string;
    Usuario: string;
    Senha: string;
    Caminho: string;
    Passivo: string;
     // Coloquei para atender a WA.
    Port: string;
    ProxyHost: string;
    ProxyPassword: string;
    ProxyPort: string;
    ProxyTipo: string;
    ProxyType: TIdFtpProxyType;
    ProxyUserName: string;
  end;

type
  Tfrmconfig = class(TForm)
    dsemitente: TDataSource;
    dsconfig: TDataSource;
    OpenPictureDialog1: TOpenPictureDialog;
    pop1: TPopupMenu;
    Gravar1: TMenuItem;
    Aplicar1: TMenuItem;
    Cancelar1: TMenuItem;
    QUERY: TZQuery;
    PageView3: TPageView;
    PageSheet7: TPageSheet;
    GroupBox10: TGroupBox;
    Label31: TLabel;
    Label32: TLabel;
    wwDBSpinEdit1: TwwDBSpinEdit;
    wwDBSpinEdit2: TwwDBSpinEdit;
    PageSheet10: TPageSheet;
    GroupBox1: TGroupBox;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label40: TLabel;
    Label41: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    GroupBox4: TGroupBox;
    Label22: TLabel;
    Label38: TLabel;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    DBEdit17: TDBEdit;
    DBEdit19: TDBEdit;
    combo_os: TComboBox;
    combo_venda: TComboBox;
    DBEdit42: TDBEdit;
    combo_orcamento: TComboBox;
    GroupBox2: TGroupBox;
    DBCheckBox1: TDBCheckBox;
    DBCheckBox4: TDBCheckBox;
    DBCheckBox5: TDBCheckBox;
    DBCheckBox7: TDBCheckBox;
    DBCheckBox8: TDBCheckBox;
    GroupBox3: TGroupBox;
    Label1: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    RxDBCalcEdit1: TJvDBCalcEdit;
    RxDBCalcEdit2: TJvDBCalcEdit;
    RxDBCalcEdit3: TJvDBCalcEdit;
    PageSheet11: TPageSheet;
    GroupBox9: TGroupBox;
    DBCheckBox2: TDBCheckBox;
    DBCheckBox3: TDBCheckBox;
    GroupBox11: TGroupBox;
    Label33: TLabel;
    Label34: TLabel;
    Label35: TLabel;
    Label36: TLabel;
    Label57: TLabel;
    RxDBCalcEdit4: TJvDBCalcEdit;
    RxDBCalcEdit5: TJvDBCalcEdit;
    RxDBCalcEdit6: TJvDBCalcEdit;
    DBCheckBox6: TDBCheckBox;
    RxDBCalcEdit7: TJvDBCalcEdit;
    RxDBCalcEdit8: TJvDBCalcEdit;
    GroupBox14: TGroupBox;
    wwDBLookupCombo1: TwwDBLookupCombo;
    GroupBox15: TGroupBox;
    combo_extrato: TComboBox;
    GroupBox24: TGroupBox;
    Label47: TLabel;
    Label48: TLabel;
    DBEdit46: TDBEdit;
    wwDBComboBox1: TwwDBComboBox;
    PageSheet12: TPageSheet;
    PageView2: TPageView;
    PageSheet5: TPageSheet;
    BitBtn19: TBitBtn;
    GroupBox23: TGroupBox;
    Label42: TLabel;
    Label45: TLabel;
    Label43: TLabel;
    Label44: TLabel;
    Label46: TLabel;
    Label51: TLabel;
    DBEdit44: TDBEdit;
    combo_nf: TComboBox;
    DBEdit43: TDBEdit;
    DBEdit47: TDBEdit;
    DBEdit45: TDBEdit;
    Button1: TButton;
    DBEdit50: TDBEdit;
    PageSheet13: TPageSheet;
    pemitente2: TPanel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Label37: TLabel;
    DBEdit3: TDBEdit;
    enome: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    DBEdit8: TDBEdit;
    DBEdit10: TDBEdit;
    DBEdit11: TDBEdit;
    DBEdit12: TDBEdit;
    DBEdit13: TDBEdit;
    DBEdit14: TDBEdit;
    DBEdit15: TDBEdit;
    DBEdit16: TDBEdit;
    DBEdit18: TDBEdit;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    PageSheet14: TPageSheet;
    GroupBox5: TGroupBox;
    Label39: TLabel;
    DBComboBox6: TDBComboBox;
    DBEdit41: TDBEdit;
    GroupBox6: TGroupBox;
    Label26: TLabel;
    Label27: TLabel;
    DBComboBox7: TDBComboBox;
    DBComboBox8: TDBComboBox;
    GroupBox7: TGroupBox;
    Label28: TLabel;
    Label29: TLabel;
    DBComboBox9: TDBComboBox;
    DBComboBox10: TDBComboBox;
    GroupBox8: TGroupBox;
    Label30: TLabel;
    DBComboBox11: TDBComboBox;
    PageSheet16: TPageSheet;
    PageView1: TPageView;
    PageSheet1: TPageSheet;
    GroupBox16: TGroupBox;
    DBEdit28: TDBEdit;
    blocregiao: TBitBtn;
    DBEdit30: TDBEdit;
    DBEdit20: TDBEdit;
    GroupBox17: TGroupBox;
    DBEdit21: TDBEdit;
    BitBtn13: TBitBtn;
    DBEdit22: TDBEdit;
    DBEdit23: TDBEdit;
    PageSheet2: TPageSheet;
    GroupBox18: TGroupBox;
    DBEdit24: TDBEdit;
    BitBtn14: TBitBtn;
    DBEdit25: TDBEdit;
    DBEdit26: TDBEdit;
    GroupBox19: TGroupBox;
    DBEdit27: TDBEdit;
    BitBtn15: TBitBtn;
    DBEdit29: TDBEdit;
    DBEdit31: TDBEdit;
    PageSheet3: TPageSheet;
    GroupBox20: TGroupBox;
    DBEdit32: TDBEdit;
    BitBtn16: TBitBtn;
    DBEdit33: TDBEdit;
    DBEdit34: TDBEdit;
    GroupBox22: TGroupBox;
    DBEdit38: TDBEdit;
    BitBtn18: TBitBtn;
    DBEdit39: TDBEdit;
    DBEdit40: TDBEdit;
    PageSheet4: TPageSheet;
    GroupBox21: TGroupBox;
    DBEdit35: TDBEdit;
    BitBtn17: TBitBtn;
    DBEdit36: TDBEdit;
    DBEdit37: TDBEdit;
    GroupBox13: TGroupBox;
    BitBtn9: TBitBtn;
    BitBtn10: TBitBtn;
    DBImage1: TDBImage;
    AdvGlowButton3: TAdvGlowButton;
    qrreceber: TZQuery;
    qrvenda: TZQuery;
    Label49: TLabel;
    DBEdit48: TDBEdit;
    GroupBox25: TGroupBox;
    DBComboBox1: TDBComboBox;
    qrproduto: TZQuery;
    qrmov: TZQuery;
    GroupBox27: TGroupBox;
    DBCheckBox10: TDBCheckBox;
    combo_entrega: TComboBox;
    Label50: TLabel;
    Label54: TLabel;
    DBEdit49: TDBEdit;
    check_prestacao: TDBCheckBox;
    check_gerar: TDBCheckBox;
    DBCheckBox11: TDBCheckBox;
    DBCheckBox24: TDBCheckBox;
    DBCheckBox25: TDBCheckBox;
    GroupBox29: TGroupBox;
    combo_recibo: TComboBox;
    Label55: TLabel;
    DBEdit53: TDBEdit;
    DBCheckBox13: TDBCheckBox;
    DBCheckBox17: TDBCheckBox;
    retiqueta07: TRzDBRadioGroup;
    RzDBRadioGroup1: TRzDBRadioGroup;
    RzDBRadioGroup2: TRzDBRadioGroup;
    OpenDialog1: TOpenDialog;
    GroupBox30: TGroupBox;
    DBEdit4: TDBEdit;
    BitBtn1: TBitBtn;
    DBEdit55: TDBEdit;
    DBEdit56: TDBEdit;
    RzGroupBox1: TRzGroupBox;
    DBCheckBox18: TDBCheckBox;
    RzGroupBox2: TRzGroupBox;
    DBCheckBox12: TDBCheckBox;
    euf: TwwDBComboBox;
    DBCheckBox26: TDBCheckBox;
    GroupBox32: TGroupBox;
    Label61: TLabel;
    DBEdit54: TDBEdit;
    AdvGlowButton5: TAdvGlowButton;
    Label23: TLabel;
    ecodmunicipio: TDBEdit;
    Label24: TLabel;
    DBEdit51: TDBEdit;
    Label25: TLabel;
    DBEdit52: TDBEdit;
    DBCheckBox9: TDBCheckBox;
    GroupBox28: TGroupBox;
    Label52: TLabel;
    Label53: TLabel;
    Label78: TLabel;
    Label79: TLabel;
    Label80: TLabel;
    Label81: TLabel;
    RzDBButtonEdit1: TRzDBButtonEdit;
    DBEdit58: TDBEdit;
    RzDBButtonEdit2: TRzDBButtonEdit;
    DBEdit59: TDBEdit;
    RzDBButtonEdit3: TRzDBButtonEdit;
    DBEdit60: TDBEdit;
    RzDBButtonEdit4: TRzDBButtonEdit;
    DBEdit61: TDBEdit;
    RzDBButtonEdit5: TRzDBButtonEdit;
    DBEdit62: TDBEdit;
    DBEdit63: TDBEdit;
    RzDBButtonEdit6: TRzDBButtonEdit;
    PageSheet17: TPageSheet;
    GBTPNF: TGroupBox;
    rnffc: TRadioButton;
    rnfm: TRadioButton;
    rnfs: TRadioButton;
    DBCheckBox14: TDBCheckBox;
    DBCheckBox15: TDBCheckBox;
    Panel1: TPanel;
    bcancelar: TAdvGlowButton;
    baplicar: TAdvGlowButton;
    bgravar: TAdvGlowButton;
    Label82: TLabel;
    DBEdit64: TDBEdit;
    GroupBox31: TGroupBox;
    Label83: TLabel;
    Label85: TLabel;
    Label86: TLabel;
    DBEdit65: TDBEdit;
    DBEdit66: TDBEdit;
    DBEdit67: TDBEdit;
    qrestoque: TZQuery;
    DBCheckBox16: TDBCheckBox;
    AdvSmoothExpanderPanel1: TAdvSmoothExpanderPanel;
    Label56: TLabel;
    AdvMetroButton1: TAdvMetroButton;
    GroupBox12: TGroupBox;
    AdvGlowButton1: TAdvGlowButton;
    bt_configura0001: TAdvGlowButton;
    bt_configura0002: TAdvGlowButton;
    bt_configura0003: TAdvGlowButton;
    bt_configura0004: TAdvGlowButton;
    Panel3: TPanel;
    Panel4: TPanel;
    GroupBox26: TGroupBox;
    DBRadioGroup2: TDBRadioGroup;
    PrintDialog1: TPrintDialog;
    DBCheckBox19: TDBCheckBox;
    GroupBox33: TGroupBox;
    Label60: TLabel;
    JvDBCalcEdit1: TJvDBCalcEdit;
    DBCheckBox20: TDBCheckBox;
    AdvGlowButton4: TAdvGlowButton;
    PageSheet6: TPageSheet;
    GroupBox34: TGroupBox;
    DBEdit9: TDBEdit;
    DBCheckBox21: TDBCheckBox;
    Label62: TLabel;
    GroupBox35: TGroupBox;
    Label63: TLabel;
    DBEdit57: TDBEdit;
    cxDBRadioGroup1: TcxDBRadioGroup;
    GroupBox36: TGroupBox;
    Label64: TLabel;
    DBEdit68: TDBEdit;
    GroupBox37: TGroupBox;
    Label65: TLabel;
    edDesProdTaxa: TEdit;
    eproduto: TcxDBButtonEdit;
    cxDBExtLookupComboBox1: TcxDBExtLookupComboBox;
    Label66: TLabel;
    qrTipoIMpressora: TZQuery;
    qrTipoIMpressoraID: TIntegerField;
    qrTipoIMpressoraDESCRICAO: TWideStringField;
    cxGridViewRepository1: TcxGridViewRepository;
    dsTipo_Impressora: TDataSource;
    cxGridViewRepository1DBTableView1: TcxGridDBTableView;
    cxGridViewRepository1DBTableView1DESCRICAO: TcxGridDBColumn;
    PageSheet8: TPageSheet;
    PageView4: TPageView;
    PageSheet9: TPageSheet;
    Panel2: TPanel;
    PageSheet15: TPageSheet;
    PageSheet18: TPageSheet;
    PageSheet19: TPageSheet;
    PageView5: TPageView;
    PageSheet20: TPageSheet;
    PageSheet21: TPageSheet;
    PageSheet22: TPageSheet;
    lSSLLib: TLabel;
    lCryptLib: TLabel;
    lHttpLib: TLabel;
    lXmlSign: TLabel;
    gbCertificado: TGroupBox;
    Label67: TLabel;
    Label68: TLabel;
    sbtnCaminhoCert: TSpeedButton;
    Label69: TLabel;
    sbtnGetCert: TSpeedButton;
    Label70: TLabel;
    GroupBox38: TGroupBox;
    Label93: TLabel;
    lTimeOut: TLabel;
    lSSLLib1: TLabel;
    gbxRetornoEnvio: TGroupBox;
    Label94: TLabel;
    Label95: TLabel;
    Label96: TLabel;
    gbProxy: TGroupBox;
    Label97: TLabel;
    Label98: TLabel;
    Label99: TLabel;
    Label100: TLabel;
    Label107: TLabel;
    sbtnLogoMarca: TSpeedButton;
    PageView8: TPageView;
    PageSheet28: TPageSheet;
    Label113: TLabel;
    Label114: TLabel;
    PageSheet29: TPageSheet;
    PageView9: TPageView;
    PageSheet32: TPageSheet;
    Label123: TLabel;
    Label124: TLabel;
    Label125: TLabel;
    SpeedButton17: TSpeedButton;
    PageSheet33: TPageSheet;
    Label126: TLabel;
    SpeedButton18: TSpeedButton;
    Label127: TLabel;
    SpeedButton19: TSpeedButton;
    Label128: TLabel;
    SpeedButton20: TSpeedButton;
    Label129: TLabel;
    SpeedButton21: TSpeedButton;
    Label130: TLabel;
    SpeedButton22: TSpeedButton;
    Label131: TLabel;
    SpeedButton23: TSpeedButton;
    SpeedButton24: TSpeedButton;
    PageSheet34: TPageSheet;
    Label132: TLabel;
    Label133: TLabel;
    Label134: TLabel;
    edtCaminho: TDBEdit;
    DBEdit69: TDBEdit;
    cbUF: TDBComboBox;
    rgTipoAmb: TDBRadioGroup;
    DBCheckBox22: TDBCheckBox;
    DBCheckBox23: TDBCheckBox;
    cxDBSpinEdit1: TcxDBSpinEdit;
    DBCheckBox27: TDBCheckBox;
    DBEdit70: TDBEdit;
    DBEdit71: TDBEdit;
    DBEdit72: TDBEdit;
    DBEdit73: TDBEdit;
    DBEdit74: TDBEdit;
    DBEdit75: TDBEdit;
    DBEdit76: TDBEdit;
    DBCheckBox28: TDBCheckBox;
    DBCheckBox29: TDBCheckBox;
    DBCheckBox30: TDBCheckBox;
    DBEdit77: TDBEdit;
    DBEdit78: TDBEdit;
    DBEdit79: TDBEdit;
    DBRadioGroup3: TDBRadioGroup;
    DBCheckBox32: TDBCheckBox;
    DBCheckBox33: TDBCheckBox;
    DBCheckBox34: TDBCheckBox;
    DBCheckBox35: TDBCheckBox;
    DBCheckBox36: TDBCheckBox;
    DBCheckBox37: TDBCheckBox;
    DBCheckBox38: TDBCheckBox;
    DBCheckBox39: TDBCheckBox;
    DBEdit82: TDBEdit;
    DBEdit83: TDBEdit;
    DBEdit84: TDBEdit;
    DBEdit85: TDBEdit;
    DBEdit86: TDBEdit;
    DBEdit87: TDBEdit;
    DBEdit88: TDBEdit;
    DBEdit89: TDBEdit;
    DBEdit90: TDBEdit;
    DBMemo1: TDBMemo;
    edtNumSerie: TDBEdit;
    PageView7: TPageView;
    PageSheet23: TPageSheet;
    Label77: TLabel;
    Label88: TLabel;
    SpeedButton1: TSpeedButton;
    DBEdit80: TDBEdit;
    PageSheet27: TPageSheet;
    PageSheet30: TPageSheet;
    Label109: TLabel;
    Label121: TLabel;
    Label122: TLabel;
    DBEdit98: TDBEdit;
    DBEdit99: TDBEdit;
    DBMemo2: TDBMemo;
    PageView6: TPageView;
    PageSheet24: TPageSheet;
    Label71: TLabel;
    Label73: TLabel;
    SpeedButton25: TSpeedButton;
    DBEdit81: TDBEdit;
    PageSheet25: TPageSheet;
    SpeedButton32: TSpeedButton;
    DBCheckBox55: TDBCheckBox;
    DBEdit106: TDBEdit;
    PageSheet26: TPageSheet;
    Label104: TLabel;
    Label105: TLabel;
    Label106: TLabel;
    DBEdit107: TDBEdit;
    DBEdit108: TDBEdit;
    DBMemo3: TDBMemo;
    Label110: TLabel;
    Label111: TLabel;
    DBEdit109: TDBEdit;
    Label112: TLabel;
    DBEdit110: TDBEdit;
    DBEdit111: TDBEdit;
    Label115: TLabel;
    SpeedButton9: TSpeedButton;
    Label116: TLabel;
    SpeedButton10: TSpeedButton;
    Label117: TLabel;
    SpeedButton11: TSpeedButton;
    Label118: TLabel;
    SpeedButton12: TSpeedButton;
    Label119: TLabel;
    SpeedButton13: TSpeedButton;
    Label120: TLabel;
    SpeedButton14: TSpeedButton;
    SpeedButton15: TSpeedButton;
    DBCheckBox56: TDBCheckBox;
    DBCheckBox57: TDBCheckBox;
    DBCheckBox58: TDBCheckBox;
    DBCheckBox59: TDBCheckBox;
    DBCheckBox60: TDBCheckBox;
    DBCheckBox61: TDBCheckBox;
    DBCheckBox62: TDBCheckBox;
    DBCheckBox63: TDBCheckBox;
    DBEdit112: TDBEdit;
    DBEdit113: TDBEdit;
    DBEdit114: TDBEdit;
    DBEdit115: TDBEdit;
    DBEdit116: TDBEdit;
    DBEdit117: TDBEdit;
    DBEdit118: TDBEdit;
    SpeedButton2: TSpeedButton;
    DBCheckBox40: TDBCheckBox;
    DBEdit91: TDBEdit;
    dsDFEConfig: TDataSource;
    ACBrMail1: TACBrMail;
    cbSSLLib: TComboBox;
    cbCryptLib: TComboBox;
    cbHttpLib: TComboBox;
    cbXmlSignLib: TComboBox;
    cbSSLType: TComboBox;
    nfe_cbFormaEmissao: TComboBox;
    nfe_cbVersaoDF: TComboBox;
    nfce_cbFormaEmissao: TComboBox;
    nfce_cbVersaoDF: TComboBox;
    cte_cbFormaEmissao: TComboBox;
    mdfe_cbFormaEmissao: TComboBox;
    ACBrNFe1: TACBrNFe;
    ACBrNFeDANFEFR1: TACBrNFeDANFEFR;
    PageSheet31: TPageSheet;
    DBEdit92: TDBEdit;
    Label74: TLabel;
    DBEdit93: TDBEdit;
    Label75: TLabel;
    DBEdit94: TDBEdit;
    Label76: TLabel;
    DBEdit95: TDBEdit;
    Label84: TLabel;
    DBCheckBox31: TDBCheckBox;
    PageSheet35: TPageSheet;
    PageView10: TPageView;
    PageSheet36: TPageSheet;
    DBCheckBox41: TDBCheckBox;
    dxDBColorEdit1: TdxDBColorEdit;
    Label87: TLabel;
    Label89: TLabel;
    dxDBColorEdit2: TdxDBColorEdit;
    Label90: TLabel;
    Label91: TLabel;
    dxDBColorEdit3: TdxDBColorEdit;
    dxDBColorEdit4: TdxDBColorEdit;
    dxDBColorEdit5: TdxDBColorEdit;
    Label92: TLabel;
    dxDBColorEdit6: TdxDBColorEdit;
    Label101: TLabel;
    dxDBColorEdit7: TdxDBColorEdit;
    dxDBColorEdit8: TdxDBColorEdit;
    dxDBColorEdit9: TdxDBColorEdit;
    Label102: TLabel;
    dxDBColorEdit10: TdxDBColorEdit;
    Label103: TLabel;
    dxDBColorEdit11: TdxDBColorEdit;
    dxDBColorEdit12: TdxDBColorEdit;
    dxDBColorEdit13: TdxDBColorEdit;
    Label108: TLabel;
    dxDBColorEdit14: TdxDBColorEdit;
    Label135: TLabel;
    Label136: TLabel;
    OpenPictureDialog2: TOpenPictureDialog;
    RzDBButtonEdit7: TRzDBButtonEdit;
    dxDBColorEdit15: TdxDBColorEdit;
    dxDBColorEdit16: TdxDBColorEdit;
    Bevel1: TBevel;
    Label137: TLabel;
    Label138: TLabel;
    dxDBColorEdit17: TdxDBColorEdit;
    dxDBColorEdit18: TdxDBColorEdit;
    dxDBColorEdit19: TdxDBColorEdit;
    dxDBColorEdit20: TdxDBColorEdit;
    Label139: TLabel;
    Label140: TLabel;
    DBCheckBox42: TDBCheckBox;
    DBCheckBox43: TDBCheckBox;
    Bevel2: TBevel;
    Label141: TLabel;
    Label142: TLabel;
    Label143: TLabel;
    Bevel3: TBevel;
    Label144: TLabel;
    DBEdit96: TDBEdit;
    SpeedButton3: TSpeedButton;
    Label145: TLabel;
    RzGroupBox3: TRzGroupBox;
    DBCheckBox44: TDBCheckBox;
    DBCheckBox45: TDBCheckBox;
    lblTipoAutenticacao: TLabel;
    DBCheckBox46: TDBCheckBox;
    DBCheckBox47: TDBCheckBox;
    GroupBox39: TGroupBox;
    edtipo: TComboBox;
    Label59: TLabel;
    DBRadioGroup1: TDBRadioGroup;
    wwDBSpinEdit3: TwwDBSpinEdit;
    Label58: TLabel;
    bImpressora: TAdvGlowButton;
    lImpressora: TLabel;
    GroupBox40: TGroupBox;
    DBCheckBox48: TDBCheckBox;
    DBCheckBox49: TDBCheckBox;
    DBCheckBox50: TDBCheckBox;
    RzGroupBox4: TRzGroupBox;
    DBCheckBox51: TDBCheckBox;
    DBEdit97: TDBEdit;
    Label146: TLabel;
    cbxWS: TComboBox;
    Label147: TLabel;
    PageSheet37: TPageSheet;
    DBRadioGroup4: TDBRadioGroup;
    DBRadioGroup6: TDBRadioGroup;
    DBRadioGroup7: TDBRadioGroup;
    DBEdit100: TDBEdit;
    Label148: TLabel;
    SpeedButton4: TSpeedButton;
    SpeedButton5: TSpeedButton;
    DBEdit101: TDBEdit;
    Label149: TLabel;
    SpeedButton6: TSpeedButton;
    DBEdit102: TDBEdit;
    Label150: TLabel;
    FileRel: TFileOpenDialog;
    DBEdit103: TDBEdit;
    Label151: TLabel;
    SpeedButton7: TSpeedButton;
    DBEdit104: TDBEdit;
    Label152: TLabel;
    SpeedButton8: TSpeedButton;
    DBEdit105: TDBEdit;
    Label153: TLabel;
    SpeedButton16: TSpeedButton;
    DBEdit119: TDBEdit;
    Label154: TLabel;
    SpeedButton26: TSpeedButton;
    Label155: TLabel;
    Label156: TLabel;
    RzDBButtonEdit8: TRzDBButtonEdit;
    DBEdit120: TDBEdit;
    DBEdit121: TDBEdit;
    RzDBButtonEdit9: TRzDBButtonEdit;
    Label157: TLabel;
    Label158: TLabel;
    RzDBButtonEdit10: TRzDBButtonEdit;
    DBEdit122: TDBEdit;
    DBEdit123: TDBEdit;
    RzDBButtonEdit11: TRzDBButtonEdit;
    DBEdit124: TDBEdit;
    Label159: TLabel;
    DBEdit125: TDBEdit;
    Label160: TLabel;
    SpeedButton27: TSpeedButton;
    Label161: TLabel;
    DBEdit126: TDBEdit;
    SpeedButton28: TSpeedButton;
    DBEdit128: TDBEdit;
    Label163: TLabel;
    SpeedButton30: TSpeedButton;
    PageSheet38: TPageSheet;
    Label164: TLabel;
    SpeedButton31: TSpeedButton;
    SpeedButton33: TSpeedButton;
    Label165: TLabel;
    SpeedButton34: TSpeedButton;
    Label166: TLabel;
    DBEdit129: TDBEdit;
    DBEdit130: TDBEdit;
    DBEdit131: TDBEdit;
    DBRadioGroup8: TDBRadioGroup;
    DBRadioGroup5: TDBRadioGroup;
    DBCheckBox52: TDBCheckBox;
    procedure bcancelarClick(Sender: TObject);
    procedure bgravarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure baplicarClick(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure BitBtn9Click(Sender: TObject);
    procedure BitBtn10Click(Sender: TObject);
    procedure BitBtn12Click(Sender: TObject);
    procedure blocregiaoClick(Sender: TObject);
    procedure BitBtn13Click(Sender: TObject);
    procedure BitBtn14Click(Sender: TObject);
    procedure BitBtn15Click(Sender: TObject);
    procedure BitBtn18Click(Sender: TObject);
    procedure BitBtn16Click(Sender: TObject);
    procedure BitBtn17Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure DBEdit51Exit(Sender: TObject);
    procedure Gravar1Click(Sender: TObject);
    procedure Aplicar1Click(Sender: TObject);
    procedure Cancelar1Click(Sender: TObject);
    procedure enovadata_inventarioKeyPress(Sender: TObject; var Key: Char);
    procedure AdvGlowButton2Click(Sender: TObject);
    procedure AdvGlowButton1Click(Sender: TObject);
    procedure AdvGlowButton3Click(Sender: TObject);
    procedure DBEdit4KeyPress(Sender: TObject; var Key: Char);
    procedure BitBtn1Click(Sender: TObject);
    procedure eproxy_tipoExit(Sender: TObject);
    procedure eCliente_EntradaButtonClick(Sender: TObject);
    procedure eCliente_SaidaButtonClick(Sender: TObject);
    procedure eCliente_PerdaButtonClick(Sender: TObject);
    procedure eCfop_EntradaButtonClick(Sender: TObject);
    procedure eCfop_SaidaButtonClick(Sender: TObject);
    procedure eCfop_PerdaButtonClick(Sender: TObject);
    procedure eCliente_EntradaExit(Sender: TObject);
    procedure eCliente_EntradaKeyPress(Sender: TObject; var Key: Char);
    procedure eCfop_EntradaExit(Sender: TObject);
    procedure eCliente_SaidaExit(Sender: TObject);
    procedure eCfop_SaidaExit(Sender: TObject);
    procedure eCliente_PerdaExit(Sender: TObject);
    procedure eCfop_PerdaExit(Sender: TObject);
    procedure AdvGlowButton5Click(Sender: TObject);
    procedure bincluirClick(Sender: TObject);
    procedure bexcluirClick(Sender: TObject);
    procedure DBEdit8Exit(Sender: TObject);
    procedure RzDBButtonEdit1ButtonClick(Sender: TObject);
    procedure RzDBButtonEdit2ButtonClick(Sender: TObject);
    procedure RzDBButtonEdit3ButtonClick(Sender: TObject);
    procedure RzDBButtonEdit4ButtonClick(Sender: TObject);
    procedure RzDBButtonEdit5ButtonClick(Sender: TObject);
    procedure RzDBButtonEdit6ButtonClick(Sender: TObject);
    procedure PageView2Change(Sender: TObject);
    procedure cySpeedButton1Click(Sender: TObject);
    procedure cySpeedButton2Click(Sender: TObject);
    procedure cySpeedButton3Click(Sender: TObject);
    procedure cySpeedButton4Click(Sender: TObject);
    procedure cySpeedButton5Click(Sender: TObject);
    procedure cySpeedButton6Click(Sender: TObject);
    procedure cySpeedButton7Click(Sender: TObject);
    procedure cySpeedButton8Click(Sender: TObject);
    procedure cySpeedButton9Click(Sender: TObject);
    procedure cySpeedButton10Click(Sender: TObject);
    procedure AdvMetroButton1Click(Sender: TObject);
    procedure bImpressoraClick(Sender: TObject);
    procedure AdvGlowButton4Click(Sender: TObject);
    procedure eprodutoExit(Sender: TObject);
    procedure eprodutoPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure cbCryptLibChange(Sender: TObject);
    procedure cbSSLLibChange(Sender: TObject);
    procedure cbHttpLibChange(Sender: TObject);
    procedure cbXmlSignLibChange(Sender: TObject);
    procedure sbtnCaminhoCertClick(Sender: TObject);
    procedure sbtnGetCertClick(Sender: TObject);
    procedure SpeedButton17Click(Sender: TObject);
    procedure SpeedButton18Click(Sender: TObject);
    procedure SpeedButton19Click(Sender: TObject);
    procedure SpeedButton20Click(Sender: TObject);
    procedure SpeedButton21Click(Sender: TObject);
    procedure SpeedButton22Click(Sender: TObject);
    procedure SpeedButton23Click(Sender: TObject);
    procedure SpeedButton24Click(Sender: TObject);
    procedure SpeedButton9Click(Sender: TObject);
    procedure SpeedButton10Click(Sender: TObject);
    procedure SpeedButton11Click(Sender: TObject);
    procedure SpeedButton12Click(Sender: TObject);
    procedure SpeedButton13Click(Sender: TObject);
    procedure SpeedButton14Click(Sender: TObject);
    procedure SpeedButton15Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton25Click(Sender: TObject);
    procedure SpeedButton32Click(Sender: TObject);
    procedure cbSSLTypeChange(Sender: TObject);
    procedure RzDBButtonEdit7ButtonClick(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure sbtnLogoMarcaClick(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure SpeedButton6Click(Sender: TObject);
    procedure SpeedButton7Click(Sender: TObject);
    procedure SpeedButton8Click(Sender: TObject);
    procedure SpeedButton16Click(Sender: TObject);
    procedure SpeedButton26Click(Sender: TObject);
    procedure RzDBButtonEdit8ButtonClick(Sender: TObject);
    procedure RzDBButtonEdit9ButtonClick(Sender: TObject);
    procedure RzDBButtonEdit10ButtonClick(Sender: TObject);
    procedure RzDBButtonEdit11ButtonClick(Sender: TObject);
    procedure SpeedButton27Click(Sender: TObject);
    procedure SpeedButton28Click(Sender: TObject);
    procedure SpeedButton30Click(Sender: TObject);
    procedure SpeedButton31Click(Sender: TObject);
    procedure SpeedButton33Click(Sender: TObject);
    procedure SpeedButton34Click(Sender: TObject);
  private
    { Private declarations }
    procedure AtualizaSSLLibsCombo;
    procedure PathClick(Sender: TObject);
    procedure GravaDFE;
    procedure CarregaDFE;
    procedure CarregaNFE;
  public
    { Public declarations }
  end;

var
  frmconfig: Tfrmconfig;
  DadosFtp: TDadosFtp;

implementation

uses
  modulo, transf_dados, Math, logo, ecf, FmxUtils, config_cobranca, xloc_conta,
  principal, xloc_cliente, xloc_cfop, xloc_cidade, TextoCartaCobranca,
  pcnConversaoNFe, blcksock, System.TypInfo, ACBrCEP;

{$R *.dfm}

procedure Tfrmconfig.bcancelarClick(Sender: TObject);
begin
  FRMMODULO.qrDFeConfig.CANCEL;
  FRMMODULO.qrconfig.CANCEL;
  FRMMODULO.Conexao.Rollback;
  close;
end;

procedure Tfrmconfig.bgravarClick(Sender: TObject);
begin
  GravaDFE;
  impressora_venda := frmmodulo.qrconfig.fieldbyname('VENDA_PORTA_IMPRESSORA').asstring;

//  if Rramo_padrao.Checked then frmmodulo.qrconfig.FieldByName('ramo_atividade').asinteger := 1;
//  if Rramo_supermercado.Checked then frmmodulo.qrconfig.FieldByName('ramo_atividade').asinteger := 2;
//  if Rramo_auto.Checked then frmmodulo.qrconfig.FieldByName('ramo_atividade').asinteger := 3;
//  if Rramo_farmacia.Checked then frmmodulo.qrconfig.FieldByName('ramo_atividade').asinteger := 4;
//  if rramo_metal.Checked then frmmodulo.qrconfig.FieldByName('ramo_atividade').asinteger := 5;

  //if rnfe.Checked then frmmodulo.qrconfigNF_TIPO.asinteger := 1;
  //if rnfe2.Checked then frmmodulo.qrconfigNF_TIPO.asinteger := 2;
  //formulario continuo
  if rnffc.Checked then
    frmmodulo.qrconfig.FieldByName('NF_TIPO').asinteger := 1;
  //formulario manual
  if rnfm.Checked then
    frmmodulo.qrconfig.FieldByName('NF_TIPO').asinteger := 2;
  //nota simples
  if rnfs.Checked then
    frmmodulo.qrconfig.FieldByName('NF_TIPO').asinteger := 3;

  frmmodulo.qrconfigCEP_SERVIDOR.AsInteger := cbxWS.ItemIndex;

  frmmodulo.qrconfig.FieldByName('VENDA_TIPONOTA').asinteger := combo_venda.ItemIndex;
  frmmodulo.qrconfig.FieldByName('os_TIPONOTA').asinteger := combo_os.ItemIndex;
  frmmodulo.qrconfig.FieldByName('extrato_tiponota').asinteger := combo_extrato.ItemIndex;
  frmmodulo.qrconfig.FieldByName('orcamento_tiponota').asinteger := combo_orcamento.ItemIndex;
  //frmmodulo.qrconfig.FieldByName('nf_tipo').asinteger := combo_nf.ItemIndex;
  frmmodulo.qrconfig.FieldByName('entrega_impressao').asinteger := combo_entrega.ItemIndex;
  frmmodulo.qrconfig.FieldByName('recibo_tiponota').asinteger := combo_recibo.ItemIndex;
  frmmodulo.qrconfig.FieldByName('atendimentoImpressora').AsString := lImpressora.Caption;
  frmmodulo.qrconfig.FieldByName('ATENDIMENTOIMPRESMODELO').asinteger := edtipo.ItemIndex;

  if frmmodulo.qrconfig.state = dsedit then begin
    FRMMODULO.qrconfig.POST;
  end;
  if (frmmodulo.qrDFeConfig.state in [dsedit, dsInsert]) then begin
    FRMMODULO.qrDFeConfig.POST;
  end;
  FRMMODULO.Conexaolocal.Commit;
  FRMMODULO.CONEXAO.Commit;
  close;
end;

procedure Tfrmconfig.bImpressoraClick(Sender: TObject);
begin
  if PrintDialog1.Execute then
    lImpressora.Caption := Printer.Printers[Printer.PrinterIndex];
end;

procedure Tfrmconfig.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := cafree;
end;

procedure Tfrmconfig.FormShow(Sender: TObject);
begin
  qrTipoIMpressora.Close;
  qrTipoIMpressora.Open;
  FRMMODULO.QRFORMAPGTO.OPEN;
  frmmodulo.qrDFeConfig.Open;
  frmmodulo.qrconfig.open;
  cbxWS.ItemIndex := frmmodulo.qrconfigCEP_SERVIDOR.AsInteger;
  combo_venda.ItemIndex := frmmodulo.qrconfig.FieldByName('VENDA_TIPONOTA').asinteger;
  combo_os.ItemIndex := frmmodulo.qrconfig.FieldByName('os_TIPONOTA').asinteger;
  combo_orcamento.ItemIndex := frmmodulo.qrconfig.FieldByName('orcamento_TIPONOTA').asinteger;
  combo_extrato.ItemIndex := frmmodulo.qrconfig.FieldByName('extrato_TIPONOTA').asinteger;
  combo_nf.ItemIndex := frmmodulo.qrconfig.FieldByName('nf_TIPO').asinteger;
  combo_entrega.ItemIndex := frmmodulo.qrconfig.FieldByName('entrega_impressao').asinteger;
  combo_recibo.ItemIndex := frmmodulo.qrconfig.FieldByName('recibo_TIPONOTA').asinteger;
  lImpressora.Caption := frmmodulo.qrconfig.FieldByName('atendimentoImpressora').AsString;
  edtipo.ItemIndex := frmmodulo.qrconfig.FieldByName('ATENDIMENTOIMPRESMODELO').asinteger;

  case frmmodulo.qrconfig.FieldByName('NF_TIPO').asinteger of
    1:
      rnffc.Checked := true;
    2:
      rnfm.Checked := true;
    3:
      rnfs.Checked := true;
  end;

  PageView3.ActivePageIndex := 0;

  frmmodulo.qrconfig.edit;
  if frmmodulo.qrDFeConfig.IsEmpty then
    frmmodulo.qrDFeConfig.Insert
  else
    frmmodulo.qrDFeConfig.Edit;
  frmmodulo.qremitente.open;
  if frmmodulo.qrconfigCEP_CHAVE.AsString = '' then
    frmmodulo.qrconfigCEP_CHAVE.AsString := '1STa9eKhhfKvc7Ljh6W6CO5Kr/bFOl.';
  if frmmodulo.qrconfigPRODUTO_TAXA_ENTREGA.AsString <> '' then begin
    qrproduto.Close;
    qrproduto.SQL.Clear;
    qrproduto.SQL.Add('select produto from c000025 where codigo = ' + QuotedStr(frmmodulo.qrconfigPRODUTO_TAXA_ENTREGA.AsString));
    qrproduto.Open;
    if qrproduto.IsEmpty then begin
      edDesProdTaxa.Text := '';
    end
    else
      edDesProdTaxa.Text := qrproduto.FieldByName('produto').AsString;
    qrproduto.Close;
  end
  else begin
    edDesProdTaxa.Text := '';
  end;
  CarregaDFE;
  CarregaNFE;
  AtualizaSSLLibsCombo;
end;

procedure Tfrmconfig.FormCreate(Sender: TObject);
var
  T: TSSLLib;
  I: TpcnTipoEmissao;
  J: TpcnModeloDF;
  K: TpcnVersaoDF;
  U: TSSLCryptLib;
  V: TSSLHttpLib;
  X: TSSLXmlSignLib;
  Y: TSSLType;
  IC: TACBrCEPWebService;
begin
  cbxWS.Items.Clear;
  for IC := Low(TACBrCEPWebService) to High(TACBrCEPWebService) do
    cbxWS.Items.Add(GetEnumName(TypeInfo(TACBrCEPWebService), integer(IC)));

  PageView4.ActivePageIndex := 0;
  PageView9.ActivePageIndex := 0;
  PageView8.ActivePageIndex := 0;
  PageView7.ActivePageIndex := 0;
  PageView6.ActivePageIndex := 0;
  cbSSLLib.Items.Clear;
  for T := Low(TSSLLib) to High(TSSLLib) do
    cbSSLLib.Items.Add(GetEnumName(TypeInfo(TSSLLib), integer(T)));

  cbCryptLib.Items.Clear;
  for U := Low(TSSLCryptLib) to High(TSSLCryptLib) do
    cbCryptLib.Items.Add(GetEnumName(TypeInfo(TSSLCryptLib), integer(U)));

  cbHttpLib.Items.Clear;
  for V := Low(TSSLHttpLib) to High(TSSLHttpLib) do
    cbHttpLib.Items.Add(GetEnumName(TypeInfo(TSSLHttpLib), integer(V)));

  cbXmlSignLib.Items.Clear;
  for X := Low(TSSLXmlSignLib) to High(TSSLXmlSignLib) do
    cbXmlSignLib.Items.Add(GetEnumName(TypeInfo(TSSLXmlSignLib), integer(X)));

  cbSSLType.Items.Clear;
  for Y := Low(TSSLType) to High(TSSLType) do
    cbSSLType.Items.Add(GetEnumName(TypeInfo(TSSLType), integer(Y)));

  nfe_cbFormaEmissao.Items.Clear;
  for I := Low(TpcnTipoEmissao) to High(TpcnTipoEmissao) do
    nfe_cbFormaEmissao.Items.Add(GetEnumName(TypeInfo(TpcnTipoEmissao), integer(I)));

  nfce_cbFormaEmissao.Items.Clear;
  for I := Low(TpcnTipoEmissao) to High(TpcnTipoEmissao) do
    nfce_cbFormaEmissao.Items.Add(GetEnumName(TypeInfo(TpcnTipoEmissao), integer(I)));

  nfe_cbVersaoDF.Items.Clear;
  for K := Low(TpcnVersaoDF) to High(TpcnVersaoDF) do
    nfe_cbVersaoDF.Items.Add(GetEnumName(TypeInfo(TpcnVersaoDF), integer(K)));

  nfce_cbVersaoDF.Items.Clear;
  for K := Low(TpcnVersaoDF) to High(TpcnVersaoDF) do
    nfce_cbVersaoDF.Items.Add(GetEnumName(TypeInfo(TpcnVersaoDF), integer(K)));

  FRMMODULO.qrconfig.OPEN;
  if frmmodulo.qrconfig.FieldByName('ramo_atividade').asinteger = 4 then begin
    combo_venda.Items.Clear;
    combo_venda.Items.Add('01 - Cupom Fiscal');
    combo_venda.Items.Add('02 - Nota Fiscal');
    combo_venda.Items.Add('03 - Bobina');
    combo_venda.Items.Add('04 - Cupom Fiscal / CNFV');
    combo_venda.Items.Add('05 - Bobina - Simples');
  end
  else begin
    combo_venda.Items.Clear;
    combo_venda.Items.Add('01 - Cupom Fiscal');
    combo_venda.Items.Add('02 - Nota Fiscal');
    combo_venda.Items.Add('03 - Bobina');
    combo_venda.Items.Add('04 - Formul�rio Cont�nuo - Raz�o');
    combo_venda.Items.Add('05 - Formul�rio Cont�nuo - Carta');
    combo_venda.Items.Add('06 - Pr�-impresso (Personalizado)');
    combo_venda.Items.Add('07 - Contrato/Guia de Entrega/Carn�');
    combo_venda.Items.Add('08 - Personalizado');
    combo_venda.Items.Add('09 - Papel A4 - Laser / Tinta');
    combo_venda.Items.Add('10 - Papel Raz�o - Laser / Tinta');
    combo_venda.Items.Add('11 - Formul�rio Cont�nuo - Raz�o 2');
    combo_venda.Items.Add('12 - Contrato/Guia de Entrega/Carn�+Capa');
    combo_venda.Items.Add('13 - Bobina sem formata��o');
    combo_venda.Items.Add('14 - Pedido + Carn�');
    combo_venda.Items.Add('15 - Contrato/Carn�');
    combo_venda.Items.Add('16 - Pedido + Carn� com c�digo de barras');
    combo_venda.Items.add('17 - Raz�o Laser - 2');
  end;
end;

procedure Tfrmconfig.baplicarClick(Sender: TObject);
var
  ServerIni: TIniFile;
begin
  GravaDFE;
 // if Rramo_padrao.Checked then frmmodulo.qrconfig.FieldByName('ramo_atividade').asinteger := 1;
 // if Rramo_supermercado.Checked then frmmodulo.qrconfig.FieldByName('ramo_atividade').asinteger := 2;
 // if Rramo_auto.Checked then frmmodulo.qrconfig.FieldByName('ramo_atividade').asinteger := 3;
 // if Rramo_farmacia.Checked then frmmodulo.qrconfig.FieldByName('ramo_atividade').asinteger := 4;
 // if rramo_metal.Checked then frmmodulo.qrconfig.FieldByName('ramo_atividade').asinteger := 5;

  //if rnfe.Checked then frmmodulo.qrconfigNF_TIPO.asinteger := 1;
  //if rnfe2.Checked then frmmodulo.qrconfigNF_TIPO.asinteger := 2;
  if rnffc.Checked then
    frmmodulo.qrconfig.FieldByName('NF_TIPO').asinteger := 1;
  if rnfm.Checked then
    frmmodulo.qrconfig.FieldByName('NF_TIPO').asinteger := 2;
  if rnfs.Checked then
    frmmodulo.qrconfig.FieldByName('NF_TIPO').asinteger := 3;

  frmmodulo.qrconfigCEP_SERVIDOR.AsInteger := cbxWS.ItemIndex;
  frmmodulo.qrconfig.FieldByName('VENDA_TIPONOTA').asinteger := combo_venda.ItemIndex;
  frmmodulo.qrconfig.FieldByName('os_TIPONOTA').asinteger := combo_os.ItemIndex;
  frmmodulo.qrconfig.FieldByName('extrato_tiponota').asinteger := combo_extrato.ItemIndex;
  frmmodulo.qrconfig.FieldByName('orcamento_tiponota').asinteger := combo_orcamento.ItemIndex;
  //frmmodulo.qrconfig.FieldByName('nf_tipo').asinteger := combo_nf.ItemIndex;
  frmmodulo.qrconfig.FieldByName('entrega_impressao').asinteger := combo_entrega.ItemIndex;

  frmmodulo.qrconfig.FieldByName('recibo_tiponota').asinteger := combo_recibo.ItemIndex;

  //////////////////////////////////////////////////////////////////////////////////////////
  // ATUALIZA AS AVRIAVEIS DO FRMMODULO

  ecf_modelo := frmmodulo.qrconfig.fieldbyname('ecf_modelo').asstring;
  ecf_porta := frmmodulo.qrconfig.fieldbyname('ecf_porta').asstring;

  // cupom vinculado

  ecf_cupom_vinculado := inttostr(frmmodulo.qrconfig.FieldByName('IMPRIME_CUPOM_VINCULADO').AsInteger);
  ecf_cupom_vinculado_produtos := inttostr(frmmodulo.qrconfig.FieldByName('IMPRIME_PRODUTOS_VINCULADOS').AsInteger);
  ecf_cupom_vinculado_carne := inttostr(frmmodulo.qrconfig.FieldByName('IMPRIME_COMPROVANTE_DEBITO').AsInteger);

  // imprimir duplicatas
  imp_duplicata := inttostr(frmmodulo.qrconfig.FieldByName('IMPRIME_DUPLICATA').AsInteger);

  ramo := frmmodulo.qrconfig.fieldbyname('ramo_atividade').asinteger;

  impressora_venda := frmmodulo.qrconfig.fieldbyname('VENDA_PORTA_IMPRESSORA').asstring;

  if frmmodulo.QRCONFIG.FieldByName('ESTOQUE_NEGATIVO').ASINTEGER = 1 then
    ESTOQUE_NEGATIVO := TRUE
  else
    ESTOQUE_NEGATIVO := FALSE;

  case frmmodulo.qrconfig.FieldByName('CASAS_DECIMAIS_qtde').ASINTEGER of
    0:
      begin
        mascara_qtde := '###,###,##0';
        decimal_qtde := 0;
      end;
    2:
      begin
        mascara_qtde := '###,###,##0.00';
        decimal_qtde := 2;
      end;
    3:
      begin
        mascara_qtde := '###,###,##0.000';
        decimal_qtde := 3;
      end;
    4:
      begin
        mascara_qtde := '###,###,##0.0000';
        decimal_qtde := 4;
      end;
    5:
      begin
        mascara_qtde := '###,###,##0.00000';
        decimal_qtde := 5;
      end;
    6:
      begin
        mascara_qtde := '###,###,##0.000000';
        decimal_qtde := 6;
      end;
    7:
      begin
        mascara_qtde := '###,###,##0.0000000';
        decimal_qtde := 7;
      end;

  end;
  case frmmodulo.qrconfig.FieldByName('CASAS_DECIMAIS_valor').ASINTEGER of
    2:
      begin
        mascara_valor := '###,###,##0.00';
        decimal_valor := 2;
      end;
    3:
      begin
        mascara_valor := '###,###,##0.000';
        decimal_valor := 3;
      end;
    4:
      begin
        mascara_valor := '###,###,##0.0000';
        decimal_valor := 4;
      end;
    5:
      begin
        mascara_valor := '###,###,##0.00000';
        decimal_valor := 5;
      end;
    6:
      begin
        mascara_valor := '###,###,##0.000000';
        decimal_valor := 6;
      end;
    7:
      begin
        mascara_valor := '###,###,##0.0000000';
        decimal_valor := 7;
      end;

  end;

  frmmodulo.qrprodutoESTOQUE.DisplayFormat := mascara_qtde;
  frmmodulo.qrprodutoESTOQUEMINIMO.DisplayFormat := mascara_qtde;
  frmmodulo.qrprodutoPRECOCUSTO.DisplayFormat := mascara_valor;
  frmmodulo.qrprodutoPRECOVENDA.DisplayFormat := mascara_valor;
  frmmodulo.qrprodutoPRECOCUSTO_ANTERIOR.DisplayFormat := mascara_valor;
  frmmodulo.qrprodutoPRECOVENDA_ANTERIOR.DisplayFormat := mascara_valor;
  frmmodulo.qrprodutoCUSTOMEDIO.DisplayFormat := mascara_valor;
  frmmodulo.qrprecoCUSTO_COMPRA.DisplayFormat := mascara_valor;
  frmmodulo.qrprecoVALOR_ULTIMA_COMPRA.DisplayFormat := mascara_valor;
  frmmodulo.qrprecoPRECO_VENDA.DisplayFormat := mascara_valor;
  frmmodulo.qrprecoLUCRO.DisplayFormat := mascara_valor;

  //////////////////////////////////////////////////////////////////////////////////////////

  if frmmodulo.qrconfig.state = dsedit then begin
    FRMMODULO.qrconfig.POST;
  end;
  if (frmmodulo.qrDFeConfig.state in [dsedit, dsInsert]) then begin
    frmmodulo.qrDFeConfig.Post;
  end;

  FRMMODULO.CONEXAO.COMMIT;
  FRMMODULO.Conexaolocal.Commit;
  frmmodulo.qrconfig.edit;
  frmmodulo.qrDFeConfig.edit;


  // Grava configura��es no arquivo de
  // configura��o do FTP

 // ServerIni := TIniFile.Create(ExtractFilePath(ParamStr(0)) + 'ini\FTPConfig.ini');
 // try
//    ServerIni.WriteString('CONEXAO', 'FTP', eftp.text);
//    ServerIni.WriteString('CONEXAO', 'USUARIO', eusuario.text);
//    ServerIni.WriteString('CONEXAO', 'SALVARS', esalvars.text);
//    ServerIni.WriteString('CONEXAO', 'SALVAR', esalvarc.text);
//    ServerIni.WriteString('CONEXAO', 'SALVARF', esalvarf.text);
//    ServerIni.WriteString('CONEXAO', 'Port', eporta.text);
//    ServerIni.WriteString('CONEXAO', 'PASSIVO', epassivo.text);
//    ServerIni.WriteString('CONEXAO', 'ProxyHost', eproxy_Host.text);
//    ServerIni.WriteString('CONEXAO', 'ProxyPassword', eproxy_Password.text);
//    ServerIni.WriteString('CONEXAO', 'ProxyUserName', eproxy_UserName.text);
//    ServerIni.WriteString('CONEXAO', 'ProxyPort', eproxy_Port.text);
//    ServerIni.WriteString('CONEXAO', 'ProxyTipo', eproxy_Tipo.text);
 // finally
 //   ServerIni.Free;
 // end;
  frmPrincipal.AplicaVisual;
  Application.ProcessMessages;
end;

procedure Tfrmconfig.BitBtn4Click(Sender: TObject);
begin
  if BitBtn4.Caption = 'Alterar' then begin
    frmmodulo.qremitente.Edit;
    pemitente2.Enabled := true;
    bitbtn4.Caption := 'Gravar';
    bt_configura0001.Caption := 'Gravar';
    bitbtn5.Enabled := true;
    enome.SetFocus;
  end
  else begin
    frmmodulo.qremitente.Post;
    emitente_codigo := frmmodulo.qremitente.fieldbyname('codigo').asstring;
    emitente_nome := frmmodulo.qremitente.fieldbyname('nome').asstring;
    emitente_fantasia := frmmodulo.qremitente.fieldbyname('fantasia').asstring;
    emitente_endereco := frmmodulo.qremitente.fieldbyname('endereco').asstring + ' - ' + frmmodulo.qremitente.fieldbyname('bairro').asstring;
    emitente_cidade := frmmodulo.qremitente.fieldbyname('cidade').asstring + '/' + frmmodulo.qremitente.fieldbyname('uf').asstring;
    emitente_cep := frmmodulo.qremitente.fieldbyname('cep').asstring;
    emitente_telefone := frmmodulo.qremitente.fieldbyname('telefone').asstring;
    emitente_cnpj := frmmodulo.qremitente.fieldbyname('cnpj').asstring;
    emitente_ie := frmmodulo.qremitente.fieldbyname('ie').asstring;
    emitente_uf := frmmodulo.qremitente.fieldbyname('uf').asstring;

    pemitente2.Enabled := false;
    bitbtn4.Caption := 'Alterar';
    bt_configura0001.Caption := 'Alterar';
    bitbtn5.Enabled := false;
  end;
end;

procedure Tfrmconfig.BitBtn5Click(Sender: TObject);
begin
  frmmodulo.qremitente.Cancel;
  bitbtn4.Caption := 'Alterar';
  pemitente2.Enabled := false;
  bitbtn5.Enabled := false;
end;

procedure Tfrmconfig.BitBtn9Click(Sender: TObject);
begin
  if OpenPictureDialog1.Execute then begin
    dbimage1.Picture.LoadFromFile(OpenPictureDialog1.Filename);
  end;
end;

procedure Tfrmconfig.BitBtn10Click(Sender: TObject);
begin
  FRMMODULO.QRemitente.FIELDBYNAME('logo').Value := null;
end;

procedure Tfrmconfig.BitBtn12Click(Sender: TObject);
begin
{  if DBComboBox3.text = 'DARUMA' then
  begin
     executeFile('\TALOS\server\ecf\daruma\Exemplo\Delphi\Daruma_Framework_Delphi7.exe', '', '',1)
  end; }
end;

procedure Tfrmconfig.blocregiaoClick(Sender: TObject);
begin
  frmxloc_conta := tfrmxloc_conta.create(self);
  frmxloc_conta.showmodal;
  if resultado_pesquisa1 <> '' then begin
    if (FRMMODULO.QRCONFIG.STATE = DSEDIT) or (FRMMODULO.QRCONFIG.StaTE = DSINSERT) then
      FRMMODULO.QRCONFIG.FIELDBYNAME('PLANO_VENDA_AV').ASSTRING := RESULTADO_PESQUISA1;
  end;
end;

procedure Tfrmconfig.BitBtn13Click(Sender: TObject);
begin
  frmxloc_conta := tfrmxloc_conta.create(self);
  frmxloc_conta.showmodal;
  if resultado_pesquisa1 <> '' then begin
    if (FRMMODULO.QRCONFIG.STATE = DSEDIT) or (FRMMODULO.QRCONFIG.StaTE = DSINSERT) then
      FRMMODULO.QRCONFIG.FIELDBYNAME('PLANO_DUPLICATA_NFE').ASSTRING := RESULTADO_PESQUISA1;
  end;
end;

procedure Tfrmconfig.BitBtn14Click(Sender: TObject);
begin
  frmxloc_conta := tfrmxloc_conta.create(self);
  frmxloc_conta.showmodal;
  if resultado_pesquisa1 <> '' then begin
    if (FRMMODULO.QRCONFIG.STATE = DSEDIT) or (FRMMODULO.QRCONFIG.StaTE = DSINSERT) then
      FRMMODULO.QRCONFIG.FIELDBYNAME('PLANO_OS_AV').ASSTRING := RESULTADO_PESQUISA1;
  end;
end;

procedure Tfrmconfig.BitBtn15Click(Sender: TObject);
begin
  frmxloc_conta := tfrmxloc_conta.create(self);
  frmxloc_conta.showmodal;
  if resultado_pesquisa1 <> '' then begin
    if (FRMMODULO.QRCONFIG.STATE = DSEDIT) or (FRMMODULO.QRCONFIG.StaTE = DSINSERT) then
      FRMMODULO.QRCONFIG.FIELDBYNAME('PLANO_OS_AP').ASSTRING := RESULTADO_PESQUISA1;
  end;
end;

procedure Tfrmconfig.BitBtn18Click(Sender: TObject);
begin
  frmxloc_conta := tfrmxloc_conta.create(self);
  frmxloc_conta.showmodal;
  if resultado_pesquisa1 <> '' then begin
    if (FRMMODULO.QRCONFIG.STATE = DSEDIT) or (FRMMODULO.QRCONFIG.StaTE = DSINSERT) then
      FRMMODULO.QRCONFIG.FIELDBYNAME('PLANO_RECEBTO_CREDIARIO').ASSTRING := RESULTADO_PESQUISA1;
  end;
end;

procedure Tfrmconfig.BitBtn16Click(Sender: TObject);
begin
  frmxloc_conta := tfrmxloc_conta.create(self);
  frmxloc_conta.showmodal;
  if resultado_pesquisa1 <> '' then begin
    if (FRMMODULO.QRCONFIG.STATE = DSEDIT) or (FRMMODULO.QRCONFIG.StaTE = DSINSERT) then
      FRMMODULO.QRCONFIG.FIELDBYNAME('PLANO_OUTRAS_ENTRADAS').ASSTRING := RESULTADO_PESQUISA1;
  end;
end;

procedure Tfrmconfig.BitBtn17Click(Sender: TObject);
begin
  frmxloc_conta := tfrmxloc_conta.create(self);
  frmxloc_conta.showmodal;
  if resultado_pesquisa1 <> '' then begin
    if (FRMMODULO.QRCONFIG.STATE = DSEDIT) or (FRMMODULO.QRCONFIG.StaTE = DSINSERT) then
      FRMMODULO.QRCONFIG.FIELDBYNAME('PLANO_OUTRAS_SAIDAS').ASSTRING := RESULTADO_PESQUISA1;
  end;
end;

procedure Tfrmconfig.Button1Click(Sender: TObject);
begin
  frmmodulo.qrconfig.fieldbyname('NF_ITENS_PAGINA').asinteger := 16;
  frmmodulo.qrconfig.fieldbyname('NF_LINHA_TRANSPORTE').asinteger := 19;
  frmmodulo.qrconfig.fieldbyname('NF_SALTO_PAGINA').asinteger := 41;
end;

procedure Tfrmconfig.DBEdit51Exit(Sender: TObject);
begin
//  frmmodulo.qrconfig.fieldbyname('ecf_caixa').asstring := frmPrincipal.zerarcodigo(DBEdit51.text,3);
end;

procedure Tfrmconfig.GravaDFE;
begin
  with frmmodulo do begin
    qrDFeConfigTSSLLIB.AsInteger := cbSSLLib.ItemIndex;
    qrDFeConfigTSSLCRYPTLIB.AsInteger := cbCryptLib.ItemIndex;
    qrDFeConfigTSSLHTTPLIB.AsInteger := cbHttpLib.ItemIndex;
    qrDFeConfigTSSLXMLSIGNLIB.AsInteger := cbXmlSignLib.ItemIndex;
    qrDFeConfigSSLTYPE.AsInteger := cbSSLType.ItemIndex;
    qrDFeConfigNFE_FORMATO_EMISSAO.AsInteger := nfe_cbFormaEmissao.ItemIndex;
    qrDFeConfigNFE_VERSAO.AsInteger := nfe_cbVersaoDF.ItemIndex;
    qrDFeConfigNFCE_FORMATO_EMISSAO.AsInteger := nfce_cbFormaEmissao.ItemIndex;
    qrDFeConfigNFCE_VERSAO.AsInteger := nfce_cbVersaoDF.ItemIndex;
    qrDFeConfigCTE_FORMATO_EMISSAO.AsInteger := cte_cbFormaEmissao.ItemIndex;
    qrDFeConfigMDFE_FORMATO_EMISSAO.AsInteger := mdfe_cbFormaEmissao.ItemIndex;
  end;
end;

procedure Tfrmconfig.Gravar1Click(Sender: TObject);
begin
  bgravarClick(frmconfig);
end;

procedure Tfrmconfig.Aplicar1Click(Sender: TObject);
begin
  baplicarClick(frmconfig);
end;

procedure Tfrmconfig.AtualizaSSLLibsCombo;
begin
  cbSSLLib.ItemIndex := Integer(ACBrNFe1.Configuracoes.Geral.SSLLib);
  cbCryptLib.ItemIndex := Integer(ACBrNFe1.Configuracoes.Geral.SSLCryptLib);
  cbHttpLib.ItemIndex := Integer(ACBrNFe1.Configuracoes.Geral.SSLHttpLib);
  cbXmlSignLib.ItemIndex := Integer(ACBrNFe1.Configuracoes.Geral.SSLXmlSignLib);
  cbSSLType.ItemIndex := Integer(ACBrNFe1.SSL.SSLType);
  cbSSLType.Enabled := (ACBrNFe1.Configuracoes.Geral.SSLHttpLib in [httpWinHttp, httpOpenSSL]);
end;

procedure Tfrmconfig.Cancelar1Click(Sender: TObject);
begin
  bcancelarClick(frmconfig);
end;

procedure Tfrmconfig.CarregaDFE;
begin
  with frmmodulo do begin
    cbSSLLib.ItemIndex := qrDFeConfigTSSLLIB.AsInteger;
    cbCryptLib.ItemIndex := qrDFeConfigTSSLCRYPTLIB.AsInteger;
    cbHttpLib.ItemIndex := qrDFeConfigTSSLHTTPLIB.AsInteger;
    cbXmlSignLib.ItemIndex := qrDFeConfigTSSLXMLSIGNLIB.AsInteger;
    cbSSLType.ItemIndex := qrDFeConfigSSLTYPE.AsInteger;
    nfe_cbFormaEmissao.ItemIndex := qrDFeConfigNFE_FORMATO_EMISSAO.AsInteger;
    nfe_cbVersaoDF.ItemIndex := qrDFeConfigNFE_VERSAO.AsInteger;
    nfce_cbFormaEmissao.ItemIndex := qrDFeConfigNFCE_FORMATO_EMISSAO.AsInteger;
    nfce_cbVersaoDF.ItemIndex := qrDFeConfigNFCE_VERSAO.AsInteger;
    cte_cbFormaEmissao.ItemIndex := qrDFeConfigCTE_FORMATO_EMISSAO.AsInteger;
    mdfe_cbFormaEmissao.ItemIndex := qrDFeConfigMDFE_FORMATO_EMISSAO.AsInteger;
  end;
end;

procedure Tfrmconfig.CarregaNFE;
var
  ok: Boolean;
begin
  with frmmodulo do begin
    ACBrNFe1.Configuracoes.Certificados.ArquivoPFX := qrDFeConfigCERTIFICADO_CAMINHO.AsString;
    ACBrNFe1.Configuracoes.Certificados.Senha := qrDFeConfigCERTIFICADO_SENHA.AsString;
    ACBrNFe1.Configuracoes.Certificados.NumeroSerie := qrDFeConfigCERTIFICADO_NUMERO_SERIE.AsString;
    ACBrNFe1.SSL.DescarregarCertificado;
    with ACBrNFe1.Configuracoes.Geral do begin
      SSLLib := TSSLLib(qrDFeConfigTSSLLIB.AsInteger);
      SSLCryptLib := TSSLCryptLib(qrDFeConfigTSSLCRYPTLIB.AsInteger);
      SSLHttpLib := TSSLHttpLib(qrDFeConfigTSSLHTTPLIB.AsInteger);
      SSLXmlSignLib := TSSLXmlSignLib(qrDFeConfigTSSLXMLSIGNLIB.AsInteger);
      AtualizaSSLLibsCombo;
      AtualizarXMLCancelado := qrDFeConfigATUALIZAR_XML.AsString = 'S';
      ExibirErroSchema := qrDFeConfigEXIBIR_ERRO_SCHEMA.AsString = 'S';
      RetirarAcentos := qrDFeConfigRETIRAR_ACENTOS.AsString = 'S';
      FormatoAlerta := qrDFeConfigFORMATO_ALERTA.AsString;
      FormaEmissao := TpcnTipoEmissao(qrDFeConfigNFE_FORMATO_EMISSAO.AsInteger);
      ModeloDF := moNFe;
      VersaoDF := TpcnVersaoDF(qrDFeConfigNFE_VERSAO.AsInteger);
      Salvar := qrDFeConfigNFE_SALVAR_ENVIO_RESPOSTA.AsString = 'S';
    end;
    with ACBrNFe1.Configuracoes.WebServices do begin
      UF := qrDFeConfigWEBSERVICE_UF.AsString;
      Ambiente := StrToTpAmb(ok, IntToStr(qrDFeConfigAMBIENTE.AsInteger + 1));
      Visualizar := qrDFeConfigVISUALIZAR_MENSAGEM.AsString = 'S';
      Salvar := qrDFeConfigSALVAR_ENVELOPE_SOAP.AsString = 'S';
      AjustaAguardaConsultaRet := qrDFeConfigAJUSTAR_AGUARDAR.AsString = 'S';
      if qrDFeConfigAGUARDAR.AsInteger > 0 then
        AguardarConsultaRet := ifThen(qrDFeConfigAGUARDAR.AsInteger < 1000, qrDFeConfigAGUARDAR.AsInteger * 1000, qrDFeConfigAGUARDAR.AsInteger);
      if qrDFeConfigTENTATIVAS.AsInteger > 0 then
        Tentativas := qrDFeConfigTENTATIVAS.AsInteger;

      if qrDFeConfigINTERVALO.AsInteger > 0 then
        IntervaloTentativas := ifThen(qrDFeConfigINTERVALO.AsInteger < 1000, qrDFeConfigINTERVALO.AsInteger * 1000, qrDFeConfigINTERVALO.AsInteger);
      TimeOut := qrDFeConfigTIMEOUT.AsInteger;
      ProxyHost := qrDFeConfigPROXY_HOST.AsString;
      ProxyPort := qrDFeConfigPROXY_PORTA.AsString;
      ProxyUser := qrDFeConfigPROXY_USUARIO.AsString;
      ProxyPass := qrDFeConfigPROXY_SENHA.AsString;
    end;

    ACBrNFe1.SSL.SSLType := TSSLType(qrDFeConfigSSLTYPE.AsInteger);
    with ACBrNFe1.Configuracoes.Arquivos do begin
      Salvar := qrDFeConfigNFE_SALVAR_PASTAS_SEPARADAS.AsString = 'S';
      SepararPorMes := qrDFeConfigNFE_CRIAR_MENSALMENTE.AsString = 'S';
      AdicionarLiteral := qrDFeConfigNFE_ADICIONAR_LITERAL_PASTAS.AsString = 'S';
      EmissaoPathNFe := qrDFeConfigNFE_SALVAR_DATA_EMISSAO.AsString = 'S';
      SalvarEvento := qrDFeConfigNFE_SALVAR_ARQS_EVENTOS.AsString = 'S';
      SepararPorCNPJ := qrDFeConfigNFE_SEPARAR_PELO_CNPJ.AsString = 'S';
      SepararPorModelo := qrDFeConfigNFE_SEPARAR_MODELO_DOCUMENTO.AsString = 'S';
      PathSalvar := qrDFeConfigNFE_CAMINHO_ENVIO_RESPOSTA.AsString;
      PathSchemas := qrDFeConfigNFE_SCHEMAS.AsString;
      PathNFe := qrDFeConfigNFE_PASTA_ARQUIVOS_NFE.AsString;
      PathInu := qrDFeConfigNFE_PASTA_INUTILIZACAO.AsString;
      PathEvento := qrDFeConfigNFE_PASTA_EVENTO.AsString;
    end;

    if ACBrNFe1.DANFE <> nil then begin
      ACBrNFe1.DANFE.TipoDANFE := StrToTpImp(ok, IntToStr(qrDFeConfigNFE_DANFE.AsInteger + 1));
      ACBrNFe1.DANFE.Logo := qrDFeConfigLOGO_MARCA.AsString;
    end;
  end;
end;

procedure Tfrmconfig.cbCryptLibChange(Sender: TObject);
begin
  try
    if cbCryptLib.ItemIndex <> -1 then
      ACBrNFe1.Configuracoes.Geral.SSLCryptLib := TSSLCryptLib(cbCryptLib.ItemIndex);
  finally
    AtualizaSSLLibsCombo;
  end;
end;

procedure Tfrmconfig.cbHttpLibChange(Sender: TObject);
begin
  try
    if cbHttpLib.ItemIndex <> -1 then
      ACBrNFe1.Configuracoes.Geral.SSLHttpLib := TSSLHttpLib(cbHttpLib.ItemIndex);
  finally
    AtualizaSSLLibsCombo;
  end;
end;

procedure Tfrmconfig.cbSSLLibChange(Sender: TObject);
begin
  try
    if cbSSLLib.ItemIndex <> -1 then
      ACBrNFe1.Configuracoes.Geral.SSLLib := TSSLLib(cbSSLLib.ItemIndex);
  finally
    AtualizaSSLLibsCombo;
  end;
end;

procedure Tfrmconfig.cbSSLTypeChange(Sender: TObject);
begin
  try
    if cbSSLType.ItemIndex <> -1 then
      ACBrNFe1.SSL.SSLType := TSSLType(cbSSLType.ItemIndex);
  finally
    AtualizaSSLLibsCombo;
  end;
end;

procedure Tfrmconfig.cbXmlSignLibChange(Sender: TObject);
begin
  try
    if cbXmlSignLib.ItemIndex <> -1 then
      ACBrNFe1.Configuracoes.Geral.SSLXmlSignLib := TSSLXmlSignLib(cbXmlSignLib.ItemIndex);
  finally
    AtualizaSSLLibsCombo;
  end;
end;

procedure Tfrmconfig.cySpeedButton10Click(Sender: TObject);
begin
  PageView3.ActivePageIndex := 9;
end;

procedure Tfrmconfig.cySpeedButton1Click(Sender: TObject);
begin
  PageView3.ActivePageIndex := 0;
end;

procedure Tfrmconfig.cySpeedButton2Click(Sender: TObject);
begin
  PageView3.ActivePageIndex := 1;
end;

procedure Tfrmconfig.cySpeedButton3Click(Sender: TObject);
begin
  PageView3.ActivePageIndex := 2;
end;

procedure Tfrmconfig.cySpeedButton4Click(Sender: TObject);
begin
  PageView3.ActivePageIndex := 3;
end;

procedure Tfrmconfig.cySpeedButton5Click(Sender: TObject);
begin
  PageView3.ActivePageIndex := 4;
end;

procedure Tfrmconfig.cySpeedButton6Click(Sender: TObject);
begin
  PageView3.ActivePageIndex := 5;
end;

procedure Tfrmconfig.cySpeedButton7Click(Sender: TObject);
begin
  PageView3.ActivePageIndex := 6;
end;

procedure Tfrmconfig.cySpeedButton8Click(Sender: TObject);
begin
  PageView3.ActivePageIndex := 7;
end;

procedure Tfrmconfig.cySpeedButton9Click(Sender: TObject);
begin
  PageView3.ActivePageIndex := 8;
end;

procedure Tfrmconfig.enovadata_inventarioKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    perform(wm_nextdlgctl, 0, 0);

end;

procedure Tfrmconfig.AdvGlowButton2Click(Sender: TObject);
begin
  if application.messagebox('Esta opera��o limpa o Banco de Dados e Transfere dados de outros sistemas! Deseja continuar?', 'Aten��o', mb_yesno + MB_ICONWARNING + MB_DEFBUTTON2) = idyes then begin
    frmtransf_dados := tfrmtransf_dados.create(self);
    frmtransf_dados.showmodal;
  end;
end;

procedure Tfrmconfig.AdvGlowButton1Click(Sender: TObject);
begin
  frmconfig_cobranca := tfrmconfig_cobranca.create(self);
  frmconfig_cobranca.showmodal;
end;

procedure Tfrmconfig.AdvGlowButton3Click(Sender: TObject);
var
  y: integer;
begin
  qrvenda.close;
  qrvenda.sql.clear;
  qrvenda.sql.add('select * from c000048');
  qrvenda.open;
  qrvenda.first;
  while not qrvenda.eof do begin
    qrreceber.close;
    qrreceber.sql.clear;
    qrreceber.sql.add('select * from c000049 where codvenda = ''' + qrvenda.fieldbyname('codigo').asstring + ''' and situacao = 1');
    qrreceber.open;
    if qrreceber.RecordCount > 1 then begin
      qrreceber.first;
      y := 1;
      while not qrreceber.eof do begin
        qrreceber.edit;
        qrreceber.fieldbyname('codigo').asstring := qrvenda.fieldbyname('codigo').asstring + '/' + frmprincipal.zerarcodigo(inttostr(y), 2);
        qrreceber.post;
        qrreceber.next;
        y := y + 1;
      end;
    end;
    qrvenda.next;
  end;
  showmessage('Pronto!');
end;

procedure Tfrmconfig.AdvGlowButton4Click(Sender: TObject);
begin
  Application.CreateForm(TfrmTextoCartaCobranca, frmTextoCartaCobranca);
  frmTextoCartaCobranca.ShowModal;
  FreeAndNil(frmTextoCartaCobranca);
end;

procedure Tfrmconfig.DBEdit4KeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    perform(wm_nextdlgctl, 0, 0);
end;

procedure Tfrmconfig.BitBtn1Click(Sender: TObject);
begin
  frmxloc_conta := tfrmxloc_conta.create(self);
  frmxloc_conta.showmodal;
  if resultado_pesquisa1 <> '' then begin
    if (FRMMODULO.QRCONFIG.STATE = DSEDIT) or (FRMMODULO.QRCONFIG.StaTE = DSINSERT) then
      FRMMODULO.QRCONFIG.FIELDBYNAME('PLANO_VENDA_AP').ASSTRING := RESULTADO_PESQUISA1;
  end;

end;

procedure Tfrmconfig.eprodutoExit(Sender: TObject);
begin
  if Trim(eproduto.Text) <> '' then begin
    qrproduto.Close;
    qrproduto.SQL.Clear;
    qrproduto.SQL.Add('select produto from c000025 where codigo = ' + QuotedStr(eproduto.Text));
    qrproduto.Open;
    if qrproduto.IsEmpty then begin
      Application.MessageBox('C�digo inv�lido', 'Aten��o!', MB_ICONINFORMATION);
      eproduto.SetFocus;
      qrproduto.Close;
      Exit;
    end;
    edDesProdTaxa.Text := qrproduto.FieldByName('produto').AsString;
    qrproduto.Close;
  end;
end;

procedure Tfrmconfig.eprodutoPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  {
  resultado_pesquisa1 := '';
  frmxloc_produto := tfrmxloc_produto.create(self);
  frmxloc_produto.showmodal;
  if resultado_pesquisa1 = '' then
    exit;
  if frmmodulo.qrconfig.State <> dsEdit then
    frmmodulo.qrconfig.Edit;
  frmmodulo.qrconfigPRODUTO_TAXA_ENTREGA.AsString := resultado_pesquisa1;
  qrproduto.Close;
  qrproduto.SQL.Clear;
  qrproduto.SQL.Add('select produto from c000025 where codigo = ' + QuotedStr(resultado_pesquisa1));
  qrproduto.Open;
  edDesProdTaxa.Text := qrproduto.FieldByName('produto').AsString;
  qrproduto.Close;}
end;

procedure Tfrmconfig.eproxy_tipoExit(Sender: TObject);
begin
  baplicarClick(frmconfig);
  bgravar.SetFocus;
end;

procedure Tfrmconfig.eCliente_EntradaButtonClick(Sender: TObject);
begin
  frmxloc_cliente := tfrmxloc_cliente.create(self);
  frmxloc_cliente.showmodal;
  if resultado_pesquisa1 <> '' then begin
    if (FRMMODULO.QRCONFIG.STATE = DSEDIT) or (FRMMODULO.QRCONFIG.StaTE = DSINSERT) then
      FRMMODULO.QRCONFIG.FIELDBYNAME('IND_CLIE_ENTRADA').ASSTRING := RESULTADO_PESQUISA1;
    FRMMODULO.QRCONFIG.FIELDBYNAME('IND_CLIE_ENTRADA_DESC').ASSTRING := RESULTADO_PESQUISA2;
  end;
end;

procedure Tfrmconfig.eCliente_SaidaButtonClick(Sender: TObject);
begin
  frmxloc_cliente := tfrmxloc_cliente.create(self);
  frmxloc_cliente.showmodal;
  if resultado_pesquisa1 <> '' then begin
    if (FRMMODULO.QRCONFIG.STATE = DSEDIT) or (FRMMODULO.QRCONFIG.StaTE = DSINSERT) then
      FRMMODULO.QRCONFIG.FIELDBYNAME('IND_CLIE_SAIDA').ASSTRING := RESULTADO_PESQUISA1;
    FRMMODULO.QRCONFIG.FIELDBYNAME('IND_CLIE_SAIDA_DESC').ASSTRING := RESULTADO_PESQUISA2;
  end;
end;

procedure Tfrmconfig.eCliente_PerdaButtonClick(Sender: TObject);
begin
  frmxloc_cliente := tfrmxloc_cliente.create(self);
  frmxloc_cliente.showmodal;
  if resultado_pesquisa1 <> '' then begin
    if (FRMMODULO.QRCONFIG.STATE = DSEDIT) or (FRMMODULO.QRCONFIG.StaTE = DSINSERT) then
      FRMMODULO.QRCONFIG.FIELDBYNAME('IND_CLIE_PERDA').ASSTRING := RESULTADO_PESQUISA1;
    FRMMODULO.QRCONFIG.FIELDBYNAME('IND_CLIE_PERDA_DESC').ASSTRING := RESULTADO_PESQUISA2;
  end;
end;

procedure Tfrmconfig.eCfop_EntradaButtonClick(Sender: TObject);
begin
  parametro_pesquisa := ' is not null ';
  frmXLOC_cfop := tfrmXLOC_cfop.create(self);
  frmXLOC_cfop.showmodal;
  if resultado_pesquisa1 <> '' then begin
    frmmodulo.qrCFOP.Open;
    frmmodulo.qrcfop.Locate('cfop', resultado_pesquisa1, [loCaseInsensitive]);
    if (FRMMODULO.QRCONFIG.STATE = DSEDIT) or (FRMMODULO.QRCONFIG.StaTE = DSINSERT) then
      FRMMODULO.QRCONFIG.FIELDBYNAME('IND_CFOP_ENTRADA').ASSTRING := RESULTADO_PESQUISA1;
    FRMMODULO.QRCONFIG.FIELDBYNAME('IND_CFOP_ENTRADA_DESC').ASSTRING := RESULTADO_PESQUISA2;
  end;
end;

procedure Tfrmconfig.eCfop_SaidaButtonClick(Sender: TObject);
begin
  parametro_pesquisa := ' is not null ';
  frmXLOC_cfop := tfrmXLOC_cfop.create(self);
  frmXLOC_cfop.showmodal;
  if resultado_pesquisa1 <> '' then begin
    frmmodulo.qrCFOP.Open;
    frmmodulo.qrcfop.Locate('cfop', resultado_pesquisa1, [loCaseInsensitive]);
    if (FRMMODULO.QRCONFIG.STATE = DSEDIT) or (FRMMODULO.QRCONFIG.StaTE = DSINSERT) then
      FRMMODULO.QRCONFIG.FIELDBYNAME('IND_CFOP_SAIDA').ASSTRING := RESULTADO_PESQUISA1;
    FRMMODULO.QRCONFIG.FIELDBYNAME('IND_CFOP_SAIDA_DESC').ASSTRING := RESULTADO_PESQUISA2;
  end;
end;

procedure Tfrmconfig.eCfop_PerdaButtonClick(Sender: TObject);
begin
  parametro_pesquisa := ' is not null ';
  frmXLOC_cfop := tfrmXLOC_cfop.create(self);
  frmXLOC_cfop.showmodal;
  if resultado_pesquisa1 <> '' then begin
    frmmodulo.qrCFOP.Open;
    frmmodulo.qrcfop.Locate('cfop', resultado_pesquisa1, [loCaseInsensitive]);
    if (FRMMODULO.QRCONFIG.STATE = DSEDIT) or (FRMMODULO.QRCONFIG.StaTE = DSINSERT) then
      FRMMODULO.QRCONFIG.FIELDBYNAME('IND_CFOP_PERDA').ASSTRING := RESULTADO_PESQUISA1;
    FRMMODULO.QRCONFIG.FIELDBYNAME('IND_CFOP_PERDA_DESC').ASSTRING := RESULTADO_PESQUISA2;
  end;
end;

procedure Tfrmconfig.eCliente_EntradaExit(Sender: TObject);
begin
//  if eCliente_Entrada.Text = '' then
//  begin
//    eCliente_EntradaButtonClick(Frmconfig);
//  end;
end;

procedure Tfrmconfig.eCliente_EntradaKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    perform(wm_nextdlgctl, 0, 0);
end;

procedure Tfrmconfig.eCfop_EntradaExit(Sender: TObject);
begin
//  if eCfop_Entrada.Text = '' then
//  begin
//    eCfop_EntradaButtonClick(Frmconfig);
//  end;
end;

procedure Tfrmconfig.eCliente_SaidaExit(Sender: TObject);
begin
//  if eCliente_Saida.Text = '' then
//  begin
//    eCliente_SaidaButtonClick(Frmconfig);
 // end;
end;

procedure Tfrmconfig.eCfop_SaidaExit(Sender: TObject);
begin
//  if eCfop_Saida.Text = '' then
//  begin
//    eCfop_SaidaButtonClick(Frmconfig);
//  end;
end;

procedure Tfrmconfig.eCliente_PerdaExit(Sender: TObject);
begin
 // if eCliente_Perda.Text = '' then
 // begin
 //   eCliente_PerdaButtonClick(Frmconfig);
 // end;
end;

procedure Tfrmconfig.eCfop_PerdaExit(Sender: TObject);
begin
//  if eCfop_Perda.Text = '' then
//  begin
//    eCfop_PerdaButtonClick(Frmconfig);
//  end;
end;

procedure Tfrmconfig.AdvGlowButton5Click(Sender: TObject);
begin
  parametro_pesquisa := '';
  frmxloc_cidade := tfrmxloc_cidade.create(self);
  frmxloc_cidade.showmodal;

  frmmodulo.qremitente.FieldByName('COD_MUNICIPIO_IBGE').AsString := resultado_pesquisa6;
  frmmodulo.qremitente.FieldByName('IBGE').AsString := resultado_pesquisa5;
  frmmodulo.qremitente.FieldByName('CIDADE').AsString := resultado_pesquisa2;
  frmmodulo.qremitente.FieldByName('UF').AsString := resultado_pesquisa3;
  DBEdit8.SetFocus;
end;

procedure Tfrmconfig.AdvMetroButton1Click(Sender: TObject);
begin
  close;
end;

procedure Tfrmconfig.bincluirClick(Sender: TObject);
begin
  if OpenPictureDialog1.Execute then begin
    dbimage1.Picture.LoadFromFile(OpenPictureDialog1.Filename);
  end;
end;

procedure Tfrmconfig.bexcluirClick(Sender: TObject);
begin
  FRMMODULO.Qrconfig.FIELDBYNAME('logo_comercio').Value := null;
end;

procedure Tfrmconfig.DBEdit8Exit(Sender: TObject);
begin
  tedit(Sender).Color := clwindow;
  if (frmmodulo.Qrconfig.state = dsinsert) or (frmmodulo.Qrconfig.State = dsedit) then begin
    if DBEdit8.Text = '' then
      AdvGlowButton5.OnClick(frmconfig);
  end;
end;

procedure Tfrmconfig.RzDBButtonEdit10ButtonClick(Sender: TObject);
begin
  parametro_pesquisa := ' is not null ';
  frmXLOC_cfop := tfrmXLOC_cfop.create(self);
  frmXLOC_cfop.showmodal;
  if resultado_pesquisa1 <> '' then begin
    frmmodulo.qrCFOP.Open;
    frmmodulo.qrcfop.Locate('cfop', resultado_pesquisa1, [loCaseInsensitive]);
    if (FRMMODULO.QRCONFIG.STATE = DSEDIT) or (FRMMODULO.QRCONFIG.StaTE = DSINSERT) then begin
      FRMMODULO.QRCONFIG.FIELDBYNAME('IND_CFOP_GARANTIA_DENTRO').ASSTRING := RESULTADO_PESQUISA1;
      FRMMODULO.QRCONFIG.FIELDBYNAME('IND_CFOP_GARANTIA_DENTRO_DESC').ASSTRING := RESULTADO_PESQUISA2;
    end;
  end;
end;

procedure Tfrmconfig.RzDBButtonEdit11ButtonClick(Sender: TObject);
begin
  parametro_pesquisa := ' is not null ';
  frmXLOC_cfop := tfrmXLOC_cfop.create(self);
  frmXLOC_cfop.showmodal;
  if resultado_pesquisa1 <> '' then begin
    frmmodulo.qrCFOP.Open;
    frmmodulo.qrcfop.Locate('cfop', resultado_pesquisa1, [loCaseInsensitive]);
    if (FRMMODULO.QRCONFIG.STATE = DSEDIT) or (FRMMODULO.QRCONFIG.StaTE = DSINSERT) then begin
      FRMMODULO.QRCONFIG.FIELDBYNAME('IND_CFOP_GARANTIA_FORA').ASSTRING := RESULTADO_PESQUISA1;
      FRMMODULO.QRCONFIG.FIELDBYNAME('IND_CFOP_GARANTIA_FORA_DESC').ASSTRING := RESULTADO_PESQUISA2;
    end;
  end;
end;

procedure Tfrmconfig.RzDBButtonEdit1ButtonClick(Sender: TObject);
begin
  parametro_pesquisa := ' is not null ';
  frmXLOC_cfop := tfrmXLOC_cfop.create(self);
  frmXLOC_cfop.showmodal;
  if resultado_pesquisa1 <> '' then begin
    frmmodulo.qrCFOP.Open;
    frmmodulo.qrcfop.Locate('cfop', resultado_pesquisa1, [loCaseInsensitive]);
    if (FRMMODULO.QRCONFIG.STATE = DSEDIT) or (FRMMODULO.QRCONFIG.StaTE = DSINSERT) then begin
      FRMMODULO.QRCONFIG.FIELDBYNAME('IND_CFOP_VENDA_DENTRO').ASSTRING := RESULTADO_PESQUISA1;
      FRMMODULO.QRCONFIG.FIELDBYNAME('CFOP_VENDA_DENTRO_DESC').ASSTRING := RESULTADO_PESQUISA2;
    end;
  end;
end;

procedure Tfrmconfig.RzDBButtonEdit2ButtonClick(Sender: TObject);
begin
  parametro_pesquisa := ' is not null ';
  frmXLOC_cfop := tfrmXLOC_cfop.create(self);
  frmXLOC_cfop.showmodal;
  if resultado_pesquisa1 <> '' then begin
    frmmodulo.qrCFOP.Open;
    frmmodulo.qrcfop.Locate('cfop', resultado_pesquisa1, [loCaseInsensitive]);
    if (FRMMODULO.QRCONFIG.STATE = DSEDIT) or (FRMMODULO.QRCONFIG.StaTE = DSINSERT) then begin
      FRMMODULO.QRCONFIG.FIELDBYNAME('IND_CFOP_VENDA_FORA').ASSTRING := RESULTADO_PESQUISA1;
      FRMMODULO.QRCONFIG.FIELDBYNAME('CFOP_VENDA_FORA_DESC').ASSTRING := RESULTADO_PESQUISA2;
    end;
  end;
end;

procedure Tfrmconfig.RzDBButtonEdit3ButtonClick(Sender: TObject);
begin
  parametro_pesquisa := ' is not null ';
  frmXLOC_cfop := tfrmXLOC_cfop.create(self);
  frmXLOC_cfop.showmodal;
  if resultado_pesquisa1 <> '' then begin
    frmmodulo.qrCFOP.Open;
    frmmodulo.qrcfop.Locate('cfop', resultado_pesquisa1, [loCaseInsensitive]);
    if (FRMMODULO.QRCONFIG.STATE = DSEDIT) or (FRMMODULO.QRCONFIG.StaTE = DSINSERT) then begin
      FRMMODULO.QRCONFIG.FIELDBYNAME('IND_CFOP_DEVOLUCAO_DENTRO').ASSTRING := RESULTADO_PESQUISA1;
      FRMMODULO.QRCONFIG.FIELDBYNAME('CFOP_DEVOLUCAO_DENTRO_DESC').ASSTRING := RESULTADO_PESQUISA2;
    end;
  end;
end;

procedure Tfrmconfig.RzDBButtonEdit4ButtonClick(Sender: TObject);
begin
  parametro_pesquisa := ' is not null ';
  frmXLOC_cfop := tfrmXLOC_cfop.create(self);
  frmXLOC_cfop.showmodal;
  if resultado_pesquisa1 <> '' then begin
    frmmodulo.qrCFOP.Open;
    frmmodulo.qrcfop.Locate('cfop', resultado_pesquisa1, [loCaseInsensitive]);
    if (FRMMODULO.QRCONFIG.STATE = DSEDIT) or (FRMMODULO.QRCONFIG.StaTE = DSINSERT) then begin
      FRMMODULO.QRCONFIG.FIELDBYNAME('IND_CFOP_DEVOLUCAO_FORA').ASSTRING := RESULTADO_PESQUISA1;
      FRMMODULO.QRCONFIG.FIELDBYNAME('CFOP_DEVOLUCAO_FORA_DESC').ASSTRING := RESULTADO_PESQUISA2;
    end;
  end;
end;

procedure Tfrmconfig.RzDBButtonEdit5ButtonClick(Sender: TObject);
begin
  parametro_pesquisa := ' is not null ';
  frmXLOC_cfop := tfrmXLOC_cfop.create(self);
  frmXLOC_cfop.showmodal;
  if resultado_pesquisa1 <> '' then begin
    frmmodulo.qrCFOP.Open;
    frmmodulo.qrcfop.Locate('cfop', resultado_pesquisa1, [loCaseInsensitive]);
    if (FRMMODULO.QRCONFIG.STATE = DSEDIT) or (FRMMODULO.QRCONFIG.StaTE = DSINSERT) then begin
      FRMMODULO.QRCONFIG.FIELDBYNAME('IND_CFOP_SERVICO_DENTRO').ASSTRING := RESULTADO_PESQUISA1;
      FRMMODULO.QRCONFIG.FIELDBYNAME('CFOP_SERVICO_DENTRO_DESC').ASSTRING := RESULTADO_PESQUISA2;
    end;
  end;
end;

procedure Tfrmconfig.RzDBButtonEdit6ButtonClick(Sender: TObject);
begin
  parametro_pesquisa := ' is not null ';
  frmXLOC_cfop := tfrmXLOC_cfop.create(self);
  frmXLOC_cfop.showmodal;
  if resultado_pesquisa1 <> '' then begin
    frmmodulo.qrCFOP.Open;
    frmmodulo.qrcfop.Locate('cfop', resultado_pesquisa1, [loCaseInsensitive]);
    if (FRMMODULO.QRCONFIG.STATE = DSEDIT) or (FRMMODULO.QRCONFIG.StaTE = DSINSERT) then begin
      FRMMODULO.QRCONFIG.FIELDBYNAME('IND_CFOP_SERVICO_FORA').ASSTRING := RESULTADO_PESQUISA1;
      FRMMODULO.QRCONFIG.FIELDBYNAME('CFOP_SERVICO_FORA_DESC').ASSTRING := RESULTADO_PESQUISA2;
    end;
  end;
end;

procedure Tfrmconfig.RzDBButtonEdit7ButtonClick(Sender: TObject);
begin
  if OpenPictureDialog1.Execute then begin
    frmmodulo.qrconfigV_IMAGEM_FUNDO.AsString := OpenPictureDialog1.FileName;
  end;
end;

procedure Tfrmconfig.RzDBButtonEdit8ButtonClick(Sender: TObject);
begin
  parametro_pesquisa := ' is not null ';
  frmXLOC_cfop := tfrmXLOC_cfop.create(self);
  frmXLOC_cfop.showmodal;
  if resultado_pesquisa1 <> '' then begin
    frmmodulo.qrCFOP.Open;
    frmmodulo.qrcfop.Locate('cfop', resultado_pesquisa1, [loCaseInsensitive]);
    if (FRMMODULO.QRCONFIG.STATE = DSEDIT) or (FRMMODULO.QRCONFIG.StaTE = DSINSERT) then begin
      FRMMODULO.QRCONFIG.FIELDBYNAME('IND_CFOP_DEV_COMPRA_DENTRO').ASSTRING := RESULTADO_PESQUISA1;
      FRMMODULO.QRCONFIG.FIELDBYNAME('IND_CFOP_DEV_COMPRA_DENTRO_DESC').ASSTRING := RESULTADO_PESQUISA2;
    end;
  end;
end;

procedure Tfrmconfig.RzDBButtonEdit9ButtonClick(Sender: TObject);
begin
  parametro_pesquisa := ' is not null ';
  frmXLOC_cfop := tfrmXLOC_cfop.create(self);
  frmXLOC_cfop.showmodal;
  if resultado_pesquisa1 <> '' then begin
    frmmodulo.qrCFOP.Open;
    frmmodulo.qrcfop.Locate('cfop', resultado_pesquisa1, [loCaseInsensitive]);
    if (FRMMODULO.QRCONFIG.STATE = DSEDIT) or (FRMMODULO.QRCONFIG.StaTE = DSINSERT) then begin
      FRMMODULO.QRCONFIG.FIELDBYNAME('IND_CFOP_DEV_COMPRA_FORA').ASSTRING := RESULTADO_PESQUISA1;
      FRMMODULO.QRCONFIG.FIELDBYNAME('IND_CFOP_DEV_COMPRA_FORA_DESC').ASSTRING := RESULTADO_PESQUISA2;
    end;
  end;
end;

procedure Tfrmconfig.sbtnCaminhoCertClick(Sender: TObject);
begin
  OpenDialog1.Title := 'Selecione o Certificado';
  OpenDialog1.DefaultExt := '*.pfx';
  OpenDialog1.Filter := 'Arquivos PFX (*.pfx)|*.pfx|Todos os Arquivos (*.*)|*.*';
  OpenDialog1.InitialDir := ExtractFileDir(Application.ExeName);
  if OpenDialog1.Execute then begin
    edtCaminho.Text := OpenDialog1.FileName;
  end;
end;

procedure Tfrmconfig.sbtnGetCertClick(Sender: TObject);
begin
  edtNumSerie.Text := ACBrNFe1.SSL.SelecionarCertificado;
end;

procedure Tfrmconfig.sbtnLogoMarcaClick(Sender: TObject);
begin
  if OpenPictureDialog2.Execute then
    frmmodulo.qrDFeConfigLOGO_MARCA.AsString := OpenPictureDialog2.FileName;
end;

procedure Tfrmconfig.SpeedButton10Click(Sender: TObject);
begin
  PathClick(DBEdit113);
end;

procedure Tfrmconfig.SpeedButton11Click(Sender: TObject);
begin
  PathClick(DBEdit114);
end;

procedure Tfrmconfig.SpeedButton12Click(Sender: TObject);
begin
  PathClick(DBEdit115);
end;

procedure Tfrmconfig.SpeedButton13Click(Sender: TObject);
begin
  PathClick(DBEdit116);
end;

procedure Tfrmconfig.SpeedButton14Click(Sender: TObject);
begin
  PathClick(DBEdit117);
end;

procedure Tfrmconfig.SpeedButton15Click(Sender: TObject);
begin
  PathClick(DBEdit118);
end;

procedure Tfrmconfig.SpeedButton16Click(Sender: TObject);
begin
  PathClick(DBEdit105);
end;

procedure Tfrmconfig.SpeedButton17Click(Sender: TObject);
begin
  PathClick(DBEdit79);
end;

procedure Tfrmconfig.SpeedButton18Click(Sender: TObject);
begin
  PathClick(DBEdit82);
end;

procedure Tfrmconfig.SpeedButton19Click(Sender: TObject);
begin
  PathClick(DBEdit83);
end;

procedure Tfrmconfig.SpeedButton1Click(Sender: TObject);
begin
  PathClick(DBEdit80);
end;

procedure Tfrmconfig.SpeedButton20Click(Sender: TObject);
begin
  PathClick(DBEdit84);
end;

procedure Tfrmconfig.SpeedButton21Click(Sender: TObject);
begin
  PathClick(DBEdit85);
end;

procedure Tfrmconfig.SpeedButton22Click(Sender: TObject);
begin
  PathClick(DBEdit86);
end;

procedure Tfrmconfig.SpeedButton23Click(Sender: TObject);
begin
  PathClick(DBEdit87);
end;

procedure Tfrmconfig.SpeedButton24Click(Sender: TObject);
begin
  PathClick(DBEdit88);
end;

procedure Tfrmconfig.SpeedButton25Click(Sender: TObject);
begin
  PathClick(DBEdit81);
end;

procedure Tfrmconfig.SpeedButton26Click(Sender: TObject);
begin
  PathClick(DBEdit119);
end;

procedure Tfrmconfig.SpeedButton27Click(Sender: TObject);
begin
  PathClick(DBEdit125);
end;

procedure Tfrmconfig.SpeedButton28Click(Sender: TObject);
begin
  PathClick(DBEdit126);
end;

procedure Tfrmconfig.SpeedButton2Click(Sender: TObject);
begin
  PathClick(DBEdit91);
end;

procedure Tfrmconfig.SpeedButton30Click(Sender: TObject);
begin
  PathClick(DBEdit128);
end;

procedure Tfrmconfig.SpeedButton31Click(Sender: TObject);
begin
  if FileRel.Execute then
    frmmodulo.qrDFeConfigMDFE_DANFE_PADRAO.AsString := FileRel.FileName;
end;

procedure Tfrmconfig.SpeedButton32Click(Sender: TObject);
begin
  PathClick(DBEdit106);
end;

procedure Tfrmconfig.SpeedButton33Click(Sender: TObject);
begin
  if FileRel.Execute then
    frmmodulo.qrDFeConfigMDFE_DANFE_EVENTO.AsString := FileRel.FileName;
end;

procedure Tfrmconfig.SpeedButton34Click(Sender: TObject);
begin
  if FileRel.Execute then
    frmmodulo.qrDFeConfigMDFE_DANFE_EMAIL.AsString := FileRel.FileName;
end;

procedure Tfrmconfig.SpeedButton3Click(Sender: TObject);
begin
  PathClick(DBEdit96);
end;

procedure Tfrmconfig.SpeedButton4Click(Sender: TObject);
begin
  if FileRel.Execute then
    frmmodulo.qrDFeConfigCTE_DANFE_PADRAO.AsString := FileRel.FileName;
end;

procedure Tfrmconfig.SpeedButton5Click(Sender: TObject);
begin
  if FileRel.Execute then
    frmmodulo.qrDFeConfigCTE_DANFE_EVENTOS.AsString := FileRel.FileName;
end;

procedure Tfrmconfig.SpeedButton6Click(Sender: TObject);
begin
  if FileRel.Execute then
    frmmodulo.qrDFeConfigCTE_DANFE_EMAIL.AsString := FileRel.FileName;
end;

procedure Tfrmconfig.SpeedButton7Click(Sender: TObject);
begin
  PathClick(DBEdit103);
end;

procedure Tfrmconfig.SpeedButton8Click(Sender: TObject);
begin
  PathClick(DBEdit104);
end;

procedure Tfrmconfig.SpeedButton9Click(Sender: TObject);
begin
  PathClick(DBEdit112);
end;

procedure Tfrmconfig.PageView2Change(Sender: TObject);
begin
  if PageView2.ActivePageIndex = 2 then

end;

procedure Tfrmconfig.PathClick(Sender: TObject);
var
  Dir: string;
begin
  if Length(TEdit(Sender).Text) <= 0 then
    Dir := ExtractFileDir(application.ExeName)
  else
    Dir := TEdit(Sender).Text;

  if SelectDirectory(Dir, [sdAllowCreate, sdPerformCreate, sdPrompt], SELDIRHELP) then
    TEdit(Sender).Text := Dir;
end;

end.

