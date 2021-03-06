object FPrincipal: TFPrincipal
  Left = 317
  Top = 94
  BorderStyle = bsNone
  Caption = '8.0'
  ClientHeight = 656
  ClientWidth = 1016
  Color = 15387522
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PopupMenu = PopupMenu1
  Position = poDesktopCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object PageSPED: TPageControl
    Left = 117
    Top = 79
    Width = 899
    Height = 561
    ActivePage = TabSped
    TabOrder = 0
    object TabSped: TTabSheet
      Caption = '&1 - Gerar SPED'
      object Panel2: TPanel
        Left = 0
        Top = 493
        Width = 891
        Height = 40
        Align = alBottom
        BevelOuter = bvNone
        Color = 15254641
        ParentBackground = False
        TabOrder = 0
        object LbMensagem: TLabel
          Left = 0
          Top = 0
          Width = 891
          Height = 13
          Align = alTop
          Caption = '...'
          Color = clGray
          ParentColor = False
          ExplicitWidth = 12
        end
        object Progresso: TGauge
          Left = 0
          Top = 13
          Width = 891
          Height = 27
          Align = alClient
          BorderStyle = bsNone
          ForeColor = 946929
          Progress = 0
          ExplicitTop = 24
          ExplicitWidth = 977
          ExplicitHeight = 16
        end
      end
      object PgSeleciona: TPageControl
        Left = 0
        Top = -22
        Width = 891
        Height = 493
        ActivePage = TabSheet6
        TabOrder = 1
        object TabSheet6: TTabSheet
          Caption = 'SPED EFD'
          object pnSped: TPanel
            Left = 0
            Top = 0
            Width = 883
            Height = 465
            Align = alClient
            Color = 14592562
            ParentBackground = False
            TabOrder = 0
            object MemoSped: TRichEdit
              Left = 1
              Top = 71
              Width = 430
              Height = 393
              Align = alLeft
              BevelInner = bvNone
              BevelOuter = bvNone
              Color = 13553616
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              ScrollBars = ssVertical
              TabOrder = 0
              Zoom = 100
            end
            object Panel3: TPanel
              Left = 1
              Top = 1
              Width = 881
              Height = 70
              Align = alTop
              BevelOuter = bvNone
              Caption = 'Panel3'
              Color = clWhite
              ParentBackground = False
              ShowCaption = False
              TabOrder = 1
              object SpeedButton1: TSpeedButton
                Left = 333
                Top = 35
                Width = 97
                Height = 22
                Caption = 'Limpar'
                Flat = True
                OnClick = SpeedButton1Click
              end
              object GroupBox2: TGroupBox
                Left = 3
                Top = 3
                Width = 321
                Height = 50
                Caption = ' Per'#237'odo da apura'#231#227'o '
                TabOrder = 0
                object Label3: TLabel
                  Left = 8
                  Top = 24
                  Width = 13
                  Height = 13
                  Caption = 'De'
                end
                object Label4: TLabel
                  Left = 156
                  Top = 24
                  Width = 6
                  Height = 13
                  Caption = #224
                end
                object Datai: TDateTimePicker
                  Left = 32
                  Top = 20
                  Width = 120
                  Height = 24
                  Date = 41135.615467442120000000
                  Time = 41135.615467442120000000
                  Color = 8454143
                  TabOrder = 0
                end
                object Dataf: TDateTimePicker
                  Left = 169
                  Top = 20
                  Width = 120
                  Height = 24
                  Date = 41135.615481307870000000
                  Time = 41135.615481307870000000
                  Color = 8454143
                  TabOrder = 1
                end
              end
              object CheckInventario: TCheckBox
                Left = 331
                Top = 12
                Width = 137
                Height = 17
                Caption = 'Gerar Invent'#225'rio'
                TabOrder = 1
              end
            end
            object MemoLog: TRichEdit
              Left = 431
              Top = 71
              Width = 451
              Height = 393
              Align = alClient
              BevelInner = bvNone
              BevelOuter = bvNone
              Color = 8454143
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              ScrollBars = ssBoth
              TabOrder = 2
              Zoom = 100
            end
          end
        end
        object TabRegistrosECF: TTabSheet
          Caption = 'Movimentos ECF'
          ImageIndex = 2
          ExplicitLeft = 0
          ExplicitTop = 0
          ExplicitWidth = 0
          ExplicitHeight = 0
          object Panel1: TPanel
            Left = 0
            Top = 0
            Width = 883
            Height = 465
            Align = alClient
            Caption = 'Panel1'
            Color = clWhite
            ParentBackground = False
            ShowCaption = False
            TabOrder = 0
            object GroupBox13: TGroupBox
              AlignWithMargins = True
              Left = 12
              Top = 9
              Width = 878
              Height = 466
              Align = alCustom
              Caption = 
                'EFD Registros ECF - Importa'#231#227'o dos movimentos de sa'#237'das dos cupo' +
                'ns fiscais'
              Color = clWhite
              ParentBackground = False
              ParentColor = False
              TabOrder = 0
              object ListaEFDECF: TCheckListBox
                Left = 2
                Top = 15
                Width = 874
                Height = 359
                Align = alClient
                ItemHeight = 13
                TabOrder = 0
              end
              object pnArquivoECF: TPanel
                Left = 2
                Top = 374
                Width = 874
                Height = 41
                Align = alBottom
                BevelOuter = bvNone
                Caption = 'pnArquivoECF'
                ShowCaption = False
                TabOrder = 1
                object btAdicionarECF: TSpeedButton
                  Left = 4
                  Top = 7
                  Width = 83
                  Height = 31
                  Caption = '+ FDicionar'
                  OnClick = btAdicionarECFClick
                end
                object btRemoverECF: TSpeedButton
                  Left = 93
                  Top = 7
                  Width = 82
                  Height = 31
                  Caption = '- Remover'
                  OnClick = btRemoverECFClick
                end
                object btImportarECF: TSpeedButton
                  Left = 181
                  Top = 8
                  Width = 132
                  Height = 31
                  Caption = 'Importar do PDV'
                  OnClick = btImportarECFClick
                end
              end
              object pnTampa: TPanel
                Left = 2
                Top = 15
                Width = 874
                Height = 359
                Align = alClient
                BevelOuter = bvNone
                Caption = 'pnTampa'
                Color = 14592562
                ParentBackground = False
                ShowCaption = False
                TabOrder = 2
                Visible = False
                object MemoImportaECF: TMemo
                  Left = 0
                  Top = 41
                  Width = 874
                  Height = 318
                  Align = alClient
                  BorderStyle = bsNone
                  Color = 8454143
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWhite
                  Font.Height = -13
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ParentFont = False
                  ReadOnly = True
                  ScrollBars = ssVertical
                  TabOrder = 0
                end
                object pnStatusImporta: TPanel
                  Left = 0
                  Top = 0
                  Width = 874
                  Height = 41
                  Align = alTop
                  BevelOuter = bvNone
                  Caption = 'Importar movimentos PDV'
                  Color = 4934475
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWhite
                  Font.Height = -16
                  Font.Name = 'Segoe UI'
                  Font.Style = [fsBold]
                  ParentBackground = False
                  ParentFont = False
                  TabOrder = 1
                end
              end
              object GroupBox4: TGroupBox
                Left = 2
                Top = 415
                Width = 874
                Height = 49
                Align = alBottom
                Caption = 'Par'#226'metros'
                Color = 4934475
                ParentBackground = False
                ParentColor = False
                TabOrder = 3
                object CheckCSTECF: TCheckBox
                  Left = 7
                  Top = 20
                  Width = 154
                  Height = 17
                  Caption = 'Mudar CST ECF - 030 para :'
                  TabOrder = 0
                  OnClick = CheckCSTECFClick
                end
                object EditCSTECF: TEdit
                  Left = 163
                  Top = 18
                  Width = 54
                  Height = 21
                  Enabled = False
                  TabOrder = 1
                  Text = '060'
                end
              end
              object MemoEFD: TMemo
                Left = 95
                Top = 279
                Width = 724
                Height = 89
                ScrollBars = ssBoth
                TabOrder = 4
                Visible = False
              end
            end
          end
        end
      end
    end
    object TabECF: TTabSheet
      Caption = '&2 - Especificar Blocos'
      ImageIndex = 1
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object pnECF: TPanel
        Left = 0
        Top = 0
        Width = 891
        Height = 533
        Align = alClient
        Caption = 'pnECF'
        Color = 13553616
        ParentBackground = False
        ShowCaption = False
        TabOrder = 0
        object Check_Bloco1600: TCheckBox
          Left = 8
          Top = 20
          Width = 289
          Height = 17
          Caption = 'Gerar Bloco 1600 - Vendas com cart'#245'es D'#233'bito/Cr'#233'dito'
          TabOrder = 0
        end
      end
    end
    object TabConfiguracoes: TTabSheet
      Caption = '&3 - Configuracoes'
      ImageIndex = 2
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object GroupBox6: TGroupBox
        Left = 0
        Top = 0
        Width = 891
        Height = 533
        Align = alClient
        Color = clWhite
        ParentBackground = False
        ParentColor = False
        TabOrder = 0
        object Label5: TLabel
          Left = 8
          Top = 12
          Width = 55
          Height = 13
          Caption = 'Vers'#227'o EFD'
          Color = clBtnFace
          ParentColor = False
        end
        object Label1: TLabel
          Left = 8
          Top = 295
          Width = 143
          Height = 13
          Caption = 'Nome ou IP dos terminais PDV'
          Color = clBtnFace
          ParentColor = False
        end
        object ComboVersao: TComboBox
          Left = 69
          Top = 9
          Width = 100
          Height = 21
          TabOrder = 0
          Text = 'vlVersao109'
          Items.Strings = (
            'vlVersao100'
            'vlVersao101'
            'vlVersao102'
            'vlVersao103'
            'vlVersao104'
            'vlVersao105'
            'vlVersao106'
            'vlVersao107'
            'vlVersao108')
        end
        object RadioPerfil: TRadioGroup
          Left = 8
          Top = 31
          Width = 457
          Height = 39
          Caption = ' Perfil Apresenta'
          Columns = 3
          ItemIndex = 0
          Items.Strings = (
            'A - Perfil A'
            'B - Perfil B'
            'C - Perfil C')
          TabOrder = 1
        end
        object RadioFinalidade: TRadioGroup
          Left = 8
          Top = 76
          Width = 457
          Height = 56
          Caption = ' C'#243'digo da finalidade do arquivo '
          ItemIndex = 0
          Items.Strings = (
            '0 - Remessa do arquivo original;'
            '1 - Remessa do arquivo substituto.')
          TabOrder = 2
        end
        object RadioIndicador: TRadioGroup
          Left = 8
          Top = 136
          Width = 457
          Height = 56
          Caption = ' Indicador de Atividade '
          ItemIndex = 1
          Items.Strings = (
            '0 - Industrial ou equiparado a industria'
            '1 - Outros')
          TabOrder = 3
        end
        object MemoPDV: TMemo
          Left = 8
          Top = 309
          Width = 457
          Height = 89
          ParentShowHint = False
          ShowHint = False
          TabOrder = 4
        end
        object RadioDataInfo: TRadioGroup
          Left = 8
          Top = 198
          Width = 457
          Height = 56
          Caption = ' Per'#237'odo apura'#231#227'o Entradas'
          ItemIndex = 0
          Items.Strings = (
            '0 - Por Data Emiss'#227'o/Sa'#237'da'
            '1 - Por Data Lan'#231'amento')
          TabOrder = 5
        end
      end
    end
  end
  object pnTitulo: TPanel
    Left = 0
    Top = 59
    Width = 1016
    Height = 42
    Align = alTop
    BevelOuter = bvNone
    Color = 4934475
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -21
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentBackground = False
    ParentFont = False
    TabOrder = 1
    OnClick = pnTituloClick
    object lbEmpresa: TLabel
      Left = 94
      Top = 6
      Width = 18
      Height = 23
      Caption = '...'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clYellow
      Font.Height = -19
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 12
      Top = 7
      Width = 80
      Height = 23
      Caption = 'Empresa:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -19
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
  end
  object pnBotoes: TPanel
    Left = 0
    Top = 639
    Width = 1016
    Height = 17
    Align = alBottom
    BevelOuter = bvNone
    Caption = 'Sped Fiscal - Delphos Automa'#231#227'o'
    Color = 4934475
    ParentBackground = False
    ShowCaption = False
    TabOrder = 2
    OnClick = pnBotoesClick
    object btGerarSped: TButton
      Left = -138
      Top = 0
      Width = 123
      Height = 42
      Caption = 'F2 | Gerar EFD'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      Visible = False
      OnClick = btGerarSpedClick
    end
  end
  object AdvSmoothExpanderPanel1: TAdvSmoothExpanderPanel
    Left = 0
    Top = 0
    Width = 1016
    Height = 59
    Cursor = crDefault
    Caption.HTMLFont.Charset = DEFAULT_CHARSET
    Caption.HTMLFont.Color = clWindowText
    Caption.HTMLFont.Height = -11
    Caption.HTMLFont.Name = 'Tahoma'
    Caption.HTMLFont.Style = []
    Caption.Font.Charset = DEFAULT_CHARSET
    Caption.Font.Color = clWindowText
    Caption.Font.Height = -16
    Caption.Font.Name = 'Tahoma'
    Caption.Font.Style = []
    Caption.Line = False
    Fill.Color = 3355443
    Fill.ColorTo = clNone
    Fill.ColorMirror = clNone
    Fill.ColorMirrorTo = clNone
    Fill.GradientType = gtSolid
    Fill.GradientMirrorType = gtSolid
    Fill.BorderColor = clNone
    Fill.BorderWidth = 0
    Fill.Rounding = 0
    Fill.ShadowColor = clNone
    Fill.ShadowOffset = 10
    Fill.Glow = gmNone
    Version = '1.1.1.0'
    Align = alTop
    TabOrder = 3
    ShowExpander = False
    ExpanderColor = 16445929
    ExpanderDownColor = 15587527
    ExpanderHoverColor = 11196927
    TMSStyle = 0
    OldHeight = 59.000000000000000000
    object Label31: TLabel
      Left = 58
      Top = 13
      Width = 572
      Height = 32
      Caption = 'TALOS 1.0.0.0 - SPED FISCAL'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -27
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object AdvMetroButton1: TAdvMetroButton
      Left = 1276
      Top = 6
      Width = 51
      Height = 49
      Appearance.PictureColor = clWhite
      Caption = ''
      Picture.Data = {
        89504E470D0A1A0A0000000D494844520000002A0000002A0806000000C5C3C9
        5B0000001974455874536F6674776172650041646F626520496D616765526561
        647971C9653C0000032269545874584D4C3A636F6D2E61646F62652E786D7000
        000000003C3F787061636B657420626567696E3D22EFBBBF222069643D225735
        4D304D7043656869487A7265537A4E54637A6B633964223F3E203C783A786D70
        6D65746120786D6C6E733A783D2261646F62653A6E733A6D6574612F2220783A
        786D70746B3D2241646F626520584D5020436F726520352E332D633031312036
        362E3134353636312C20323031322F30322F30362D31343A35363A3237202020
        2020202020223E203C7264663A52444620786D6C6E733A7264663D2268747470
        3A2F2F7777772E77332E6F72672F313939392F30322F32322D7264662D73796E
        7461782D6E7323223E203C7264663A4465736372697074696F6E207264663A61
        626F75743D222220786D6C6E733A786D703D22687474703A2F2F6E732E61646F
        62652E636F6D2F7861702F312E302F2220786D6C6E733A786D704D4D3D226874
        74703A2F2F6E732E61646F62652E636F6D2F7861702F312E302F6D6D2F222078
        6D6C6E733A73745265663D22687474703A2F2F6E732E61646F62652E636F6D2F
        7861702F312E302F73547970652F5265736F75726365526566232220786D703A
        43726561746F72546F6F6C3D2241646F62652050686F746F73686F7020435336
        202857696E646F7773292220786D704D4D3A496E7374616E636549443D22786D
        702E6969643A3442393632423335303444363131453542384232453930303337
        4433314142462220786D704D4D3A446F63756D656E7449443D22786D702E6469
        643A344239363242333630344436313145354238423245393030333744333141
        4246223E203C786D704D4D3A4465726976656446726F6D2073745265663A696E
        7374616E636549443D22786D702E6969643A3442393632423333303444363131
        453542384232453930303337443331414246222073745265663A646F63756D65
        6E7449443D22786D702E6469643A344239363242333430344436313145354238
        4232453930303337443331414246222F3E203C2F7264663A4465736372697074
        696F6E3E203C2F7264663A5244463E203C2F783A786D706D6574613E203C3F78
        7061636B657420656E643D2272223F3E1CA64786000004204944415478DAD499
        5B4855411486CF454D2D33CB2CB58B1456926668450951541241514451102205
        51D47B6FD5432F4105054190453D443DD84B5958748102C3C428EB7445BB9768
        57B3D4BC9CDDBFE0DF364D9C73F6F6EC7DCA051F7BD8CE9EF95D33CCACB58ED7
        300CCF60B0B828BF4F0139603A9806B2C1089004BAC017D00C1E8127E0396807
        46AC844E02A560252802632C7CF311DC03E7C125D004825627F4DA5C7AF1DE3A
        B0114C55DE778056D0463A4122BD3B1C6480A14AFF17E024380D1A9D16BA0AEC
        00F394770DA006D481A75CE61FA01BC4736B88C829A018CCE7D3B43B601FA88C
        E85D111A8124B01B7C357E5B2DD80AA659F85E6532D8046E28637D077B416AB8
        6F230D9C022A401F0715B1BB408E4D813AE3C00ED0AA083E0332062234191C51
        060A80A5C01FA54813D9760BC11D4D6C9A5DA17B144FD681028704EAE482EB9C
        2708F6F39FB024748DB2271FB82852DDBB759CAF03945B113A09D42B7B7291CB
        224DE68266659BE58513EA033BD9B98F1BDE1B23A1C236D0C3F9650BC485123A
        05BC60C79B203D86223D3CA22E727E39110ACDBFF9942355DACB79FBFC0415BC
        F6626972AB1D07DFC168B01AF84D71A60DE7DD2D76175C765080D746DF6BA096
        ED15205D172A77F71CB62FF3EE76CA0C1B62DB18B4C83705205F175AC4404296
        FBB64B4B6B556C3DE30689EE66EB4267F0F99E0186D366274C93F9DFB0FD9747
        27F0F90EB4B8E451AB6265555FA9BA54A166F0DBC250ED5F5A2FB3837E5D6A84
        6F06B6DD9146E9FBD97D058F25518AD9E21F927034CCDFDBF94CD53DEA1DC05E
        72D30C55974F4B273C8CCCFF071BC6E7377DE95B943D91AC08FFCBB064A52E8B
        1407A6B1DDAA7BD43C0EB2797D397DE3D8E92FB7D144B65FEB42037C66825C17
        26F7DAE82BF38F63FBA12E54EEF71E2EFD2C9B57A3D7C252FA6CE4F1721B65C9
        01C34CF50FA18F7975892D03232D0E1AE45EF74510D96771BC641E7D7E56571A
        74A19F4115DB927B2FB6B1FC3D61BC15E4016ED5168012B62FF407475AE09AAF
        A403D591726D17180A2A39FF27501C2AC2F7B318603025D81663A165A08BF31F
        0E978A78985405D859BC3B27462225D37DC9791BC14C2BE9B2A4AB9DFCE89603
        95914864822B4A6EBF5D4F2A437D28D9E8417E2476D545B1D9E09C522D390612
        ED544A46B1C4625A0D28715864915225319881660DA4482645ABB3CA406FB92C
        19510A14276C064DCAD872CA8C1F6835CF1CF490B267CD41D783B136058E066B
        419532969C2E474379D2C46A215742BF0D2CE4E62901B6A4B53778A33D630AD1
        CE033E8EA1DA4866B8C53CCCE7B2C6EF61B5F900ABCF5D4E96C6E5478532500E
        C66AB79A84891FC027DE54F114398A7DD3B5FEA7C009D6F51DAFE19BDECD6355
        4598A978289C49F5E53EA8E60F0E01BEF3B825B43F7E66702BCB5A48F159F45C
        02BDFA9959ED6306174FF9AED7EE64DEC1F283D82F0106008690EEE7FB647FE2
        0000000049454E44AE426082}
      TabOrder = 0
      Version = '1.1.2.0'
    end
    object AdvMetroButton2: TAdvMetroButton
      Left = 1332
      Top = 6
      Width = 51
      Height = 49
      Appearance.PictureColor = clWhite
      Caption = ''
      Picture.Data = {
        89504E470D0A1A0A0000000D494844520000002A0000002A0806000000C5C3C9
        5B0000001974455874536F6674776172650041646F626520496D616765526561
        647971C9653C0000032269545874584D4C3A636F6D2E61646F62652E786D7000
        000000003C3F787061636B657420626567696E3D22EFBBBF222069643D225735
        4D304D7043656869487A7265537A4E54637A6B633964223F3E203C783A786D70
        6D65746120786D6C6E733A783D2261646F62653A6E733A6D6574612F2220783A
        786D70746B3D2241646F626520584D5020436F726520352E332D633031312036
        362E3134353636312C20323031322F30322F30362D31343A35363A3237202020
        2020202020223E203C7264663A52444620786D6C6E733A7264663D2268747470
        3A2F2F7777772E77332E6F72672F313939392F30322F32322D7264662D73796E
        7461782D6E7323223E203C7264663A4465736372697074696F6E207264663A61
        626F75743D222220786D6C6E733A786D703D22687474703A2F2F6E732E61646F
        62652E636F6D2F7861702F312E302F2220786D6C6E733A786D704D4D3D226874
        74703A2F2F6E732E61646F62652E636F6D2F7861702F312E302F6D6D2F222078
        6D6C6E733A73745265663D22687474703A2F2F6E732E61646F62652E636F6D2F
        7861702F312E302F73547970652F5265736F75726365526566232220786D703A
        43726561746F72546F6F6C3D2241646F62652050686F746F73686F7020435336
        202857696E646F7773292220786D704D4D3A496E7374616E636549443D22786D
        702E6969643A3445414132443945303444303131453538344545414445343436
        3535353531312220786D704D4D3A446F63756D656E7449443D22786D702E6469
        643A344541413244394630344430313145353834454541444534343635353535
        3131223E203C786D704D4D3A4465726976656446726F6D2073745265663A696E
        7374616E636549443D22786D702E6969643A3445414132443943303444303131
        453538344545414445343436353535353131222073745265663A646F63756D65
        6E7449443D22786D702E6469643A344541413244394430344430313145353834
        4545414445343436353535353131222F3E203C2F7264663A4465736372697074
        696F6E3E203C2F7264663A5244463E203C2F783A786D706D6574613E203C3F78
        7061636B657420656E643D2272223F3E4B533802000004B14944415478DAD499
        7968554714C65F1215778D2651A352637109C605036EE082A2455C6A5D506825
        54105C402B05A960ABE03F820A2AA2E082FE218A2888FB52975A49085151DBB8
        15375C316AAAC625C6C4EB77E01B3D0EBEF7665EDE7BE0811FF7BE3B73CF7C77
        EEDC9973E6A5044110FA1AAC4E2DEF6F023A806EA02B680B9A8306A012FC0F1E
        82CBE02AB8092A40902CA11DC170F03DE80D5A39DCF3045C007BC1617003BC77
        6D30C5F3D54BEF4D063F832EEAFA6B50069E9337A03E7BB729C8028D54FD5B60
        0BD806AEC75BE838301FF457D72E82425002AEF135BF0255A02E878688EC0CF2
        C1401E8D9D03CBC0CEA8BD2B42A3D0002C02CF824F560C6680AE0EF76BBE05D3
        C029E5EB25580A9A45BA379AE3266003A8A15311FB07E8E029D0A61D980FCA94
        E0ED202B16A10DC13AE5A8147C07D26A29D220C36E083867894DF715BA44F564
        09E81E2781369DC009B6F31E2CE74338099DA8C6E4BF0914A9C76E09DB7B0D0A
        5C84760467D5981C9A6091867EE0A11A66B99184A682DF59B986033E25494285
        59E01DDB972150279CD0CEE0162BFE0D32922832C429EA00DB9719A1A7294B55
        53AA9C8FE6EAF3166CE0B2974C93556D13780932C1789066C4196BCAB55BEC3C
        38E2D140373EE0974C0295EE1EBE8E83629E8F0119F6CAD417BC61B72FF6785D
        23C04D5008BA7C6128FDC5E134CEC3E7AF9CAA64BC0EB3C7E84C8A7C0C463A3A
        1C4691C644540ECB72F8DBD87D30D6D1EF60D617FBCD1EA33D787CC000C3C546
        821CF57B3058CDC065357F1BCBE6AB743169FF2ECFF3EC576FBEB683A091E393
        4BAF1D0E3EB76A50C1A3B6427B6E8C804C4B3BD4ECF3598F9AE0F71143351793
        B8723A38A6AEC957DAD87CADB462C6B0571CFD56333BF8A84B0B35816D95E794
        22AFA8001C0D537E1AFC08FEF3F45BC163335B688A09516398FF5E71EE0D5716
        CB7C1C685DA9563A116264EE6312C16F06A3C2940F67DA91E5E9B7318F2F6CA1
        8FD49868E8E84CEAAE053F58BE6A548FA4B17C9D63126874A5F3BCCC167A57AD
        24998E0EE78109D635F970268193D675590E173AFA95D5E81B9EDFB18596F2D8
        0674727458C47957FB98037683B9E08C2A7BCAFA2E26EDB7E3F9257B1E1D08AA
        F46AE0882C8DF7C025D0DF2AEBC55443E2CC9F3C7CFEC279B8DAAC92BA5042BA
        220A952CB18587E301202F4C9964AA833C7C49AEB65F05D0D9B650099A17A814
        765292635183F46039752C35C1B35D294FA50387A2E5DA094096EE9D6CFF29C8
        0F17E1A7F129028658B3922C742AA864FB6B22A52221060EA5AC2CBDDB274922
        25D3BDCD76AFF3438C9A2E17A820BA280E3B23D16803FE54B9FD6C3BA90C77A3
        7C582B7993D8B1048A6D0BF6A8707023A8EFB353D2925B2C3A9E1C106791BDD5
        2E49C098383B964D32D9B4DAA51CDDE36BC9AAA540E984E9E086F22DB34CFB58
        77F38CD3556ACC1AA753406B4F81999C9FF7295F32BBAC0FD79306D78DDCBA0C
        7E6523375705D812809C026719183F61C05BCD6D7709D55A70773A9F39543FEE
        F187B8DBBC826160653CB7C6257F9FCA88BEB5BA5ECE30F131838F777C3811D9
        927533ACFA5B19C75E48C41EBEE9DD5CEEAA08BD540F4532C900FE0187F88743
        6984AC202E42751297CED7DA93E2B3D973F5D8ABD273F799D45D641A5CCEA1E1
        65B5119A54FB20C0004E7B10B44195D3E70000000049454E44AE426082}
      TabOrder = 1
      Version = '1.1.2.0'
    end
    object btSair: TAdvMetroButton
      Left = 3
      Top = 7
      Width = 51
      Height = 49
      Appearance.PictureColor = clWhite
      Caption = ''
      Picture.Data = {
        89504E470D0A1A0A0000000D494844520000002A0000002A0806000000C5C3C9
        5B0000001974455874536F6674776172650041646F626520496D616765526561
        647971C9653C0000032269545874584D4C3A636F6D2E61646F62652E786D7000
        000000003C3F787061636B657420626567696E3D22EFBBBF222069643D225735
        4D304D7043656869487A7265537A4E54637A6B633964223F3E203C783A786D70
        6D65746120786D6C6E733A783D2261646F62653A6E733A6D6574612F2220783A
        786D70746B3D2241646F626520584D5020436F726520352E332D633031312036
        362E3134353636312C20323031322F30322F30362D31343A35363A3237202020
        2020202020223E203C7264663A52444620786D6C6E733A7264663D2268747470
        3A2F2F7777772E77332E6F72672F313939392F30322F32322D7264662D73796E
        7461782D6E7323223E203C7264663A4465736372697074696F6E207264663A61
        626F75743D222220786D6C6E733A786D703D22687474703A2F2F6E732E61646F
        62652E636F6D2F7861702F312E302F2220786D6C6E733A786D704D4D3D226874
        74703A2F2F6E732E61646F62652E636F6D2F7861702F312E302F6D6D2F222078
        6D6C6E733A73745265663D22687474703A2F2F6E732E61646F62652E636F6D2F
        7861702F312E302F73547970652F5265736F75726365526566232220786D703A
        43726561746F72546F6F6C3D2241646F62652050686F746F73686F7020435336
        202857696E646F7773292220786D704D4D3A496E7374616E636549443D22786D
        702E6969643A3445414132443945303444303131453538344545414445343436
        3535353531312220786D704D4D3A446F63756D656E7449443D22786D702E6469
        643A344541413244394630344430313145353834454541444534343635353535
        3131223E203C786D704D4D3A4465726976656446726F6D2073745265663A696E
        7374616E636549443D22786D702E6969643A3445414132443943303444303131
        453538344545414445343436353535353131222073745265663A646F63756D65
        6E7449443D22786D702E6469643A344541413244394430344430313145353834
        4545414445343436353535353131222F3E203C2F7264663A4465736372697074
        696F6E3E203C2F7264663A5244463E203C2F783A786D706D6574613E203C3F78
        7061636B657420656E643D2272223F3E4B533802000004B14944415478DAD499
        7968554714C65F1215778D2651A352637109C605036EE082A2455C6A5D506825
        54105C402B05A960ABE03F820A2AA2E082FE218A2888FB52975A49085151DBB8
        15375C316AAAC625C6C4EB77E01B3D0EBEF7665EDE7BE0811FF7BE3B73CF7C77
        EEDC9973E6A5044110FA1AAC4E2DEF6F023A806EA02B680B9A8306A012FC0F1E
        82CBE02AB8092A40902CA11DC170F03DE80D5A39DCF3045C007BC1617003BC77
        6D30C5F3D54BEF4D063F832EEAFA6B50069E9337A03E7BB729C8028D54FD5B60
        0BD806AEC75BE838301FF457D72E82425002AEF135BF0255A02E878688EC0CF2
        C1401E8D9D03CBC0CEA8BD2B42A3D0002C02CF824F560C6680AE0EF76BBE05D3
        C029E5EB25580A9A45BA379AE3266003A8A15311FB07E8E029D0A61D980FCA94
        E0ED202B16A10DC13AE5A8147C07D26A29D220C36E083867894DF715BA44F564
        09E81E2781369DC009B6F31E2CE74338099DA8C6E4BF0914A9C76E09DB7B0D0A
        5C84760467D5981C9A6091867EE0A11A66B99184A682DF59B986033E25494285
        59E01DDB972150279CD0CEE0162BFE0D32922832C429EA00DB9719A1A7294B55
        53AA9C8FE6EAF3166CE0B2974C93556D13780932C1789066C4196BCAB55BEC3C
        38E2D140373EE0974C0295EE1EBE8E83629E8F0119F6CAD417BC61B72FF6785D
        23C04D5008BA7C6128FDC5E134CEC3E7AF9CAA64BC0EB3C7E84C8A7C0C463A3A
        1C4691C644540ECB72F8DBD87D30D6D1EF60D617FBCD1EA33D787CC000C3C546
        821CF57B3058CDC065357F1BCBE6AB743169FF2ECFF3EC576FBEB683A091E393
        4BAF1D0E3EB76A50C1A3B6427B6E8C804C4B3BD4ECF3598F9AE0F71143351793
        B8723A38A6AEC957DAD87CADB462C6B0571CFD56333BF8A84B0B35816D95E794
        22AFA8001C0D537E1AFC08FEF3F45BC163335B688A09516398FF5E71EE0D5716
        CB7C1C685DA9563A116264EE6312C16F06A3C2940F67DA91E5E9B7318F2F6CA1
        8FD49868E8E84CEAAE053F58BE6A548FA4B17C9D63126874A5F3BCCC167A57AD
        24998E0EE78109D635F970268193D675590E173AFA95D5E81B9EDFB18596F2D8
        0674727458C47957FB98037683B9E08C2A7BCAFA2E26EDB7E3F9257B1E1D08AA
        F46AE0882C8DF7C025D0DF2AEBC55443E2CC9F3C7CFEC279B8DAAC92BA5042BA
        220A952CB18587E301202F4C9964AA833C7C49AEB65F05D0D9B650099A17A814
        765292635183F46039752C35C1B35D294FA50387A2E5DA094096EE9D6CFF29C8
        0F17E1A7F129028658B3922C742AA864FB6B22A52221060EA5AC2CBDDB274922
        25D3BDCD76AFF3438C9A2E17A820BA280E3B23D16803FE54B9FD6C3BA90C77A3
        7C582B7993D8B1048A6D0BF6A8707023A8EFB353D2925B2C3A9E1C106791BDD5
        2E49C098383B964D32D9B4DAA51CDDE36BC9AAA540E984E9E086F22DB34CFB58
        77F38CD3556ACC1AA753406B4F81999C9FF7295F32BBAC0FD79306D78DDCBA0C
        7E6523375705D812809C026719183F61C05BCD6D7709D55A70773A9F39543FEE
        F187B8DBBC826160653CB7C6257F9FCA88BEB5BA5ECE30F131838F777C3811D9
        927533ACFA5B19C75E48C41EBEE9DD5CEEAA08BD540F4532C900FE0187F88743
        6984AC202E42751297CED7DA93E2B3D973F5D8ABD273F799D45D641A5CCEA1E1
        65B5119A54FB20C0004E7B10B44195D3E70000000049454E44AE426082}
      TabOrder = 2
      Version = '1.1.2.0'
      OnClick = AdvMetroButton3Click
    end
  end
  object Panel4: TPanel
    Left = 0
    Top = 101
    Width = 119
    Height = 538
    Align = alLeft
    BevelOuter = bvNone
    Color = 4934475
    ParentBackground = False
    TabOrder = 4
    object AdvSmoothButton1: TAdvSmoothButton
      Left = 5
      Top = 30
      Width = 106
      Height = 35
      Appearance.Font.Charset = DEFAULT_CHARSET
      Appearance.Font.Color = 5263440
      Appearance.Font.Height = -11
      Appearance.Font.Name = 'Tahoma'
      Appearance.Font.Style = []
      Appearance.SimpleLayout = True
      Appearance.Rounding = 0
      Status.Caption = '0'
      Status.Appearance.Fill.Color = clRed
      Status.Appearance.Fill.ColorMirror = clNone
      Status.Appearance.Fill.ColorMirrorTo = clNone
      Status.Appearance.Fill.GradientType = gtSolid
      Status.Appearance.Fill.GradientMirrorType = gtSolid
      Status.Appearance.Fill.BorderColor = clGray
      Status.Appearance.Fill.Rounding = 0
      Status.Appearance.Fill.ShadowOffset = 0
      Status.Appearance.Fill.Glow = gmNone
      Status.Appearance.Font.Charset = DEFAULT_CHARSET
      Status.Appearance.Font.Color = clWhite
      Status.Appearance.Font.Height = -11
      Status.Appearance.Font.Name = 'Tahoma'
      Status.Appearance.Font.Style = []
      Caption = 'SPED EFD'
      Color = 15790320
      ParentFont = False
      TabOrder = 0
      Version = '2.1.1.1'
      OnClick = AdvSmoothButton1Click
      TMSStyle = 21
    end
    object AdvSmoothButton2: TAdvSmoothButton
      Left = 5
      Top = 71
      Width = 106
      Height = 35
      Appearance.Font.Charset = DEFAULT_CHARSET
      Appearance.Font.Color = 5263440
      Appearance.Font.Height = -11
      Appearance.Font.Name = 'Tahoma'
      Appearance.Font.Style = []
      Appearance.SimpleLayout = True
      Appearance.Rounding = 0
      Status.Caption = '0'
      Status.Appearance.Fill.Color = clRed
      Status.Appearance.Fill.ColorMirror = clNone
      Status.Appearance.Fill.ColorMirrorTo = clNone
      Status.Appearance.Fill.GradientType = gtSolid
      Status.Appearance.Fill.GradientMirrorType = gtSolid
      Status.Appearance.Fill.BorderColor = clGray
      Status.Appearance.Fill.Rounding = 0
      Status.Appearance.Fill.ShadowOffset = 0
      Status.Appearance.Fill.Glow = gmNone
      Status.Appearance.Font.Charset = DEFAULT_CHARSET
      Status.Appearance.Font.Color = clWhite
      Status.Appearance.Font.Height = -11
      Status.Appearance.Font.Name = 'Tahoma'
      Status.Appearance.Font.Style = []
      Caption = 'Movimentos ECF'
      Color = 15790320
      ParentFont = False
      TabOrder = 1
      Version = '2.1.1.1'
      OnClick = AdvSmoothButton2Click
      TMSStyle = 21
    end
    object AdvSmoothButton3: TAdvSmoothButton
      Left = 5
      Top = 112
      Width = 106
      Height = 35
      Appearance.Font.Charset = DEFAULT_CHARSET
      Appearance.Font.Color = 5263440
      Appearance.Font.Height = -11
      Appearance.Font.Name = 'Tahoma'
      Appearance.Font.Style = []
      Appearance.SimpleLayout = True
      Appearance.Rounding = 0
      Status.Caption = '0'
      Status.Appearance.Fill.Color = clRed
      Status.Appearance.Fill.ColorMirror = clNone
      Status.Appearance.Fill.ColorMirrorTo = clNone
      Status.Appearance.Fill.GradientType = gtSolid
      Status.Appearance.Fill.GradientMirrorType = gtSolid
      Status.Appearance.Fill.BorderColor = clGray
      Status.Appearance.Fill.Rounding = 0
      Status.Appearance.Fill.ShadowOffset = 0
      Status.Appearance.Fill.Glow = gmNone
      Status.Appearance.Font.Charset = DEFAULT_CHARSET
      Status.Appearance.Font.Color = clWhite
      Status.Appearance.Font.Height = -11
      Status.Appearance.Font.Name = 'Tahoma'
      Status.Appearance.Font.Style = []
      Caption = 'Blocos'
      Color = 15790320
      ParentFont = False
      TabOrder = 2
      Version = '2.1.1.1'
      OnClick = AdvSmoothButton3Click
      TMSStyle = 21
    end
    object AdvSmoothButton4: TAdvSmoothButton
      Left = 5
      Top = 153
      Width = 106
      Height = 35
      Appearance.Font.Charset = DEFAULT_CHARSET
      Appearance.Font.Color = 5263440
      Appearance.Font.Height = -11
      Appearance.Font.Name = 'Tahoma'
      Appearance.Font.Style = []
      Appearance.SimpleLayout = True
      Appearance.Rounding = 0
      Status.Caption = '0'
      Status.Appearance.Fill.Color = clRed
      Status.Appearance.Fill.ColorMirror = clNone
      Status.Appearance.Fill.ColorMirrorTo = clNone
      Status.Appearance.Fill.GradientType = gtSolid
      Status.Appearance.Fill.GradientMirrorType = gtSolid
      Status.Appearance.Fill.BorderColor = clGray
      Status.Appearance.Fill.Rounding = 0
      Status.Appearance.Fill.ShadowOffset = 0
      Status.Appearance.Fill.Glow = gmNone
      Status.Appearance.Font.Charset = DEFAULT_CHARSET
      Status.Appearance.Font.Color = clWhite
      Status.Appearance.Font.Height = -11
      Status.Appearance.Font.Name = 'Tahoma'
      Status.Appearance.Font.Style = []
      Caption = 'Configura'#231#245'es'
      Color = 15790320
      ParentFont = False
      TabOrder = 3
      Version = '2.1.1.1'
      OnClick = AdvSmoothButton4Click
      TMSStyle = 21
    end
    object AdvSmoothButton5: TAdvSmoothButton
      Left = 5
      Top = 194
      Width = 106
      Height = 35
      Appearance.Font.Charset = DEFAULT_CHARSET
      Appearance.Font.Color = clBlack
      Appearance.Font.Height = -12
      Appearance.Font.Name = 'Tahoma'
      Appearance.Font.Style = [fsBold]
      Appearance.SimpleLayout = True
      Appearance.Rounding = 0
      Status.Caption = '0'
      Status.Appearance.Fill.Color = clRed
      Status.Appearance.Fill.ColorMirror = clNone
      Status.Appearance.Fill.ColorMirrorTo = clNone
      Status.Appearance.Fill.GradientType = gtSolid
      Status.Appearance.Fill.GradientMirrorType = gtSolid
      Status.Appearance.Fill.BorderColor = clGray
      Status.Appearance.Fill.Rounding = 0
      Status.Appearance.Fill.ShadowOffset = 0
      Status.Appearance.Fill.Glow = gmNone
      Status.Appearance.Font.Charset = DEFAULT_CHARSET
      Status.Appearance.Font.Color = clWhite
      Status.Appearance.Font.Height = -11
      Status.Appearance.Font.Name = 'Tahoma'
      Status.Appearance.Font.Style = []
      Caption = 'Gerar SPED'
      Color = 33023
      ParentFont = False
      TabOrder = 4
      Version = '2.1.1.1'
      OnClick = btGerarSpedClick
      TMSStyle = 21
    end
  end
  object OpenDialog1: TOpenDialog
    Filter = 'EFD|*.txt'
    Options = [ofHideReadOnly, ofAllowMultiSelect, ofEnableSizing]
    Left = 380
    Top = 520
  end
  object ImageList1: TImageList
    Left = 532
    Top = 524
    Bitmap = {
      494C010171007500040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      000000000000360000002800000040000000D0010000010020000000000000D0
      010000000000000000000000000000000000FFFFFF003E3E3E0017171700FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000069696900C9C9C900959595001616
      1600FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000069696900DEDEDE00313131004545
      450015151500FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF0043434300818181003535
      35003E3E3E003F3F3F00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00474747008383
      8300373737003F3F3F0015151500FFFFFF00FFFFFF00FFFFFF00BAE9FB00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF005858
      580084848400373737003F3F3F0015151500FFFFFF00C3EDFC0048C7F500FFFF
      FF00F9FDFF00B7E8FA00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF004E4E4E00676767003737370040404000161616006CD4F70003B4F100C6EE
      FC0030C0F40096DEF900FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF004E4E4E006767670038383800424242004D4D4D004BCCF50019BD
      F2000DB7F200E1F6FD00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00E4F7FE005BD1F7004F4F4F00676767008C8C8C00A9A9A9004197B40077D9
      F80003B6F10033C4F40080D9F800FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00ECFAFE0059D1F6004C4C4C00CACACA00F7F7F700D3D3D3004BA1
      BF0074D9F8000CB8F200C7EFFC00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0090E0FA0051CFF6004FA5C200F8F8F800FEFEFE005AB0
      CD006AD6F7002AC3F300E0F6FD00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00EBFAFE0062D3F80025C1F5004ECEF70083DDF8004EA4C2005BB1CF0068BF
      DC0041CAF60008BCF10068D6F700FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF0095E1FA005AD0F7006DD7F8007DDCF8004BCD
      F60019BFF300F4FCFE00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF0054CFF70067D4F80067D3F80050CEF70098E3
      FA0027C3F400ACE8FB00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00E7F8FE00A9E6FB00FFFFFF00C1EEFC0053CEF700FFFF
      FF00E2F7FE00A5E6FA00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00F8FDFF00ACE8FB00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00949FA400A6ACAE00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00F5E8
      E100F0DED500EED8CC00C2883300ECDAC200FEFDFD00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00F3EDED00BE9B9900BF988F00F1DDBB00F9EF
      DF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0021201C0019181A001A141900ECEB
      EB00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00313131001517180015161A00FEFEFE00FFFFFF00FFFFFF00B0D5E600259A
      C9002CA2CF002A9FCD002A84A90035698200B1B1B100FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00ECD5CA00E7CA
      BC00E7CABC00ECD1C900B1690900C2853800E3C2A900F6ECE700FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00DDC9CA00AA786E009A5A4100914C2400BF801900D597
      2800F7EBD600FFFFFF00FFFFFF00FFFFFF001716120012100F00141211001B1C
      1A00EDEDEC00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF004D4A
      49001F1D1C0014171500F2F3F200FFFFFF00FFFFFF0097CCE3002A99C80033A0
      CB003EA2CC0062B2D5007DC4DF0076C4E00044A6D000286D8C00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FDFAF900E6C7B900E7CA
      BC00E7CABC00EAD0C800B7731600BC7A2200DAB18D00E7CCBE00F7EEEA00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00E4D2CF00B28278009C5E2D0097510F009149000097530A00BF997E00C79E
      7300D8931500E1A93300FFFFFF00FFFFFF00171612001E1C1B001D1B1A001718
      1600191A1600F4F3F300FFFFFF00FFFFFF00FFFFFF00FFFFFF00403C3C001B19
      190016141400C4C4C200FFFFFF00FFFFFF00FFFFFF0078C1DE00299BC90043A4
      CD00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0073A4BB007486
      8F00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00F0DED600E7C9BC00E7CA
      BC00E7CABC00E7CABD00CB955700AD600000C48A3D00DFBDA000DCB69600EFDC
      CF00F5EBDF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00F6F2F100CBAC
      A600A7715E00A269420098500A00944C0000A56A2400BA8C5500B7895900BF96
      7100E0AF4000E0A00300FFFFFF00FFFFFF00161511000D0B0A00110F0E001516
      14001314100017171700FFFFFF00FFFFFF00FFFFFF00E6E6E400161519000D0F
      100016141400FFFFFF00FFFFFF00FFFFFF00FFFFFF009AD2E900209ACC007AAE
      C600FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0099BD
      CE00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00EDD8CD00ECCFBB00EBCE
      BB00EBCEBB00EBCEBB00EACAB300B3690900B56B0800B3670600B3680700B163
      0100B0610000D9AD6700FEFEFF00FFFFFF00FFFFFF00FFFFFF00BB908400A873
      5300A36A38009E6221009B590F00AF793800BC894600B57D3700B7864B00B385
      5800D3A34200E1A20000FDFBF400FFFFFF001714100015161400111210008C8D
      8B001D1914001C19150016161600ECECEC00C3C3C100181713001C1B1700171E
      1900FFFFFF00FFFFFF00FFFFFF00FFFFFF00D2DEE40090AFBD0043B0DA007E8F
      9700FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00F0DCD300B7A2C800BBA5
      CA00BBA5CA00BBA5C900BCA5CC00A67D7D00A57C7B00A57C7E00A78184009968
      5500925A3C0092593900F6F5FE00FFFFFF00F8F4F200D1B4AC00AA744900A46B
      32009E621B009A550700B8823A00B6782100B3771B00C4944700BF904E00AF77
      3A00C4954E00E3A50A00F4E0B200FFFFFF001C1915001718160018191700FFFF
      FF00B1AFAC0019161200211F1E001515150019181400201F1B0014130F00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00316F8D00277CA2005E7A
      8800FFFFFF00C3D1D700FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00F6EAE400DEC1BC00E2C9
      C600E4CFCE00E9DCDD00EAE5ED00EDECFE00EDEDFF00EFF1FF00E2C7C600E6CE
      D600D5B09800A65D1200CEA77C00FFFFFF00B07D4E00B17C4500A3641200AB6F
      2500B27B3400AB670900BC7B0D00BC730000C98D2800E1B65500DAAD4100B177
      2200A96C2700D29C2E00E3AA2A00FDFBF4001A1713001717170016161600FFFF
      FF00FFFFFF00A5A3A30018161500181511001412110014121100FEFEFE00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C2E3EF0051AFD5002295
      C200FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00319CCA00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FCF8F600FCECDC00FFF5
      E700FFF8EC00FFFFF500FFFFFB00FFFFFF00FFFFFF00FFFFFF00F4D9C900FAE3
      DD00EFD1B800B2630000CE974600FFFFFF00D5B7A2009E5B0E00AF742F00A86A
      2000A35B0100B3711A00DCB37000C67E0100CA840600DDB15200E1AE2500B97A
      1900A35F0A00BC883600DD980000F6E8C5001A1713001616160012121200FFFF
      FF00FFFFFF00FFFFFF000D0A0600110D08001A1818001A181800FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF005F5E6000FFFFFF00FFFFFF009CD1E500239A
      C900FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0024A1D2005C778200FFFFFF00FFFFFF00FFFFFF00FFFFFE00EDD6CA00EBD1
      C500EBD1C400EAD0C400EBD1C600D9AE8900C0803000B56E0D00B7721900B773
      1E00B46C0A00AF650000BF7F3100FDF9F800F4EDE6009E5B1600AB703600974D
      0000AB690F00DAC39200DEBF8100D18E0C00D18A0000DCA94400E3B01C00C790
      28009E5A0000A2631400DD990000EFCD8200171514001316140016171500FFFF
      FF00FFFFFF0024222100111210000C0F0D00121212001313130013131300FFFF
      FF00FFFFFF00FDFDFD001E16160017151400FFFFFF00FFFFFF00FFFFFF003C7D
      9B00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00ACCFDE00ABD4
      E7005BB1D4002690BD00426E8300FFFFFF00FFFFFF00FEFCFB00FBF7F400FBF7
      F400FBF7F400FBF7F400F7EFEB00E3C2AD00D9AF8600C68E4600B5701800AF62
      0500AE630000B0680B00D5A87A00F6EAE500FFFFFF00BE8C6200B37E36009D57
      0300A8610500D4B78000DDC38700DAA53E00D3870000D4921D00E1AB1300D49F
      1C00A25E0500944D0400E19B0200E4A82E00171514000F100E0010110F00FCFC
      FC00312F2E001B1918001314120027282600E0E0E0001B1C1A0011121000211F
      1E00FEFEFE00474343001C14140018161500FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF009BD2E800366C83007099AC00C6CCCD00FFFFFF00FAF2EF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00E9CCBE00E7CABC00E7CABC00E7CABD00E9CFC500EACE
      C600E9D0C300F2E2DD00E6C8BB00EFDCD300FFFFFF00FDFBFA00A7650D00AD70
      27009D540000B3761F00E2C78E00E0C38300C8861E00B86F0000E1B01A00E2A8
      0400D5A43A00DEA31900E3B13D00F8E8CB00181615000C0D0B000B0908005652
      5100111210001213110013111000FAFAFA00FFFFFF00C9C9C70013120E001513
      12001A1B19001C1817001D1515001A181700FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00A0D4E800247799008D9DA500FFFFFF00FFFFFF00F9F3EF00FFFFFF00FFFF
      FF00FFFFFF00FDFBFA00E6C8BA00E7CABC00E7CABC00E7CABC00E7CBBD00E8CD
      C100F7ECE800FEFDFD00F0DCD300EFDBD200FFFFFF00FFFFFF009C570000B378
      2F009F5C0B00A0590000EBD6AD00E7CE9100CE9D4A00AC600000E0B12A00DCA6
      0000E2A50200E3A50E00FEFDFA00FFFFFF001614130017151400110F0E00130F
      0E00171A1800191A1800E8E7E600FFFFFF00FFFFFF00FFFFFF001B1814001715
      1400191A18001A161500160E0E001A181700FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0099B1BD009EA2A600FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0075C0DF00258AB400728A9700FFFFFF00FFFFFF00FDFAFA00FFFFFF00FFFF
      FF00FEFDFD00F0DCD300E7CABC00E7CABC00E7CABC00E7CABC00E6C8B800FCFA
      F800FFFFFF00FFFFFF00F6ECE500F3E5DD00FFFFFF00FFFFFF0098510200AF73
      2100A6662000974D0000EEE0BE00ECD29F00DFBD8100AE701C00E0B02500DFA8
      0000E1B63800F7E9C800FFFFFF00FFFFFF001918140018191700131412001715
      140018161500A8A6A400FFFFFF00FFFFFF00FFFFFF00FFFFFF00BAB8B8001614
      130015161400181413001C14140016171300FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00A9D1E500305B6F007D8A9000FFFFFF00FFFFFF00FFFFFF0075B2
      CB002DA0CD002A94BF007598A600FFFFFF00FBF6F300FCF8F700FBF8F600FBF5
      F400FBF6F400FFFFFF00F7ECE700E8CCBF00E7CABB00E7CABC00E6C8BA00F9F1
      EE00FEFBFA00F8EFEB00E5C4B500FEFDFD00FFFFFF00FFFFFF00AE764500A461
      0400AB6F2B00954B0000E7D5AF00F0DDB600EBD29E00E3C58B00E2B32D00F0D5
      8100FDFBF500FFFFFF00FFFFFF00FFFFFF00191814000F100E00181917001816
      150075737000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF001C1817001715
      140015161400171312001E16160013141000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00D2EAF6007EC3E0001E8BB600198BB600249AC8002EA0
      CD0030A0CB006DADC900FFFFFF00FFFFFF00FCF7F500FAF4F200FBF5F200FBF5
      F200FDFBFA00FFFFFF00FFFFFF00F2E2DB00EBD3C600E7C9BB00E7C9BA00ECD5
      CA00F2E1D900E8CCBF00F2E2DA00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FBF7
      F400CBA4710097532100D0A96100F8F5DF00F2E5C300F0E0B600FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF001B1A16001B1C1A0010110F006968
      6700FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF004E4B4500191514001412
      1100161715001A1615001911110018191500FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00AFD6E9005DB3D5004FAE
      D1007DC2DD00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FBF6F400F1DFD700E9CC
      BF00E8CBBE00FEFDFC00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00E4D2C600F9F0D900F2DEB700F8F0DF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF001B1A160012100F001A151600FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF005D5A59001C1A1900191A18001515
      150015151500171515001914150014111300FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0015415700285F85004887BA003F899C00357E4A0042864500649C6600B4CF
      B500FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF003464A800325B
      A300477FB8003562AA00355AA200FFFFFF00FFFFFF00FFFFFF00898989008383
      83007E7E7E007979790074747400707070006B6B6B00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00F5F9F60074AE
      78002A65810093C6F80090C8F8004084C8002367A80097C1B1007DBF9900307B
      3300629B6500ECF3EC00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF003B69AB005083BB007CB4
      D6007EB4D5005590C2003666AA00FFFFFF00FFFFFF00FFFFFF008F8F8F009292
      9200D5D3D300E2E0DF00DFDCDB00E1DFDF0070707000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00D8D8D800CDCDCD00CACACA00FFFF
      FF00C4C4C400C2C2C200BFBFBF00BDBDBD00BABABA00B8B8B800B6B6B600B4B4
      B400FFFFFF00B1B1B100AFAFAF00BCBCBC00FFFFFF00F6FAF60067AC6C006FB6
      85004288A900DFF1FE005399D7001979BD004897C4004185B90072BF9F009FD9
      BB0065A779004C8C4F00EBF2EC00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF003E6FAE00578DC0008EC4DE009FD2
      E60092C6DF00609AC80027468500FFFFFF00FFFFFF00FFFFFF00FFFFFF009090
      90008B8B8B00C4C2C100D4CFCE007B7B7B007878780079797900747474007070
      70006B6B6B00676767006363630060606000D3D3D300FEFEFE00E1E1E100CBCB
      CB00DEDEDE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00D4D4
      D400B4B4B400D1D1D100FEFEFE00AFAFAF00FFFFFF0083C28A0075BF8C0098D6
      B200549D8A0079B5D4008FB6D00054C8E3005ADEF40077CFEC004395CF005495
      760080C0980066A87A00629B6500FFFFFF00FFFFFF00FFFFFF004985BD004983
      BA004A84BA004A85BC004983BB002F7834002A702F00256A2900A2D4E700A4D6
      E8007FBAD9003C62AA003662A500FFFFFF00A7A7A700A2A2A2009C9C9C009797
      9700919191009E9E9E009A9A9A0082828200848484008787860087868500A2A0
      9F00D3CECD00D3CECD00E8E5E50064646400D6D6D600FEFEFE00FEFEFE00FEFE
      FE00FEFEFE00F4F4F400EDEDED00EBEBEB00E9E9E900E8E8E800EFEFEF00FEFE
      FE00FEFEFE00FEFEFE00FEFEFE00B1B1B100D0EAD30055AF5F00B4E9D20068BB
      73006DBC700087A4840074B7D200C1F5FC0062DEF6005CE1F70078D2EF004495
      D60055947400A5DBBF002F7A3200B5D0B600FFFFFF004D89BE004E8EC1004B88
      BC004682BA00457EB700457EB70036823D007CC181002B73310098CBE2008CC3
      DD004E82BB003662B000FFFFFF00FFFFFF00AEAEAE00E4E2E200D7D5D500D5D3
      D200D1CECD00CAC4C300C8C3C200CDC9C800CCCACA00CCCAC900D8D6D6007473
      7300B9B1AE00B7AFAE00D3CECD0068686800D9D9D900FEFEFE00C5B59300E3A8
      6800FEBA6300FEBB6400F6AD5C00CEAC8000D7D7D700EAEAEA00E9E9E900E7E7
      E700E7E7E700E7E7E700FEFEFE00B3B3B3008BCE940091D6AE009FDDB30083C5
      6F00A7CF7F00C4A45B00919A760076CAE600C6F6FC005DDBF40059E0F6007AD3
      F0004495D5006AB49E0080BD9B00629B65004D8EC1005394C3004E8DBF00F5DD
      CC00F2E2CE004A9D520044954C005DA6640084C68A00529A59002D753200286E
      2D003B6EAD00FFFFFF00FFFFFF00FFFFFF00B4B4B400E0DDDD00A7724D00A772
      4D00A7724D00A7724D00A7724D00A7724D00A7724D00A7724D00DAD5D4007878
      7800BAB2B100B9B1AF00D4CFCE006D6D6D00DCDCDC00FEFEFE00D3AA7800EEBB
      8D00FEBF6500AFC2C400FEA55B00E3AE7300D7D7D700EDEDED00B6B6B600B6B6
      B600B6B6B600B6B6B600FEFEFE00B5B5B5006EC57900AFE8CE0082D38F00BEDB
      8900C2CA8100CBA15500D9AE5B00A5AE7F0078D2ED00C6F6FC005EDBF4005AE1
      F60079D5F1004299D5008FC9BF00418544005497C5005494C500EEDECE00F2E0
      CE00F1E2CE0051A75B0096D19E0091CE99007CC4850087C98F0082C58A002F78
      3400FFFFFF00FFFFFF00FFFFFF00FFFFFF00BABABA00DEDBDB00B5805A00CE98
      7000D8AE9100D9AF9100D9AF9100DAAF9100D6A07700A7724D00D7D3D1007E7E
      7E00BBB4B300BBB3B100D4D0CF0073737300DEDEDE00FEFEFE00F9C78800CC9A
      7E00A1B4B800AFC2C400AB938900F2B97700D7D7D700F0F0F000EEEEEE00ECEC
      EC00EAEAEA00E9E9E900FEFEFE00B8B8B80065C47100BDEEDC0072D07C008FD0
      6B00BBDF9D00C6A65D00D2AF5D00C598520097BA8E007BD3EC00C3F5FC006BDC
      F5006CC9EC0062A2D600629FD1003B8350005A9EC7005395C600F3E1CC00F2E1
      CE00F1E1CD0058B1620053AA5D006CB6750094D09D0062AB6A003C8A43003682
      3D00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C0C0C000DFDCDC00B47F5900CB95
      6E00CD976F00CF997100D19B7200D29C7400D49E7500A7724D00D7D4D3008484
      84003BA1420037943700D6D1D00078787800E1E1E100FEFEFE00FBCB8D00B2B0
      B4009CC7F200A0CDF7007499BC00FACB8D00D7D7D700F3F3F300B6B6B600B6B6
      B600B6B6B600B6B6B600FEFEFE00BBBBBB0066C57300BDEFDB0080D7820076DA
      6C00BEE49900CBDEA600C9A75C00C1BC6B00B7D98A0079CB8A007DD4E900B1E2
      F8008ABFE600ADD2F500C3DFFB00639DCD005FA4CB005198C400F1E0CE00F2E0
      CD00F2DFCD00F2E1CE00F1E0CC0055AC5E009CD4A5004A9D5200457EB7004A85
      BC00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C5C5C500E1DEDC00B37D5800C791
      6B00C9936D00CB956E00CD977000CF997100D19B7300A7724D00D9D5D4008B8B
      8B00A0C8A40050A95600D7D3D1007E7E7E00E3E3E300FEFEFE00FBCB8D008199
      B9004C7FB5002F629600254D7600F7C88C00D7D7D700F6F6F600F4F4F400F2F2
      F200F0F0F000EEEEEE00FEFEFE00BEBEBE0072CA7E00B2EBD1009AE1A1009CE9
      8C00D3ECB600CFE9C600CEB86D00CBB06500CAC8740075DA66004DCC810076BD
      E600B3D1EF00E4F2FE00ABD1EE00478CBC0060A6CD005898CB00F2E1CE00F3E1
      CD00F2E0CE00F2E0CD00F2E1CE005BB5660056AF600051A75B00457EB7004D89
      BD00FFFFFF00FFFFFF00FFFFFF00FFFFFF00CACACA00E1DFDE00B17C5700C48E
      6800C6906A00C8926B00CA946D00CC966F00CE987000A7724D00DBD6D6009191
      9100C1BBB900C0B9B800D7D3D30084848400E4E4E400FEFEFE00FBCB8D00EEC1
      8700B09A7600A5957500CEAA7700FBCB8D00D7D7D700FBFBFB00EBB57300E5AD
      6900DFA45F00DA9C5500FEFEFE00C1C1C10093D69C0097DDB400B4EACB00B0EE
      A600C8EDA800D0E9C800D4CE8C00D8CA8A00CCB36500BBBB660099D5700067CE
      950057A4D70084B0DA00459CCF0057A497005EA5CD00579FCA00F1E2CF00F1E0
      CD00F1E1CE00F2E1CD00F2E0CE00F2E1CE00F1E1CD00F2E0CD004984BC004C87
      BC00FFFFFF00FFFFFF00FFFFFF00FFFFFF00CECECE00E2DFDF00B07B5600B17B
      5600B17C5700B27D5800B37E5800B47F5900B5805A00A7724D00DCD8D7009898
      98008D8D8D008A8A8A00D9D5D4008B8B8B00E5E5E500F9F9F900F9F9F900F8F8
      F800F8F8F800F8F8F800F7F7F700F7F7F700F6F6F600F6F6F600F5F5F500F5F5
      F500F4F4F400F3F3F300F3F3F300C5C5C500DAF1DD0063C47000BFF2E100B4EE
      B300B4EFAB00C0ECB600D3E2B600D8D79B00D9D29400CCB46C00C6B26C00B4CA
      830093DE9900AEE6CC00479B4E00C4DEC6005DA5CC005DA3CC00F1DECB00F1E0
      CD00F1E0CD00F1E1CE00F3E1CD00F2E0CE00F2E1CE00EEDECE004E8DC0004A87
      BC00FFFFFF00FFFFFF00FFFFFF00FFFFFF00D3D3D300F1EFEF00E2DFDF00E2DF
      DF00E1DFDE00E1DEDD00E0DDDC00DFDCDB00DEDBDB00DEDBD900EDECEB009E9E
      9E00C5BFBE00C3BDBB00DAD6D50091919100F3F3F300EAEAEA00EAEAEA00E9E9
      E900E8E8E800E6E6E600E5E5E500E3E3E300E1E1E100DFDFDF00DDDDDD00DBDB
      DB00D9D9D900D7D7D700D5D5D500E7E7E700FFFFFF0098D8A10086D69F00BFF1
      DD00C6F1D500D4EED400CFE8CE00D4DAA500DBDDAA00DACC8F00D6C78A00C8C0
      8D00BCD4AE0079C690007DBD8400FFFFFF005BA5CA0060A6CE005AA2CC00F1DE
      CC00F1DFCD00F2E0CD00F2E1CE00F0E0CF00EFE0D1004E8FC100518FC200498A
      BD00FFFFFF00FFFFFF00FFFFFF00FFFFFF00D6D6D600D3D3D300D0D0D000CCCC
      CC00C8C8C800C3C3C300BFBFBF00BABABA00B5B5B500B0B0B000AAAAAA00A5A5
      A5009493930092919100DBD7D60098989800FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FCFEFC0085D18F008BD7
      A100CCF4E700D3ECD900CDECD200CEDEAE00D5DDB400D3D3A100CDCFA000C3CF
      A90086C8900071BD7900F5FAF500FFFFFF00FFFFFF005CA5CE0060A6CE005DA4
      CC00599FCA00589ECB005198C4005399C6005598C6005696C5004F8EC100FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00CFCFCF00CBCBCB00DFDFDF00EAEAEA00CFCAC900CBC6C500CAC4
      C300C8C3C100C7C1C100DCD9D8009E9E9E00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FDFEFD0099D8
      A10064C57100A4E0BA00B9E9CB00C4DFBD00C4D9B300BCD6AF00A5D6AB005FBE
      6A0089CD9100F7FCF800FFFFFF00FFFFFF00FFFFFF00FFFFFF005BA5CA005DA6
      CC005FA6CD0062A7CD0060A5CC005C9FCA00569AC6005293C600FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00D0D0D000CCCCCC00DCDCDC00E6E3E300E1DEDC00DFDC
      DC00DFDCDB00DEDBDB00EEECEC00A5A5A500FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00D9F1DC0095D79E0074CB7F0067C6730064C571006EC87A0090D59900D2ED
      D500FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00CDCDCD00C9C9C900C4C4C400C0C0
      C000BBBBBB00B6B6B600B0B0B000ABABAB00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FCFCFF000353FF00014D
      FF00E5ECFE00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00F4F5
      FF000151FF000353FE00F9F9FD00FFFFFF00FFFFFF00FFFFFF00F7FBFD00F6F5
      F500D1967900AA543700AC4B2A00AD492500AC472500A9472800A64C3100C67E
      5F00F4F2F300F7FBFD00FFFFFF00FFFFFF00FFFFFF00FFFFFF0069A8DF005A5A
      5A003D3D3D004D4D4D0049494900474747004747470045454500474747003838
      38005656560069A9E100FFFFFF00FFFFFF00FFFFFF00FFFFFF00F7FBFD00EDE8
      E300A4774A00AE7A4100AD783C00AC773B00AC773B00A9743800A9753C009767
      3A00EAE5E000F7FBFD00FFFFFF00FFFFFF00FFFFFF00FCFFFF000151FF000050
      FF00E2E9FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00F1F7
      FE000050FF000151FF00F6F7FE00FFFFFF00FFFFFF00B9D2EA00277ACD008762
      6200BE5F3400FDB86000FDB86100FDB86100FDB86100FDB86000FDB86000B048
      23007E6972003381CE00B3CFE800FFFFFF00FFFFFF006DA2D3002579CD005E5E
      5E004F4F4F008484840084848400808080005454540083838300848484004A4A
      4A00454545002E7ECE006DA2D300FFFFFF00FFFFFF00B9D2EA00277ACD00BF8D
      5300B4804200D2AE8400D2AE8400D0AA7E00B8844600D1AD8200D2AE8400AF7A
      3E00A8753B003381CE00B3CFE800FFFFFF00F3F7FF00ABC4FF000858FE000656
      FF00A0BAFD00ADCAFF00ADCAFF00ADCAFF00ADCAFF00ADCAFF00ADCAFF00A8C1
      FF000656FF000854FE00A7C1FC00EFF5FF00FFFFFF00297DD00081B9ED009E65
      5700F4BA8300FEAB5A00FDA75900FDA15600FD9B5200FEA25400FE9E4F00F7AD
      7700A35D490082BBEE002A77C900FFFFFF00FFFFFF00297DD10082BAEE005F5F
      5F008F8F8F007A7A7A00777777006D6D6D004E4E4E00727272006F6F6F008484
      84005555550083BCEF002A77CA00FFFFFF00FFFFFF00297DD00081B9ED00C08E
      5400D7B89300CDA57700CBA27400B9926F00B17E4300C99E6D00C79B6800D2AD
      8400B783480082BBEE002A77C900FFFFFF00DCE8FE00014DFF00115CFF00115C
      FF000C5BFE000C58FE000C58FE000C58FE000C58FE000C58FE000C58FE000C58
      FE00115CFF00135EFD00004CFE00D0E2FF00FFFFFF002A7DCE0077B2E900B29D
      9300FEB65F00FEB56200FDB16000FDAB5C00FDA45800FC9D5200FD964D00FE8C
      4200BB8E81007DB7EC002C76C700FFFFFF00FFFFFF00287CCE0078B3EA007A7A
      7A00838383007E7E7E005D5D5D00494949004C4C4C0055555500646464005F5F
      5F006D6D6D007EB8ED002974C700FFFFFF00FFFFFF002A7DCE0077B2E900CDA5
      7800D1AD8200CFA87C00B68758004C4DA50076617B00B5834A00C3925B00C08D
      5400C69966007DB7EC002E77C800FFFFFF00DCE8FE000050FF00135EFF00135E
      FF000C58FE000C58FE000C58FE000C58FE000C58FE000C58FE000C58FE000C58
      FE00135EFF00135EFF00004CFE00D3E0FD00FFFFFF00E0C9BC0089534300FBC7
      AA00FED09700FDC66C00FDBE6700FDB86300FDB05D00FDA75800FC9F5300FEB6
      7900FDA87F00874F4100D3BBAF00FFFFFF00FFFFFF004C4C4C0063636300A4A4
      A40050505000525252005B5B5B00B8B8B800C1C1C100575757004D4D4D005A5A
      5A007E7E7E006060600046464600FFFFFF00FFFFFF00D0B9A200C2915A00E1C9
      AF00B5814300B6824400B7875400495ACF004F5FD100B9864B00B27E4000BE89
      4D00CFA87C00BD8C5700CAB29D00FFFFFF00DCE7FF000459FF00286CFF004A7E
      FF000B56FF00115CFF00115CFF00115CFF00115CFF00115CFF00115CFF000E59
      FF003F7CFF003B79FE00034FFE00D3E0FD00FFFFFF00FFFEFE00DEB9A400C34B
      1E00F5E3D500FEE3A300FED37100FEC86800FEBF6200FEB55E00FEC07F00F5D6
      C500C4481E00D7AF9A00FDFCFB00FFFFFF00FFFFFF0049494900777777004C4C
      4C004E4E4E009797970059595900ABABAB00A5A5A50054545400868686006262
      62004A4A4A004444440048484800FFFFFF00FFFFFF00FEFDFD00D8BFA500B17C
      4000B37F4100DBBE9D00BD894B00C3B5BB005D66C700B2804C00D2AF8700C190
      5800AE7A3E00C9AE9500FDFBFA00FFFFFF00DDE9FF000053FB00C8D6FF00F2F3
      FF00135EFF00115CFF00115CFF00115CFF00115CFF00115CFF00115CFF000656
      FF00EDEFFE00E6F0FF000047FA00D2E3FF00FFFFFF00FFFFFF00FDFAF900D9B3
      9D00BB471B00F3E1D3004D7AA8004C7AA7004C7AA7004D7AA800F2D5C200BD45
      1B00D4AC9700FBF8F600FFFFFF00FFFFFF00FFFFFF00FFFFFF00484848004949
      49004B4B4B00989898005C5C5C00557CA300557CA3004C4C4C00989898004E4E
      4E004C4C4C0048484800FFFFFF00FFFFFF00FFFFFF00FFFFFF00F9F5F100C7AA
      8C00B07C3E00D7BD9F00958170005471A300425DB400A1785E00D8BD9F00B37F
      4100CAAB8E00F9F6F300FFFFFF00FFFFFF00FFFFFF000133F300C7D9FF00DFEB
      FD000656FF000450FF000450FF000450FF000450FF000450FF000450FF00004A
      F900D7E3FF00DDE9FF000622EB00F3F7FF00FFFFFF00FFFFFF00FFFFFF00FDFB
      FA00A0827400336CA6009BCBF700AED3F600AED3F600A4CEF5003373AD00987B
      7000FBF8F700FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF006946
      32003D3D3D00416F9E009CCCF800AFD4F700AFD4F700A5CFF6004176A6003737
      370065422E00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FBF9
      F700AF8E6C00527190009BCBF700AED3F600AED3F600A4CEF50050789900A88A
      6B00FAF8F600FFFFFF00FFFFFF00FFFFFF00FFFFFF00578AFF002368FF005A8C
      FF001C5DFD002065FF002065FF002065FF002065FF002065FF002065FF001D66
      FF004F87FF003D7AFF004579FC00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF005B80AA00A5C9ED00AACBE900A6CFF500A7CFF500AACBE900A6CCED005681
      FD00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00305D8F00A6CAEE00ABCCEA00A7D0F600A8D0F600ABCCEA00A7CDEE002E62
      9A00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00617FA100A5C9ED00AACBE900A6CFF500A7CFF500AACBE900A6CCED005881
      FD00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF003B79FE007CA7
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00B3C7FF002E69FE00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF002E68A100D8E7F60096C4F0008DBAE4007EA8D00088B4DE00CCDEED002E6F
      AB00FBFDFE00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00184878009BB7D100A3C9ED009FC5E80074A1CD0081B0DD0096B3CE001A4C
      7E006AA0D200FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF002C659E00BCD6EE00A2C8EC009EC4E70073A0CC0080AFDC00B6D2EA002C6B
      A700FBFDFE00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF008CB5FF002368
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00477FFE006597FE00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF000B3D86007B96B70089B6E300709BC700143F6D001843710021446A00153E
      6800FAFBFC00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00113667002A4B71004C759E003B638E0011355B0028527B001C3959001032
      550058738E00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00103773007792B40089B6E3006692C20010345A0014385E001B3858000F31
      5400F8F9FA00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00D7E3FF001D66
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF002464FD00C8D6FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF000E4A960011579E000E4989000E4A8600104A8600144B8400114074001B3D
      6400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0037527900255A93000C3E7600245485000E3E730026558400163E69001430
      5000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00365178000E488E000B3D75000B3D72000D3D7200103E6F000E3560001430
      5000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00BBCF
      FF007EA4FD00DDE5FF00DCE8FE00DCE8FE00DCE8FE00DCE8FE00DDE5FF00A3BD
      FF00AAC3FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00909FB800114E950011579A0011579800105292000E4986000E3E71008795
      A300FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF005F636900284D7D002D6196000F4988002C6093000C3E73001B3D6000595E
      6300FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00AEB0B300274C7C000E4889000E4887000D4480000B3D72001A3C5F00A2A5
      A800FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FBFD
      FF00195FFE004880FF00477FFE00477FFE00477FFE00477FFE004783FF001D62
      FE00F6FBFE00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF008B9BB5001B4F91000F4A8F000E478900194881008595AA00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00565D6800133F7A000D3E7D000C3C7600123969004E566300FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00A1A5AB00123E79000C3D7C000B3B75001138680091969E00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00D3EA
      F600FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00D0E3F200FCFDFE00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000A812900027A
      1D00DEEEE100FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00ECECEC00F5F5F500FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00113D5500285F87004988BD00428DBC007896AE00AAAAAA00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0054AF
      DF0051A7D400B6D8EB00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C4DDEE004F97
      CD001875BB00FFFFFF00FFFFFF00FFFFFF00FFFFFF00DFB49200D49C7300D095
      6700CD916200CA8D5D00C8895A00C6865500C2835100C283510008822C0042A0
      5E00147B2300A4814800CFA07C00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00EDEDED00AFAFAF00B5B5B500F4F4F400FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF002B65830094C7F90091C9F9004185C9002367AA009DABB700AAAAAA00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0075C8
      EB007FCBEA004BA7D300429DCD00A5CFE700B2D6EB00489BCF003494CE0063B8
      E2003C8FCC00FFFFFF00FFFFFF00FFFFFF00FFFFFF00D6A07400F7F1EC00F6EF
      E900F5ECE500F3E9E100219651001B904900158E43000F8A3B00399E5D007FC0
      950045A2610016862F00A5875200FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00EEEEEE00B3B3B300DFDFDF00D7D7D700B5B5B500F4F4
      F400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF004389AA00E0F2FF00549AD8001A7ABE004998C500458BC300A0AEBB00ABAB
      AB00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0092D5
      F0007ECDEE00ACE4F6008BD0EA0053AED9004AAAD9007AC9E90095DDF5006CC1
      E8005BA4D500FFFFFF00FFFFFF00FFFFFF00FFFFFF00D8A37900F8F2ED00EAD1
      BD00FEFEFE00EAD2BE00289A5A008FC9A8008CC7A40089C5A00087C49D0069B5
      840081C1960047A465000F7D2500CFE6D400FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00EEEEEE00B6B6B600E1E1E100FCFCFC00FCFCFC00D8D8D800B5B5
      B500F4F4F400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF001D699C007AB6D50090B7D10055C9E4005BDFF50078D0ED004E9ADA00A5B1
      BB00ABABAB00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00AEE1
      F4006DC7EB00B0E8F80095DFF600A6E5F700A2E3F70090DDF5008BDAF5005FB8
      E3007DB9DF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00DCA77D00F8F2EE00EACF
      B900EACFBA00EACFBA00309E620093CCAC006EB98D006AB7880065B5840060B2
      7F0066B4810082C197003B9F5B0003802700FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00EFEFEF00BABABA00E3E3E300FCFCFC00FAEBD400FCD19600FCFAF600D8D8
      D800B6B6B600F4F4F400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00BABABA0083A6B70076B9D600C2F6FD0063DFF7005DE2F80079D3F0004897
      DB00A7B2BB00ABABAB00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C5E9
      F70058BFE800B3E9F9005BCFF20051CBF10048C8F0003FC4EF009BE0F60053B0
      DE009DCCE700FFFFFF00FFFFFF00FFFFFF00FFFFFF00DEA98100F8F2EE00E9CD
      B600FEFEFE00EACFBA0036A26A0095CDAF0093CCAC0090CAA9008FCAA70073BB
      8F0089C6A00045A4670008863400F0F8F300FFFFFF00FFFFFF00FFFFFF00EFEF
      EF00BDBDBD00E4E4E400FCFCFC00FAEBD500FCCC8500FECE8B00F9D09600F8F6
      F200D8D8D800B6B6B600F4F4F400FFFFFF00FFFFFF00FFFFFF00FFFFFF00BDBD
      BD00BCBCBC00E5E5E500B0D4E50077CBE700C7F7FD005EDCF5005AE1F7007BD4
      F1004A98DC009DAEBE00ACACAC00FFFFFF00FFFFFF00FFFFFF00FAFDFE006EC4
      E8008FD6F000B4EAF90061D1F20058CEF1004ECAF00044C7EF007ED7F40081CD
      EA00479FD100F2F8FC00FFFFFF00FFFFFF00FFFFFF00E0AD8600F9F3EF00E9CA
      B100E9CBB200E9CBB2003CA46E0037A26D0033A067002F9C610054AE7B0090CA
      A9004EAA7300188F4500BB855200FFFFFF00FFFFFF00FFFFFF00F0F0F000C1C1
      C100E6E6E600FCFCFC00FAEBD500FCCC8700FED49700FED59B00FECF8D00F6CB
      8C00FCFBFA00D8D8D800B6B6B600F5F5F500FFFFFF00FFFFFF00C1C1C100C0C0
      C000E7E7E700FDFDFD00FBECD600BEC4A00079D3EE00C7F7FD005FDCF5005BE2
      F7007AD6F2004E9FDE00A1AFBB00ACACAC00FFFFFF00FDFEFF0076C7E8006EC7
      E800BCEBF90078DAF50067D4F3005DD0F20054CCF1004AC9F00041C5EF009BDE
      F40056B0DA004EA2D000F4F9FC00FFFFFF00FFFFFF00E2B08B00F9F5F000E9C8
      FD00FEFEFE00E9C8AF00FEFEFE00FEFEFE00FEFEFE00E7C6AB0038A2680059B2
      800027975600E9E1D500C5855400FFFFFF00FFFFFF00F1F1F100C4C4C400E7E7
      E700FCFCFC00FAEBD500FCCC8700FED49700FED69D00FED59A00FECD8800FCE0
      B900FCFCFC00D6D6D600B4B4B400F8F8F800FFFFFF00C5C5C500C3C3C300E8E8
      E800FDFDFD00FBECD600FDCD8800FFD59800C1CEB2007DD4ED00C4F6FD006CDD
      F6006DCAED0063A3D700649DD0006F9BC100FFFFFF0080CDEB0071CAE900C3EE
      F90098E3F70078DAF5006DD6F40063D2F30059CEF20050CAF10046C8F00062CF
      F2009ADEF40054B0DA0057A7D300F7FBFD00FFFFFF00E4B38E00F9F5F100E8C5
      A900E8C5AB00E9C6AB00E8C6AC00E8C8AD00E8C8AF00E7C6AB003DA36D00309E
      6400E0C9B100F1E6DD00C7895800FFFFFF00F2F2F200C8C8C800E8E8E800FCFC
      FC00FAEAD200FECB8200FED39700FED69D00FED59A00FECE8A00FCE1BB00FCFC
      FC00D8D8D800B8B8B800F8F8F800FFFFFF00C9C9C900C7C7C700E9E9E900FDFD
      FD00FBEBD300FFCC8300FFD49800FFD79E00FFD69B00B5C6A80081D5ED00B2E3
      F9008BC0E700AED3F600C4E0FC00669FD30091DDF4006AD1F0008CD9F3009FDF
      F500AEE6F700BFEDFA00B9EBF90069D5F3005FD1F20094DFF600A8E5F70090D9
      F2007ECEEE0063C2EA0041ACE10060B3E000FFFFFF00E6B69300FAF6F300E8C2
      A500FEFEFE00E7C3A800FEFEFE00FEFEFE00FEFEFE00E7C6AB00FEFEFE00FEFE
      FE00FEFEFE00F6F0EA00CA8E5E00FFFFFF00CCCCCC00EAEAEA00FCFCFC00F9F9
      F900FAF2E600FDCD8800FED39500FED49900FECE8A00FCE1BB00FCFCFC00D9D9
      D900BCBCBC00F9F9F900FFFFFF00FFFFFF00CBCBCB00EBEBEB00FDFDFD00FAFA
      FA00FBF3E700FECE8900FFD49600FFD59A00FFCF8B00FDE2BC00AFE4F40077BE
      E700B4D2F000E5F3FF00ACD2EF00488CC700FBFEFF00D9F5FC00B5EBF90092E0
      F5006DD5F10045C7EC00A1DFF500B5EAF9009DE3F7009CDDF40069C7EC005CC5
      EA0082D4EF00A6E0F400CCECF800F2FAFD00FFFFFF00E8B99700FAF6F300E8C2
      A500E8C2A500E8C2A500E8C2A500E8C2A500E8C2A500E8C2A500E8C2A500E8C2
      A500E8C2A500FAF6F300CD926300FFFFFF00CCCCCC00FCFCFC00FCFCFC00FBFB
      FB00F6F6F600FCF4E900FDCE8900FECB8200FCE1BB00FCFCFC00DBDBDB00BFBF
      BF00F9F9F900FFFFFF00FFFFFF00FFFFFF00CDCDCD00FDFDFD00FDFDFD00FCFC
      FC00F7F7F700FDF5EA00FECF8A00FFCC8300FDE2BC00FDFDFD00DCDCDC0092BB
      CA0058A5D80085B1DB00469DD0002B95D100FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00C9F0FA0073D1F100BEEDF900B7EAF90067C6EC00ABDEF300FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00EABC9A00FAF6F300FEFE
      FE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFE
      FE00FEFEFE00FAF6F300D0966900FFFFFF00CDCDCD00FCFCFC00DFDFDF00CACA
      CA00CDCDCD00F6F6F600FAF2E700FCE2BC00FCFCFC00DDDDDD00C2C2C200F9F9
      F900FFFFFF00FFFFFF00FFFFFF00FFFFFF00CECECE00FDFDFD00E0E0E000CACA
      CA00C8C8C800F7F7F700FBF3E800FDE3BD00FDFDFD00DEDEDE00C3C3C300BDBD
      BD00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0074D5F20099DDF40095DCF30050B9E400FDFEFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00EBBE9D00FAF6F3009BD4
      A40097D2A00093CF9C008FCD97008ACA920086C88D0081C588007DC2830079C0
      7F0075BD7B00FAF6F300D39A6E00FFFFFF00CFCFCF00FCFCFC00CCCCCC00FFFF
      FF00D4D4D400F2F2F200FAFAFA00FCFCFC00DFDFDF00C6C6C600FAFAFA00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00D0D0D000FDFDFD00CDCDCD00FFFF
      FF00CACACA00F3F3F300FBFBFB00FDFDFD00E0E0E000C7C7C700C0C0C000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00DCF5FC0048C9ED0062C9EE00C4E8F600FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00EEC5A700FAF6F300FAF6
      F300FAF6F300FAF6F300FAF6F300FAF6F300FAF6F300FAF6F300FAF6F300FAF6
      F300FAF6F300FAF6F300D7A27700FFFFFF00D1D1D100FCFCFC00E1E1E100CDCD
      CD00DFDFDF00FCFCFC00FCFCFC00E1E1E100CACACA00FAFAFA00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00D2D2D200FDFDFD00E2E2E200CECE
      CE00E0E0E000FDFDFD00FDFDFD00E2E2E200CBCBCB00C4C4C400FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF008EE0F5006ED0F000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00F7E0D100F0C7AB00ECBF
      9E00EABD9C00EABB9900E8B99500E6B69200E5B48F00E3B18B00E1AE8700DFAB
      8300DCA87F00DBA47C00E1B59500FFFFFF00D2D2D200FCFCFC00FCFCFC00FCFC
      FC00FCFCFC00FCFCFC00E3E3E300CCCCCC00FAFAFA00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00D3D3D300FDFDFD00FDFDFD00FDFD
      FD00FDFDFD00FDFDFD00E4E4E400CDCDCD00C8C8C800FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00ECF9FD00DDF4FC00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00D4D4D400D3D3D300D1D1D100D0D0
      D000CFCFCF00CDCDCD00CCCCCC00FBFBFB00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00D5D5D500D4D4D400D2D2D200D1D1
      D100D0D0D000CECECE00CDCDCD00CBCBCB00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C895
      6100CA986500CA976500CA976500CA976500CA976400C9976400C9976400CA98
      6500C8946100FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C795
      6100C9976400C9966400C9966400C9966400C9966300C8966300C8966300C997
      6400C7946100FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C795
      6100C9976400C9966400C9966400C9966400C9966300C89663006A7F4B00216C
      3800186A36002472400084B09400FFFFFF00FFFFFF00EEE1D400D3B08C00FFFF
      FF00E1C9B100CCA37A00FFFFFF00E1C9B100CCA47B00FFFFFF00E3CDB700D0AB
      8500FFFFFF00E5D1BC00E1C9B000FFFFFF00636363005D5D5D0058585800C795
      6100F9F7F600F9F1EC00F9F1EB00C5C0BD00F7EDE600F4EAE100F2E8DE00FAF8
      F600C7946100242424002323230023232300A1A1A100A6A6A60057575700C694
      6000F8F6F500F8F0EB00F8F0EA00F7EFE800F6ECE500F3E9E000F1E7DD00F9F7
      F500C6936000232323004A4A4A0095959500A1A1A1007979790057575700C694
      6000F8F6F500F8F0EB00F8F0EA00F7EFE800F6ECE50082A78800278B520063B9
      8C0094D1B10063B98C00278B5200517E6100E8D7C400FFFFFF00E1CAB200CCA3
      7A00FFFFFF00E1C9B100CCA37A00FFFFFF00E1C9B100CCA37A00FFFFFF00E1C9
      B100CCA37A00FFFFFF00E3CDB600E4CFBA006A6A6A00A7A7A700B5B5B5008181
      8100AFACAA00C5C0BD00C5C0BD00C5C0BD00C5C0BD00C5C0BD00C5C0BD00ADAA
      A8002C2C2C00B5B5B5009B9B9B00232323006A6A6A00A6A6A600B4B4B4008080
      8000AEABA900C4BFBC00C4BFBC00C4BFBC00C4BFBC00C4BFBC00C4BFBC00ACA9
      A7002B2B2B00B4B4B4009A9A9A00222222006A6A6A00A6A6A600B4B4B4008080
      8000AEABA900C4BFBC00C4BFBC00C4BFBC00C4BFBC001F6E3C0061B98A005FB9
      8600FEFEFE005FB8860066BB8E0018683500E4CFBA00CDA57C00FFFFFF00E1C9
      B100CCA37A00FFFFFF00E1C9B100CCA37A00FFFFFF00E1C9B100CCA37A00FFFF
      FF00E1C9B100CCA37A00FFFFFF00E4CFB90070707000B5B5B500B5B5B5009595
      95008181810081818100797979006E6E6E006161610052525200434343004242
      42006E6E6E00B5B5B500B5B5B500252525006F6F6F00BABABA00B4B4B4009494
      94008080800080808000787878006D6D6D006060600051515100424242004141
      41006D6D6D00B4B4B400B4B4B400242424006F6F6F00B4B4B400B4B4B4008C8C
      8C008080800080808000787878006D6D6D0060606000307A4B009BD3B500FEFE
      FE00FEFEFE00FEFEFE0094D1B100186A3600FFFFFF00E1C9B100CCA37A00FFFF
      FF00E1C9B100CCA37A00FFFFFF00E1C9B100CCA37A00FFFFFF00E1C9B100CCA3
      7A00FFFFFF00E1C9B100CCA37A00FFFFFF0075757500BBBBBB00BBBBBB008D8D
      8D00D4D4D400B9B9B900B9B9B900B9B9B900B9B9B900B9B9B900B9B9B900D3D3
      D30083838300BBBBBB00BBBBBB002A2A2A0074747400BABABA00BABABA008C8C
      8C00D3D3D300B8B8B800B8B8B800B8B8B800B8B8B800B8B8B800B8B8B800D2D2
      D20082828200BABABA00BABABA002929290074747400BABABA00BABABA008C8C
      8C00D3D3D300B8B8B800B8B8B800B8B8B800B8B8B80047885F008FD2B00091D5
      B000FEFEFE0064BB8B0066BB8E0019683600CCA37A00FFFFFF00E1C9B100CCA3
      7A00FFFFFF00E1C9B100CCA37A00FFFFFF00E1C9B100CCA37A00FFFFFF00E1C9
      B100CCA37A00FFFFFF00E1C9B100CCA37A007A7A7A00D7D7D700D7D7D7009797
      9700D8D8D800BFBFBF00BFBFBF00BFBFBF00BFBFBF00BFBFBF00BFBFBF00D7D7
      D7008E8E8E00D7D7D700D7D7D7003F3F3F0079797900D6D6D600D6D6D6009696
      9600D7D7D700BEBEBE00BEBEBE00BEBEBE00BEBEBE00BEBEBE00BEBEBE00D6D6
      D6008D8D8D00D6D6D600D6D6D6003E3E3E0079797900D6D6D600D6D6D6009696
      9600D7D7D700BEBEBE00BEBEBE00BEBEBE00BEBEBE0087A6920060AA800094D3
      B300B9E5CF0069BA8E002C8E560029563A00E1C9B100CCA37A00FFFFFF00E1C9
      B100CCA37A00FFFFFF00E1C9B100CCA37A00FFFFFF00E1C9B100CCA37A00FFFF
      FF00E1C9B100CCA37A00FFFFFF00E1C9B1007E7E7E00F9F9F900F9F9F900ABAB
      AB00DFDFDF00CBCBCB00CBCBCB00CBCBCB00CBCBCB00CBCBCB00CBCBCB00DFDF
      DF00A3A3A300F9F9F900F9F9F900616161007D7D7D00F8F8F800F8F8F800AAAA
      AA00DEDEDE00CACACA00CACACA00CACACA00CACACA00CACACA00CACACA00DEDE
      DE00A2A2A200F8F8F800F8F8F800606060007D7D7D00F8F8F800F8F8F800AAAA
      AA00DEDEDE00CACACA00CACACA00CACACA00CACACA00CACACA0093AF9D005E97
      73004E8D65004889600095B9A20060606000FFFFFF00E1C9B100CCA37A00FFFF
      FF00E1C9B100CCA37A00FFFFFF00E1C9B100CCA37A00FFFFFF00E1C9B100CCA3
      7A00FFFFFF00E1C9B100CCA37A00FFFFFF0081818100FCFCFC00FCFCFC00CBCB
      CB00F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2
      F200C6C6C600FCFCFC00FCFCFC007070700083838300FBFBFB00FBFBFB00CACA
      CA00F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1
      F100C5C5C500FBFBFB00FBFBFB007070700083838300FBFBFB00FBFBFB00CACA
      CA00F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1
      F100C5C5C500FBFBFB00FBFBFB0070707000CCA37A00FFFFFF00E1C9B100CCA3
      7A00FFFFFF00E1C9B100CCA37A00FFFFFF00E1C9B100CCA37A00FFFFFF00E1C9
      B100CCA37A00FFFFFF00E1C9B100CCA37A0081818100D2D2D200E8E8E8007D7D
      7D007D7D7D007D7D7D007D7D7D007D7D7D007D7D7D007D7D7D007D7D7D007D7D
      7D007D7D7D00E8E8E800C4C4C4005656560096969600D1D1D100E7E7E7007C7C
      7C007C7C7C007C7C7C007C7C7C007C7C7C007C7C7C007C7C7C007C7C7C007C7C
      7C007C7C7C00E7E7E700C3C3C3006C6C6C0096969600D1D1D100E7E7E7007C7C
      7C007C7C7C007C7C7C007C7C7C007C7C7C007C7C7C007C7C7C007C7C7C007C7C
      7C007C7C7C00E7E7E700C3C3C3006C6C6C00E1C9B100CCA37A00FFFFFF00E1C9
      B100CCA37A00FFFFFF00E1C9B100CCA37A00FFFFFF00E1C9B100CCA37A00FFFF
      FF00E1C9B100CCA37A00FFFFFF00E1C9B100818181009A9A9A00CCCCCC00C78B
      4E00F9F4ED00FEE8D800FEE8D700FDE5D300FCE4D100FAE0C700F9DDC300FAF4
      ED00C7854A00C3C3C3007474740047474700DDDDDD0099999900CBCBCB00C68A
      4D00F8F3EC00FDE7D700FDE7D600FCE4D200FBE3D000F9DFC600F8DCC200F9F3
      EC00C6844900C2C2C20073737300CDCDCD00DDDDDD0099999900CBCBCB00C68A
      4D00F8F3EC00FDE7D700FDE7D600FCE4D200FBE3D000F9DFC600F8DCC200F9F3
      EC00C6844900C2C2C20073737300CDCDCD00FFFFFF00E1C9B100CCA37A00FFFF
      FF00E1C9B100CCA37A00FFFFFF00E1C9B100CCA37A00FFFFFF00E1C9B100CCA3
      7A00FFFFFF00E1C9B100CCA37A00FFFFFF00FFFFFF008181810081818100C589
      4C00F9F4EF00FEE7D700FDE7D500FCE6D200FBE1CC00F8DCC200F6DABD00FAF4
      EF00C48348005959590053535300FFFFFF00FFFFFF00CECECE0086868600C488
      4B00F8F3EE00FDE6D600FCE6D400FBE5D100FAE0CB00F7DBC100F5D9BC00F9F3
      EE00C382470060606000BCBCBC00FFFFFF00FFFFFF00CECECE0086868600C488
      4B00F8F3EE00FDE6D600FCE6D400FBE5D100FAE0CB00F7DBC100F5D9BC00F9F3
      EE00C382470060606000BCBCBC00FFFFFF00CCA37A00FFFFFF00E1C9B100CCA3
      7A00FFFFFF00E1C9B100CCA37A00FFFFFF00E1C9B100CCA37A00FFFFFF00E1C9
      B100CCA37A00FFFFFF00E1C9B100CCA37A00FFFFFF00FFFFFF0081818100C589
      4B00F9F4F000FCE6D300FDE7D300FBE3CD00FAE0C800F5D6BB00F3D4B500F8F4
      F000C382460060606000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FBFBFB00C58B
      4E00F8F3EF00FBE5D200FCE6D200FAE2CC00F9DFC700F4D5BA00F2D3B400F7F3
      EF00C3844900F9F9F900FFFFFF00FFFFFF00FFFFFF00FFFFFF00FBFBFB00C58B
      4E00F8F3EF00FBE5D200FCE6D200FAE2CC00F9DFC700F4D5BA00F2D3B400F7F3
      EF00C3844900F9F9F900FFFFFF00FFFFFF00E1C9B100CCA37A00FFFFFF00E1C9
      B100CCA37A00FFFFFF00E1C9B100CCA37A00FFFFFF00E1C9B100CCA37A00FFFF
      FF00E1C9B100CCA37A00FFFFFF00E1CAB200FFFFFF00FFFFFF00FFFFFF00C689
      4B00F9F5F100FCE3CF00FCE4CF00FAE1CA00F9DDC400F4E9DF00F7F2EC00F5EF
      E900C27E4500FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C78C
      5000F8F4F000FBE2CE00FBE3CE00F9E0C900F8DCC300F3E8DE00F6F1EB00F4EE
      E800C27F4700FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C78C
      5000F8F4F000FBE2CE00FBE3CE00F9E0C900F8DCC300F3E8DE00F6F1EB00F4EE
      E800C27F4700FFFFFF00FFFFFF00FFFFFF00FFFFFF00E1C9B100CCA37A00FFFF
      FF00E1C9B100CCA37A00FFFFFF00E1C9B100CCA37A00FFFFFF00E1C9B100CCA3
      7A00FFFFFF00E1C9B100CCA37A00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C689
      4C00F9F5F100FCE3CD00FBE3CD00F9E0C800F8DCC200FDFBF800FCE6CD00E2B6
      8400BF794200FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C78C
      5100F8F4F000FBE2CC00FAE2CC00F8DFC700F7DBC100FCFAF700FBE5CC00E1B5
      8300D5A78300FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C78C
      5100F8F4F000FBE2CC00FAE2CC00F8DFC700F7DBC100FCFAF700FBE5CC00E1B5
      8300D5A78300FFFFFF00FFFFFF00FFFFFF00CDA57C00FFFFFF00E1C9B100CCA3
      7A00FFFFFF00E1C9B100CCA37A00FFFFFF00E1C9B100CCA37A00FFFFFF00E1C9
      B100CCA37A00FFFFFF00E1CAB200D6B69500FFFFFF00FFFFFF00FFFFFF00C486
      4900F7F2EC00F8F4EE00F8F3ED00F8F3ED00F8F2EC00F2E6D700E2B27D00DA91
      6300B46B3E00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C487
      4C00F6F1EB00F7F3ED00F7F2EC00F7F2EC00F7F1EB00F1E5D600E1B17C00DA94
      6800FDFBFA00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C487
      4C00F6F1EB00F7F3ED00F7F2EC00F7F2EC00F7F1EB00F1E5D600E1B17C00DA94
      6800FDFBFA00FFFFFF00FFFFFF00FFFFFF00E7D5C100CEA88100FFFFFF00E1C9
      B100CCA37A00FFFFFF00E1C9B100CCA37A00FFFFFF00E1C9B100CCA37A00FFFF
      FF00E1C9B100CCA57C00FFFFFF00EFE2D500FFFFFF00FFFFFF00FFFFFF00C17D
      4400C88B4D00C88C4F00C88C4F00C88D4F00C98C4F00C5894C00C4763B00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00E7CE
      B800D6A97C00C78B4F00C78B4E00C9905400CA8F5400C4884C00DCAF8D00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00E7CE
      B800D6A97C00C78B4F00C78B4E00C9905400CA8F5400C4884C00DCAF8D00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00EBDBCA00CEA88100FFFF
      FF00E1C9B100CCA37A00FFFFFF00E1C9B100CCA37A00FFFFFF00E1C9B100CCA3
      7A00FFFFFF00E4CFB900E2CBB400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00C4DFEF005EA6D30057A2D200BDDAED00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00E2E2E200CBCBCB00C9C9
      C900C9C9C900C9C9C900C9C9C900C9C9C900C9C9C900C9C9C9006B967A00216F
      3D00186A3600216F3D0076A18600FFFFFF00FFFFFF00E2E2E200CBCBCB00C9C9
      C900C9C9C900C9C9C900C9C9C900C9C9C900C9C9C900C9C9C9007792C6001B55
      BA000442BB001852BA007796CE00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C7C7
      C7007B7B7B00757575007676760076767600767676007777770074747400A6A6
      A600FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00DCEDF60077B7DB002C8DC7008ECCEA006EB6E1003F8DC7006BACD700D5E7
      F300FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00CBCBCB00F8F8F800FBFB
      FB00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FBFBFB0085B09500278B520063B9
      8C0094D1B10063B98C00278B520080AD9100FFFFFF00CBCBCB00F8F8F800FBFB
      FB00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FBFBFB008AA8DE002765C9002076
      E5000478E9000063DC00054DBC0086A6DD00FFFFFF00FFFFFF00FFFFFF00B0B0
      B000C9C9C900C9C9C900C9C9C900C9C9C900CACACA00C9C9C900C8C8C8007070
      7000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00EEF6FB0095C9
      E4003E9BCD0081C3E400CBF3FE00C3EEFE008AD1F00089CDEF005EA3D6002E8B
      C60085BADD00E7F2F800FFFFFF00FFFFFF00FEFEFE00C9C9C900FBFBFB00FBFB
      FB00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FBFBFB0021703E0061B98A005FB9
      8600FEFEFE005FB8860066BB8E001F6F3C00FEFEFE00C9C9C900FBFBFB00FBFB
      FB00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FBFBFB001D58BF00629CF300177E
      FE000075F7000075ED000267E0001D58C000FFFFFF00FFFFFF00FFFFFF00ABAB
      AB00D2D2D200A9A9A900C7C7C700A9A9A900C4C4C400A9A9A900CDCDCD007C7C
      7C00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FAFDFE00B1D9EC0054AAD4007CBF
      DF00C6EDFB00CBF1FE00A7E7FE0093DFFD0040B9E60044B0E30089C9EE0081C0
      EA005296CF003D92C900A0C9E400F6FAFD00FEFEFE00C9C9C900FBFBFB00FBFB
      FB00FBFBFB00FBFBFB00FBFBFB00FAFAFA00FAFAFA00307A4B009BD3B500FEFE
      FE00FEFEFE00FEFEFE0094D1B100186A3600FEFEFE00C9C9C900FBFBFB00FBFB
      FB00FBFBFB00FBFBFB00FBFBFB00FAFAFA00FAFAFA000442BB00ADCCFD00FEFE
      FE00FEFEFE00FEFEFE00177EEE000442BB00FFFFFF00FFFFFF00FFFFFF00A9A9
      A900D4D4D400C2C2C200C1C1C100BFBFBF00BCBCBC00BCBCBC00CECECE007A7A
      7A00FFFFFF00FFFFFF00FFFFFF00FFFFFF0072BCDD0076BCDB00BEE4F500DAF5
      FE00C0EDFE00A4E4FE009EE2FE0093E0FD0045C0E90039B4E50036A9E10055AE
      E40086C5EC0073B2E300498FC90057A0D100FEFEFE00C9C9C900FBFBFB00FBFB
      FB00FBFBFB00FBFBFB00FAFAFA00FAFAFA00F9F9F900498A61008FD2B00091D5
      B000FEFEFE0064BB8B0066BB8E001F6F3C00FEFEFE00C9C9C900FBFBFB00FBFB
      FB00FBFBFB00FBFBFB00FAFAFA00FAFAFA00F9F9F900235BC1008CB4F5004C91
      FE001076FE002085FE003F89EA00235BC100FFFFFF00FFFFFF00FFFFFF00A6A6
      A600D5D5D500A2A2A200C1C1C1009F9F9F00BEBEBE009F9F9F00CECECE007676
      7600FFFFFF00FFFFFF00FFFFFF00FFFFFF0045A9D300E6FAFD00DCF5FE00C0EE
      FE00B6EAFE00AAE7FE00A3E3FE0095E0FD0047C5EA003FBCE8003CB3E50037A8
      E100319EDD006AB5E50082C3ED002987C500FEFEFE00C9C9C900FBFBFB00FBFB
      FB00FBFBFB00FBFBFB00FAFAFA00FAFAFA00FAFAFA00A4C3B00060AA800094D3
      B300B9E5CF0069BA8E002C8E560080AD9100FEFEFE00C9C9C900FBFBFB00FBFB
      FB00FBFBFB00FBFBFB00FAFAFA00FAFAFA00FAFAFA0092ADE0003C75D1008CB4
      F600B7D5FD0071A7F4002E6BC90092ADE000FFFFFF00FFFFFF00FFFFFF00A2A2
      A200D7D7D700C5C5C500C3C3C300C0C0C000BFBFBF00BDBDBD00CECECE007373
      7300FFFFFF00FFFFFF00FFFFFF00FFFFFF004EAED600E1F5FB00D3F2FE00C8EF
      FE00BDECFE00B2E9FE00ACE6FE007BD8FD0047C6EE0042C3E90042BDE7003EB4
      E50039AAE2003FA6E00082C4EB00328DC700FEFEFE00C9C9C900FBFBFB00FBFB
      FB00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FAFAFA00AAC7B5005F98
      74004E8D6500498960007DA18A00FEFEFE00FEFEFE00C9C9C900FBFBFB00FBFB
      FB00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FAFAFA0091ACDF002960
      C6000442BB001E59C0006B8AC000FEFEFE00FFFFFF00FFFFFF00FFFFFF009F9F
      9F00D9D9D9006EBD770075C47E009F9F9F00C1C1C1005D51D300CECECE006F6F
      6F00FFFFFF00FFFFFF00FFFFFF00FFFFFF0051B1D700E1F5FB00D6F3FE00CDF1
      FE00C7EEFE00B9EAFE0091DAFA0055C0F00047C1F8003ABCEF0046C4EB0044BC
      E80041B4E50046B0E50087C9ED003490C800FEFEFE00C9C9C900FBFBFB00FBFB
      FB00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FBFBFB00F9F9F900F8F8F800F5F5
      F500F5F5F500FBFBFB00C9C9C900FEFEFE00FEFEFE00C9C9C900FBFBFB00FBFB
      FB00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FBFBFB00F9F9F900F8F8F800F5F5
      F500F5F5F500FBFBFB00C9C9C900FEFEFE00FFFFFF00FFFFFF00FFFFFF009C9C
      9C00DBDBDB00CACACA00C8C8C800C5C5C500C3C3C300C0C0C000CFCFCF006C6C
      6C00FFFFFF00FFFFFF00FFFFFF00FFFFFF0053B4D700E1F5FC00D9F3FE00D4F2
      FE00BCEAFE0088D4F60068C8F4004BB3E8008CD9FA008BDBFE0047C3F80037B5
      EB0047BEE7004EBAE7008BCFEF003793C900FEFEFE00C9C9C900FBFBFB00FBFB
      FB00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FAFAFA00F7F7F700F5F5F500F2F2
      F200F1F1F100FBFBFB00C9C9C900FEFEFE00FEFEFE00C9C9C900FBFBFB00FBFB
      FB00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FAFAFA00F7F7F700F5F5F500F2F2
      F200F1F1F100FBFBFB00C9C9C900FEFEFE00FFFFFF00FFFFFF00FFFFFF009999
      9900DDDDDD00F69C2000F69D2000F59E1F00F59F2000F4A02000D5CCBC006868
      6800FFFFFF00FFFFFF00FFFFFF00FFFFFF0055B6D800E1F7FC00D3F2FE00AFE3
      F90085CEF0007ECFF40077CFF4004BB0E300AFE3F900B5E8FE009AE0FE0077D5
      FD003FBCF4003CB4E8008FD4F0003895CA00FEFEFE00C9C9C900FBFBFB00FBFB
      FB00FBFBFB00FBFBFB00FBFBFB00FAFAFA00F7F7F700F4F4F400F1F1F100EEEE
      EE00ECECEC00FBFBFB00C9C9C900FEFEFE00FEFEFE00C9C9C900FBFBFB00FBFB
      FB00FBFBFB00FBFBFB00FBFBFB00FAFAFA00F7F7F700F4F4F400F1F1F100EEEE
      EE00ECECEC00FBFBFB00C9C9C900FEFEFE00FFFFFF00FFFFFF00FFFFFF009595
      9500DFDFDF00F6991F00F6DAA200F5D9A200F5D9A400F4AE2F00D8CDBD006464
      6400FFFFFF00FFFFFF00FFFFFF00FFFFFF004FB4D800E0F7FD00CCEAF80091D1
      EC0083CBEA006EBEE40055B0DA003A93C700CDEBF900D8F4FE00B8E9FE0094DE
      FD0076D4FE00A4E3FE0083DBFA003193C900FEFEFE00C9C9C900FBFBFB00FAFA
      FA00FBFBFB00FBFBFB00FAFAFA00F7F7F700F4F4F400F0F0F000EBEBEB00E9E9
      E900E5E5E500FBFBFB00C9C9C900FEFEFE00FEFEFE00C9C9C900FBFBFB00FAFA
      FA00FBFBFB00FBFBFB00FAFAFA00F7F7F700F4F4F400F0F0F000EBEBEB00E9E9
      E900E5E5E500FBFBFB00C9C9C900FEFEFE00FFFFFF00FFFFFF00FFFFFF009393
      9300E4E4E400F7971E00F7D79C00F6D9A000F6D9A100F5AB2E00D8CEBD006060
      6000FFFFFF00FFFFFF00FFFFFF00FFFFFF0091D1E7004DB4D800A4D8EC00D1EA
      F400BDDDEC0094C8DD0088C2DA006FB7D50068B8DC008FD6F4007ECEF4009CDA
      F700A9E2F90083C9EB0050A5D40079B9DC00FEFEFE00C9C9C900FBFBFB00F8F8
      F800F8F8F800F8F8F800F6F6F600F5F5F500F1F1F100EAEAEA00FBFBFB00FBFB
      FB00FBFBFB00FBFBFB00C9C9C900FEFEFE00FEFEFE00C9C9C900FBFBFB00F8F8
      F800F8F8F800F8F8F800F6F6F600F5F5F500F1F1F100EAEAEA00FBFBFB00FBFB
      FB00FBFBFB00FBFBFB00C9C9C900FEFEFE00FFFFFF00FFFFFF00FFFFFF008F8F
      8F00E7E7E700F8941D00F6982600F7961D00F6961D00F19C2A00DAD4CB005C5C
      5C00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00CEEBF40078C6E1007DC5
      DF00D0EDF600F5FEFE00EFFDFE00CAECFA004FACD9008AD6F600A9E0F80094D5
      F10061B1DA0063B1D800C2E0F000FFFFFF00FEFEFE00C9C9C900FBFBFB00F6F6
      F600F8F8F800F6F6F600F6F6F600F2F2F200EFEFEF00E9E9E900FBFBFB00F5F5
      F500F3F3F300C4C4C400DFDFDF00FFFFFF00FEFEFE00C9C9C900FBFBFB00F6F6
      F600F8F8F800F6F6F600F6F6F600F2F2F200EFEFEF00E9E9E900FBFBFB00F5F5
      F500F3F3F300C4C4C400DFDFDF00FFFFFF00FFFFFF00FFFFFF00FFFFFF009191
      9100D8D8D800DFDFDF00E3E3E300E3E3E300E0E0E000DDDDDD00DBDBDB005858
      5800FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FCFEFE00B8E2
      F00064BEDD0091CEE400E5F7FB00E2F5FD00AEDCF100B1E3F60071BFE00055AE
      D600ACD7EB00F8FCFD00FFFFFF00FFFFFF00FFFFFF00C9C9C900FAFAFA00F3F3
      F300F4F4F400F4F4F400F4F4F400F0F0F000EEEEEE00E8E8E800FBFBFB00E6E6
      E600C2C2C200DFDFDF00FDFDFD00FFFFFF00FFFFFF00C9C9C900FAFAFA00F3F3
      F300F4F4F400F4F4F400F4F4F400F0F0F000EEEEEE00E8E8E800FBFBFB00E6E6
      E600C2C2C200DFDFDF00FDFDFD00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C5C5
      C500ABABAB00A1A1A10099999900979797009898980096969600B2B2B2005555
      5500FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00F0F9FC00A2D8EA0055B6D9009BD4E90087CBE6004DAFD60098D0E700ECF6
      FA00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00CCCCCC00F7F7F700FAFA
      FA00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FBFBFB00F7F7F700C2C2
      C200DFDFDF00FDFDFD00FFFFFF00FFFFFF00FFFFFF00CCCCCC00F7F7F700FAFA
      FA00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FBFBFB00F7F7F700C2C2
      C200DFDFDF00FDFDFD00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00929292005151
      5100FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00E1F2F80083C9E40079C4E100DCEFF700FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00E3E3E300CCCCCC00C9C9
      C900C9C9C900C9C9C900C9C9C900C9C9C900C9C9C900C9C9C900C9C9C900DFDF
      DF00FDFDFD00FFFFFF00FFFFFF00FFFFFF00FFFFFF00E3E3E300CCCCCC00C9C9
      C900C9C9C900C9C9C900C9C9C900C9C9C900C9C9C900C9C9C900C9C9C900DFDF
      DF00FDFDFD00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00949494008787
      8700FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0060A664005BA2
      5F00569F5A00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF001D57C4000345
      B9000442BC000345B9000345B800FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00F8F8F800E9E9E900FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF002A8BC6002889C5002687C5002485C400FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF006AAE6E0065AA690060A6
      65006BAE6F004C975000529C56004E995200FFFFFF001A57C3002564C9002177
      E6000579EA000164DD00044DBD000345B800FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00576B6D00CFCF
      CF00FBFBFB00FFFFFF00FFFFFF00FFFFFF00FFFFFF00F4F4F40087878800E8E8
      E800FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF003093CA002E90C9002C8EC8008FCDEB006FB7E200408EC8002485C4002383
      C300FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF006FB274007CBB8100B7DE
      BB0067AC6C0075B67A004E985100539C57004F9953000345B900639DF400187F
      FF000076F8000076EE000368E1000345B900FFFFFF00FFFFFF004CA2E900459D
      E7003D99E6003494E5001D8BE1001F8BE100208CE3001888E2001182E2000980
      E000027CDF000078DE00FFFFFF00FFFFFF00FFFFFF00FFFFFF00CECDCD00CDA7
      870082847D0093939400A8A4A4008A6E590053636600D5D6D600FFFFFF00ADAD
      FD00FBFBFB00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00369ACD003498
      CC003295CB0082C4E500CCF4FF00C4EFFF008BD2F1008ACEF0005FA4D7002586
      C4002384C3002182C200FFFFFF00FFFFFF00FFFFFF0075B67A009CCDA0006FB2
      73008DC79200AADCAF0076B67B00519B550077B77B000442BC00AECDFE00FFFF
      FF00FFFFFF00FFFFFF00187FEF000442BC00FFFFFF00FFFFFF0054A6EA00B5E5
      F80094D0F0004AA6E70059AEEA007CC1ED00BAEDFA00B9EDF800B6ECF800B2EC
      F800B1ECF800007CE100FFFFFF00FFFFFF00FFFFFF00FFFFFF00ECECEC00CCAA
      8E00D1B09300D6B39800D7B49900D8B99D00DBB89E00D8BAA000EDEEEE00D2CF
      D000A3A3A300F4F4F400FFFFFF00FFFFFF003DA2D00077BDDC00399DCE007DC0
      E000C7EEFC00CCF2FF00A8E8FF0094E1FE0041BAE70045B1E4008ACAEF0082C1
      EB005397D0002384C3002282C2002080C2007FBE84007BBB800077B77C0091CB
      9700ABDEB1009CD7A200AADDB00077B77C0060AC65001A58B8008DB5F6004D92
      FF001177FF002186FF00408AEB000344B900FFFFFF00FFFFFF005CAAEA00B3E2
      F700319EE5003AAAE800A7E8F7004DB9EA0059D5F2004FD3F20047D1F10041D0
      F100B3ECF8000780E200FFFFFF00FFFFFF00FFFFFF00F5F5F500FEFEFE00D6B7
      9D00D6B59D00D6B59C00D8B7A000DABDA400DDC0A800E0C4AB0096898600BAAD
      A9008C7C7100F9F9F900FFFFFF00FFFFFF0040A5D20077BDDC00BFE5F600DBF6
      FF00C1EEFF00A5E5FF009FE3FF0094E1FE0046C1EA003AB5E60037AAE20056AF
      E50087C6ED0074B3E4004A90CA002283C3007FBD84007FBD840097CE9C00ADDF
      B3006FB3740096D59D009DD8A300AADDB00078B87C004B8C9A003B76D1008DB5
      F700B8D6FE0072A8F5002D6BCA001153A100FFFFFF00FFFFFF005CABEB0054AC
      EA0046AEEA00ABE8F800ACE9F90055BAEA0061D8F30059D5F2004FD3F20048D1
      F200B6ECF8001084E300FFFFFF00FFFFFF00FFFFFF007A82820080918100D5B7
      9E00D7BAA100DBBDA600DFC3AC00E1C6AE00E1C6B000E3C8B100BCAA9A00C5B5
      B40025252500E3E3E300FFFFFF00FFFFFF0042A8D300E7FBFE00DDF6FF00C1EF
      FF00B7EBFF00B3EAFF00A4E4FF0096E1FE0048C6EB0040BDE9003DB4E60038A9
      E200329FDE006BB6E60083C4EE002485C4007BBB80008EC89300AFDFB500A1DA
      A70098D79F0097D69E007EC0830082C18700ABDDB00079B97D0043869300235F
      C1000543BC001857BA002B72830045924900FFFFFF00FFFFFF005DACEA0082C2
      EF00D2F2FB00D0F2FB00B1ECF9005ABBEC006BD9F30061D8F30059D5F20050D3
      F200B9EDFA001989E400FFFFFF00FFFFFF00FFFFFF00AD8E7700DBBFA800DDC2
      AB00DBBFA900DBC0AB00DDBFA900DFC4AE00E2C8B000E5CCB400E7CEB900A394
      9200BDB0AD00C6C5C500FFFFFF00FFFFFF0044AAD400E2F6FC00D4F3FF00C9F0
      FF00BEEDFF00B3EAFF00ADE7FF007CD9FE0048C7EF0043C4EA0043BEE8003FB5
      E6003AABE30040A7E10083C5EC002687C5008DC993007DBB82008FC89400B0E0
      B600A2DAA8007FC18500A4D0A700DDEEDF0080B88300ABDEB1007AB97F00569F
      5A00C4E7C80078B87C004E995200FFFFFF00FFFFFF00FFFFFF0070B5ED009DD0
      F30077C9EF0071C6EF006DC5EF005FBDEC0075DCF4006BDAF30063D8F3005AD5
      F200BDEEFA00228EE700FFFFFF00FFFFFF00FFFFFF00CACACA00DBC3AD00DAC0
      AB00DBC2AC00DFC5AF00E4C8B200E5CBB500E5CAB600E5CCB600E6CCB800D7C1
      AE00AE9F9F00B1AAA500FBFBFB00FFFFFF0047ADD500E2F6FC00D7F4FF00CEF2
      FF00C8EFFF00BAEBFF0092DBFB0056C1F10048C2F9003BBDF00047C5EC0045BD
      E90042B5E60047B1E60088CAEE00288AC600FFFFFF008EC993007DBC820090C9
      9500B0E0B60085C28A00F7FCF80095C29700DDEEDF0082C28700ABDEB1007BBA
      7F0058A05C0059A15D00539C5700FFFFFF00FFFFFF00FFFFFF0078B8EF00DAF5
      FB009BE6F70094E4F7008EE2F60085E0F6007DDEF40075DCF4006CDAF30063D8
      F300BFEFFA002B93E800FFFFFF00FFFFFF00FFFFFF00CFCFCF00E0CAB600E5CB
      B900E3CBB700E1C8B500E0C6B300E0C8B600E5CCB700E8D0BB00E9D1BC00D3C3
      B300918281003F3F3F00EAEAEA00FFFFFF0049B0D600E2F6FD00DAF4FF00D5F3
      FF00BDEBFF0089D5F70069C9F5004CB4E9008DDAFB008CDCFF0048C4F90038B6
      EC0048BFE8004FBBE8008CD0F0002B8DC700FFFFFF00FFFFFF00FFFFFF007EBD
      830091CA9600B1E0B600D9F3DD00F7FCF800A4D0A7007EC084009FD9A500ACDE
      B2007BBB8000569F5A00FFFFFF00FFFFFF00FFFFFF00FFFFFF008BC4F300DCF6
      FC00A1E7F7009CE6F70094E4F7008EE2F60086E0F6007EDEF50076DCF4006CDA
      F300C3EFFA003697E900FFFFFF00FFFFFF00FFFFFF00C2C1C200E1CAB900E1CA
      B800E1CBB800E5CDBA00E7D0BC00E8D1BD00E8D1BD00E7D0BB00E5CDBB00D9D9
      DA00FCFAF900AA9E9A00CCCCCC00FFFFFF004BB2D700E2F8FD00D4F3FF00B0E4
      FA0086CFF1007FD0F50078D0F5004CB1E400B0E4FA00B6E9FF009BE1FF0078D6
      FE0040BDF5003DB5E90090D5F1002D8FC800FFFFFF00FFFFFF00FFFFFF00FFFF
      FF007FBE850092CB9700B1E1B60085C38A0080C1850099D7A00098D79F009FD9
      A500ACDFB2007DBB810058A05C00FFFFFF00FFFFFF00FFFFFF0092C7F400E0F6
      FC00A9E9F800A2E7F8009CE6F70095E4F7008FE2F60087E0F6007FDEF50076DC
      F400C7F0FA003F9DEA00FFFFFF00FFFFFF00F2F2F200F4EEE800F4E9E100E8D2
      C300E8D3C300E7D1C000E4D0BD00E5CEBC00EAD1BF00EAD2C000E5CFBD00F3F3
      F400FFFFFF00817C7A00BFB8B300FCFCFC004DB4D800E1F8FE00CDEBF90092D2
      ED0084CCEB006FBFE50056B1DB003B94C800CEECFA00D9F5FF00B9EAFF0095DF
      FE0077D5FF00A5E4FF0084DCFB002F92C900FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0081BF860093CC9800B1E1B700A3DBA9009BD8A20073B47700AFDF
      B40087C38C0065AA69005DA46100FFFFFF00FFFFFF00FFFFFF0096CBF500F8FC
      FE00EFFAFD00EFFAFD00EFFBFD00EDFAFC00EEFAFC00EEFAFC00EFFAFC00EFFA
      FC00F6FCFD0049A2EC00FFFFFF00FFFFFF00777F7D00F7F1EC00F4EDE600F1E8
      DD00EFE4DB00E8D4C500EBD6C600EDD6C600E9D6C400E9D4C300D8C4B300FEFE
      FE00FFFFFF00FFFEFE00514F5000F0F0F0004FB7D9004DB5D900A5D9ED00D2EB
      F500BEDEED0095C9DE0089C3DB0070B8D60069B9DD0090D7F5007FCFF5009DDB
      F800AAE3FA0084CAEC0051A6D5003295CB00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0082C0870094CC9900B2E2B700A3DCAA00B0E0B6008CC6
      92006EB1730066AB6B00FFFFFF00FFFFFF00FFFFFF00FFFFFF00B1DBFC00F9FD
      FE00F9FDFE00F9FDFE00F9FDFE00F9FDFE00F9FCFD00F9FCFE00F9FDFE00F9FD
      FE00F9FCFE0052A7ED00FFFFFF00FFFFFF00A4917C00F8F2EC00F6EDE700F5EC
      E400F4E7DE00F0E2D600ECDCCF00E9D5C300EAD6C600EBD8C8009EA49900FFFF
      FF00FFFFFF00FFFFFF00E3D8D000E9E9E900FFFFFF004FB7D9004EB5D9007EC6
      E000D1EEF700F6FFFF00F0FEFF00CBEDFB0050ADDA008BD7F700AAE1F90095D6
      F20062B2DB00399DCE00369ACD00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF0083C1880094CD9A00B3E2B70093CB980077B7
      7C0070B27400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00B5DEFD00A1D1
      F9009BD0F80096CCF70091C9F6008BC5F50084C1F4007DBEF30075B9F3006DB5
      F00064B1EF005CACEF00FFFFFF00FFFFFF00B8B8B800FAF3EF00F6EFEA00F2EA
      E300F2E7DC00F0E3D900F1E2D600F0DED100EBDACC00E7D5C500D0D0D000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FDFDFC00FFFFFF00FFFFFF004FB7DA004EB6
      D9004CB4D80092CFE500E6F8FC00E3F6FE00AFDDF200B2E4F70072C0E1003FA4
      D1003DA2D0003BA0CF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0084C28A0096CD9B0080BE850079B9
      7E00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00AEAEAE007D7D7D00CACACA00D1D1
      D100A3A3A300E7E7E700BAC2AA00E3D7CB00DFE2DF00DCD9DC00F5F5F500FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF004EB6D9004DB4D8004BB2D7009CD5EA0088CCE70045ACD50044AAD40042A7
      D300FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0086C38B0082C08700FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00C2C2C200B9B9B9005555550069696900FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF004DB4D8004BB2D8004AB0D70048AED600FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00174259002A6188004B89BD006FA8CC00E3EDF500FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00359CD8003098D7002B93
      D600278FD500228BD4001D87D3001983D200147FD100107BD0000D78D0000975
      CF000672CE00036FCE00006DCD00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00E0EEE1007BB4
      7E00CDE2CE00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00DAB69F00CFA18500C083
      5E002C64810093C6F80090C8F8004084C8002264A50092716200A76E4D00A66D
      4C00A56E4D00A8755600BA8F7500FFFFFF00FFFFFF003CA2D900BBEAF900BBEA
      FB00BEEDFD00C5F3FE00CDF7FE00D2F9FE00CFF7FE00C6F1FE00B9E8FB00B2E3
      F800AFE1F700AFE1F7000470CE00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FCFD
      FE00E7EEF400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FCFDFC0095C4970060A6
      65006AAD6E004E985200DCEBDC00E7F1E800FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C7906A00FEFEFE00FEFE
      FE004288A900DFF1FE005399D7001979BD004897C400488EC600DBE9F600FEFE
      FE00FEFEFE00FEFEFE00AB775900FFFFFF00FFFFFF0042A7DA00BEEBFA0058CE
      F40040AFEB004DB9EE0059C1EE005FC5EE005BC3EE004BB5EE0036A4E5002999
      E00037B7ED00B0E2F7000874CF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FAFBFD006494
      BA0021669C0080A8C500FFFFFF00FFFFFF00FFFFFF00E9F3EA007DBB8100B6DD
      BA0066AB6B0074B579004E97510082B78500AACEAC00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C1815800FEFEFE00AE66
      2B007465560079B5D4008FB6D00054C8E3005ADEF40077CFEC004F9AD900D6D8
      DC00EFE4DD00FEFEFE00A66F4E00FFFFFF00FFFFFF0048ACDB00C0EDFA005ED2
      F6006BDAFB007EE4FE008EECFE0096F1FE0092ECFE007BDEFE005ACBF70045BD
      EE003BB9ED00B2E2F8000D78D000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FAFCFD006E9BC100548C
      BB0088B4DC00175E9600FFFFFF00FFFFFF00FFFFFF00ABD2AE009BCC9F006EB1
      72008CC69100A9DBAE0075B57A00509A540076B67A0066A76900D0E4D100E1ED
      E200FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C3855900FEFEFE00AE66
      2B00CC9E73007C6D570075B9D600C1F5FC0062DEF6005CE1F70078D2EF004897
      DB00D8D9DC00FEFEFE00A7704E00FFFFFF00FFFFFF004DB1DC00C2EEFA0064D5
      F7004BB5EB0059BCEE0094EAFE002F96DC004C81AA0083E0FE0040A8E800319E
      E00041BDEE00B3E4F800127DD100FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FBFCFD007AA3C9006396C4009CC0
      E3006598C6003070A400FFFFFF00FFFFFF00F2F9F3007ABA7F0076B67B0090CA
      9600AADDB0009BD6A100A9DCAF0076B67B005FAB6400ADD7B1008AC390007CB3
      7F0096C29900E6F0E600FFFFFF00FFFFFF00FFFFFF00C4855A00FEFEFE00AE66
      2B00CC9F7400AC632A00B0D5E60076CAE600C6F6FC005DDBF40059E0F6007AD3
      F0004A98DB00D5E7F600AB714F00FFFFFF00FFFFFF0052B6DD00C5EFFB0069D8
      F7007BE1FC008FE7FE0098E8FE00319EDE00538AB10089E1FE0069CFF8004FC4
      F00045C0EF00B5E6F8001782D200FFFFFF00FFFFFF00FFFFFF00FFFEFE00E8CE
      B900DAB29200D2A57F00CFA07B00D1A68400ADA0980074A1CB00AACAE70075A3
      CD003F7AAE00DEE8F100FFFFFF00FFFFFF00AED5B1007EBC830096CD9B00ACDE
      B2006EB2730095D49C009CD7A200A9DCAF0077B77B0071B97500C2E6C700B1D9
      B4006CB97100559D5800ABCDAC00DAE9DA00FFFFFF00C6875900FEFEFE00B36D
      3200CFA47D00B16B2D00FEFEFE00B4D5DC0078D2ED00C6F6FC005EDBF4005AE1
      F60079D5F10050A1E1009C796700FFFFFF00FFFFFF0057BADE00C6F0FB006EDB
      F80055BAEC0060BCEE009AE6FE0034A5E1004AA3E0008FE1FE0048ACE80037A3
      E20048C3EF00B7E7F8001D87D300FFFFFF00FFFFFF00FFFEFE00E8C9AF00E7C8
      FD00F4E0CC00F6E4D200F6E4D000F2DCC700DEB99B00C6A7900085ADD4004F86
      BA00E1EAF300FFFFFF00FFFFFF00FFFFFF007ABA7F008DC79200AEDEB400A0D9
      A60097D69E0096D59D007DBF820081C08600AADCAF0078B87C0062AD6600C3E6
      C700C0E3C300B8DFBD004E995200F3F8F300FFFFFF00C7895A00FEFEFE00B675
      3F00D0A58200B5723700FEFEFE00EFE4DD00BADEE8007CD3ED00C3F5FC006BDC
      F5006CC9EC0062A2D6006397C800E5EFF700FFFFFF005BBEDF00C7F2FB0074DE
      F80088E5FC0094E6FE0099E4FE00A9EDFE00A7ECFE0098E2FE0073D4F80058CB
      F2004EC7F000BAE8F900238CD400FFFFFF00FFFFFF00F1DBC700ECCFB600F7E7
      D800F4DDC700F2D7BC00F2D5BA00F3DAC100F6E3D100DEBA9C009F969400E3EC
      F500FFFFFF00FFFFFF00FFFFFF00FFFFFF00C7E4CA007CBA81008EC79300AFDF
      B500A1D9A7007EC08400A3CFA600DCEDDE007FB78200AADDB00079B87E00559E
      5900C3E6C70077B77B00A3CAA500FFFFFF00FFFFFF00C98B5B00FEFEFE00BB7E
      5300B97C4B00B97B4900FEFEFE00EFE4DD00EFE4DD00AAD4DE0080D4ED00B1E2
      F8008ABFE600ADD2F500C3DFFB006AA1D300FFFFFF005FC1E000C8F2FB00CAF2
      FC00D3F5FD00D6F5FE00D7F3FE00DFF7FE00DEF7FE00D9F4FE00CCF0FB00C1EC
      F900BCEAF900BCEAF9002A92D500FFFFFF00FFFFFF00EDCDB100F6E6D600F5E0
      CB00F3DAC100F3D9BF00F2D7BC00F2D6BA00F3DAC100F2DDC800D1A78700FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00EEF7EF007FBC83008FC8
      9400AFDFB50084C18900F6FBF70094C19600DCEDDE0081C18600AADDB0007AB9
      7E00579F5B0058A05C00FCFDFC00FFFFFF00FFFFFF00CA8D5D00FEFEFE00FEFE
      FE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00B0E5F40076BD
      E600B3D1EF00E4F2FE00ABD1EE005895CB00FFFFFF0060C2E000879FA7009090
      90008D8D8D0059B8DB0054B7DE0050B4DD004CB0DC0048ACDB0045A7D6007777
      770075757500647D8C003098D700FFFFFF00FFFFFF00EFCDAE00F8EBDE00F4DE
      C700F4DCC500F3DBC200F3D9C000F2D8BD00F2D6BC00F7E5D200D2A57F00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0082BE
      860090C99500B0DFB500D8F2DC00F6FBF700A3CFA6007DBF83009ED8A400ABDD
      B1007ABA7F0058A05C00FFFFFF00FFFFFF00FFFFFF00CC916000FEFEFE00ECC3
      9A00ECC39A00ECC39A00ECC39A00ECC39A00ECC39A00ECC39A00ECC39A00AFBC
      B00057A4D70084B0DA00459CCF00B0D8EE00FFFFFF00FFFFFF00B0B0B000C5C5
      C50093939300FBFBFB00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FBFBFB007C7C
      7C00AAAAAA0095959500FFFFFF00FFFFFF00FFFFFF00F3D2B400F8ECE000F5E0
      CB00F4DEC800F4DDC600F3DBC300F3DAC100F3D9BF00F7E6D500D6AA8600FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0083C0890091CA9600B0E0B50084C289007FC0840098D69F0097D69E009ED8
      A400ABDEB1007CBA80005DA26100FFFFFF00FFFFFF00CF976700FEFEFE00ECC3
      9B00F3D9C000F3D9C000F3DAC100F3DAC100F3DAC100F3DAC100F3DAC100F3DA
      C100ECC39A00FEFEFE00C0835800FFFFFF00FFFFFF00FFFFFF00BBBBBB00C3C3
      C300A0A0A000EDEDED00FFFFFF00FFFFFF00FFFFFF00FFFFFF00EBEBEB008888
      8800A8A8A800A3A3A300FFFFFF00FFFFFF00FFFFFF00F7DBC000F8EADD00F6E6
      D500F5E0CB00F4DFC900F4DDC700F4DCC400F5E0CA00F4E1CF00DEB89800FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0085C18A0092CB9700B0E0B600A2DAA8009AD7A10072B37600AEDE
      B30086C28B0064A96800F6FAF600FFFFFF00FFFFFF00D5A37700FEFEFE00ECC3
      9B00ECC39B00ECC39B00ECC39A00ECC39A00ECC39A00ECC39A00ECC39A00ECC3
      9A00ECC39A00FEFEFE00C78E6400FFFFFF00FFFFFF00FFFFFF00D3D3D300B9B9
      B900BEBEBE00A5A5A500F2F2F200FDFDFD00FDFDFD00F1F1F10092929200A7A7
      A7009D9D9D00C3C3C300FFFFFF00FFFFFF00FFFFFF00FBE9D700F7E1CB00F9ED
      E200F6E6D500F5E1CD00F5E0CA00F5E2CF00F8E9DC00EBCEB400EBD3BE00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0086C28B0093CB9800B1E1B600A2DBA900AFDFB5008BC5
      91006DB07200F7FAF700FFFFFF00FFFFFF00FFFFFF00E1BD9D00FEFEFE00FEFE
      FE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFE
      FE00FEFEFE00FEFEFE00D5A98800FFFFFF00FFFFFF00FFFFFF00FBFBFB00ADAD
      FD00C3C3C300BDBDBD00A0A0A000959595009292920096969600ADADAD00ADAD
      FD0095959500FBFBFB00FFFFFF00FFFFFF00FFFFFF00FFFFFE00FAE3CD00F8E1
      CC00F9EBDD00F8EDE100F8ECE100F7E8D900EFD4BC00ECCFB600FFFEFE00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF0087C28C0093CC9900B2E1B60092CA970076B6
      7B00F7FBF700FFFFFF00FFFFFF00FFFFFF00FFFFFF00E9CFB800E3C1A400D7A8
      7E00CD925E00CC925F00CC915E00CB8F5E00CC916000CC926200CA906000CD94
      6800D4A78300D7AD8A00D6AB8A00FFFFFF00FFFFFF00FFFFFF00FFFFFF00EEEE
      EE00ADADAD00BBBBBB00C9C9C900CBCBCB00C9C9C900C1C1C100ACACAC009A9A
      9A00E9E9E900FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FBEA
      D900F9DCC200F5D5B800F3D2B400F2D3B700F4E0CD00FFFFFE00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0088C38E0095CC9A007FBD8400F8FB
      F800FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FBFBFB00D0D0D000B9B9B900B0B0B000ADADAD00B2B2B200C8C8C800FAFA
      FA00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF008AC48F00F8FBF800FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF003E9DCA003696D1003390CC00328B
      CB003B95C200FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF004AA0D5004298CF004092
      CE0097C6DE00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00F1E7E300CAAA9B00A16A50008F573D008D563D0099685100C5A99B00EEE7
      E300FFFFFF00FFFFFF00FFFFFF00FFFFFF0042ACE100C4EBF7007FE1F6009FE6
      F700328AC9003A90BA00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0066BBE600C3EAF6007EE0F5009EE5
      F6003E90CB008EBFD700FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00DFC8
      BD00A2654700B17F5600D4B69200DAC2A500D9C2A500D1B38F00AA795100915F
      4700D8C6BD00FFFFFF00FFFFFF00FFFFFF0044B0E300C6F4FB0043D6F10048DB
      F50082E1F5003188C800398DB700FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0043AFE200C5F3FA0042D5F00047DA
      F40081E0F4003C8ECA0088BAD300FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0045964D00409048003B89420037823D00327C38002E76330029702E00256A
      2A00226526001F6122001C5D1F00195A1D00FFFFFF00FFFFFF00E2CCBD00A25B
      3B00CAA67C00D7BA9E00C29B7600B5896100B3855F00BD957100D0B29600C4A2
      760088563D00D8C6BD00FFFFFF00FFFFFF0044B0E300BBEFFA0039D1F10028C5
      EE004EDCF60085E2F700328BCA00398BB500FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF004DB3E300BAEEF90038D0F00027C4
      ED004DDBF50084E1F6003F92CD0086B8D100FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF004B9E53007DB783007AB2800078AE7D0076AB7B0074A7780074A4770073A1
      760073A07600739E7600729C74001C5E2000FFFFFF00F4ECE400B3774900CEA9
      8000D9BBA100BD906500B98B6100B6885E00B2835D00B0825C00AF825B00CCA9
      8C00C5A4780094614800EFE8E400FFFFFF0044B0E300F0FCFE00B0EEFA0043D8
      F40028C8EE0041D7F40089E2F700328BCB003888B200FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0043AFE200EFFBFD00AFEDF90042D7
      F30027C7ED0040D6F30088E1F6004092CE007FB2CD00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF008CBE910089BA
      8E0050A65A005CA56300579E5D00549A5A00509456004D8F520049894E004685
      4A0043804700407C4400709D730020632400FFFFFF00DBBC9B00BE905D00DFC1
      A700C4956B00C1906800E0CAB700FDFCFB00FEFEFD00E9DBCF00B3845D00B284
      5D00D3B49800AD7A5500C7A99B00FFFFFF0044B0E30044B0E30044B0E300ABEA
      F9004ED8F3002BC9EF003DD6F3008AE1F700328ACA003383B800297DD6002C85
      D800368EC100FFFFFF00FFFFFF00FFFFFF0090D0EE0043AFE20043AFE200AAE9
      F8004DD7F2002AC8EE003CD5F20089E0F6003F91CD004E93C100287CD5002B84
      D7005EA4CD00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF008FC39400C4DE
      C60056AE60006FB5770069AE710064A86A0060A265005A9B5F0056965B005391
      5800508D5500428147006F9E720024692900FFFFFF00C58F5100DABB9B00D4AC
      8800C6976B00C2946800C0926600ECDED200F9F6F300BA8A6200B8896200B789
      6100C49C7700D1B792009F695100FFFFFF00FFFFFF00FFFFFF0044B0E300F1FC
      FE00BBF1FB007BE4F60028D2F00037D4F50083E0F6003EA9E300A0F3FC00A9F5
      FC002B82D700358BBF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0043AFE200F0FB
      FD00BAF0FA007AE3F50027D1EF0036D3F40082DFF5003DA8E2009FF2FB00A8F4
      FB002A81D6005AA0CA00FFFFFF00FFFFFF00CDE3CF00CBE1CD007FBC8600A3CB
      A7005BB565006DB5750067AF6F0061A968005BA36200579D5D00529758004E91
      54005492590047874C0070A1730029702E00FFFFFF00C0823B00E2C6AE00CFA1
      7500C4986A00C3966900C3956800EDDFD300FAF6F300BE8F6500BD8E6400BD8E
      6300BD916800DEC5A90095553A00FFFFFF00FFFFFF00FFFFFF0044B0E30044B0
      E30045B2E30076C5EA00ACEEFA0039D6F2004DDBF50065E4F7003CCEF20032C9
      EF0085EFFB002B81D7003588BB00FFFFFF00FFFFFF00FFFFFF0090D0EE0043AF
      E20044B1E20075C4E900ABEDF90038D5F1004CDAF40064E3F6003BCDF10031C8
      EE0084EEFA002A80D600569BC600FFFFFF00CEE5D000F3F9F40092CA9800C6E2
      C9005FBB6A0086C58D007CBE840074B87B006CB1740067AB6D0060A467005498
      5B005A9A5F004B8D500071A576002F773400FFFFFF00C6884100E3C8AF00CFA2
      7900CB9C7000C6996B00C4976A00FEFEFE00FEFEFD00C2956800C0936700C193
      6700C2976C00DEC4AA0098583A00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0044B0E30044B0E3006FC4EA0080E5F7003DD1F1005DDBF50069DFF60050D7
      F30034CDEF0085EFFB00297FD6003486BA00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FEFEFF0090D0EE006EC3E9007FE4F6003CD0F0005CDAF40068DEF5004FD6
      F20033CCEE0084EEFA00287ED5005298C400D0E7D200F5FAF60096CF9C00CEE7
      D00063C06E0099D1A0008FC9960084C28B007BBB820073B57A006DAE73005DA1
      630062A468005094560074AA7900347F3A00FFFFFF00D19D5B00DFBB9E00DAB2
      9200CE9F7400CC9D7100CA9B7000DCBEA200DCBEA100C4986A00C4986A00C397
      6A00D0AA8400D7B99600AB6D5100FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0044B0E300D5F7FC0089E7F8007EE4F7007EE4F7007EE4F70082E5
      F70047D6F20038CEF000AEF5FC00297CD600FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0043AFE200D4F6FB0088E6F7007DE3F6007DE3F6007DE3F60081E4
      F60046D5F10037CDEF00ADF4FB00287BD500D1E9D400F6FBF70098D39F00D3EA
      D50066C57200B1DBB500A5D5AB009CCFA1008FC8950085C18B007BBA820067AB
      6F006FAD7500579B5D007AB17F003A874100FFFFFF00E6C8A400CC9B6700E6CA
      B300D3A47900CF9F7600CE9D7300FAF7F400FAF7F400CA9D7000CA9C7000CCA0
      7600DEBFA400B8895A00D2AE9A00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0044B0E300BEF2FB007EE4F7007EE4F70081E5F70094E9F800BCF1
      FB008BDAF30049DDF500C1F8FD003090DA00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0043AFE200BDF1FA007DE3F6007DE3F60080E4F60093E8F700BBF0
      FA008AD9F20048DCF400C0F7FC002F8FD900D3EBD500F8FCF8009BD6A200D8EE
      DB007DCE88007DCD86007AC9840076C5800072C27C006FBD78006CB8740061AE
      690065AE6C0055A15D006BAB710067A76D00FFFFFF00F9F0E700D2995900D8B1
      8B00E5C9B200D5A87C00D0A47800E1C3A700E0C2A700CFA17500D0A37600DCBC
      A100CFAB8400B3754900F3EAE400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0044B0E300DEF8FC008DE7F8007EE4F70094E9F800BCE9F80044B0
      E30042ACE300EEFCFE003298DD003995C800FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0043AFE200DDF7FB008CE6F7007DE3F60093E8F700BBE8F70043AF
      E20041ABE200EDFBFD003197DC006AAFD500D4EDD700F9FCF9009EDAA500DEF1
      E000DBEFDD00D6ECD900D4EBD600D0E8D300CCE5CF00C9E2CC00C5DFC800A2C6
      A400C7DEC90085B58900FFFFFF00FFFFFF00FFFFFF00FFFFFF00F1DCC500D091
      4E00D8B18B00E5CCB700DFB99C00D6AA8400D5A88100D8B29000E0C1AA00D3AD
      8500B3703D00E5D0BD00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0044B0E30044B0E300CEF5FC008DE7F800A1ECF90044B0E30044B0
      E300FFFFFF0039A1DF003995C800FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0090D0EE0043AFE200CDF4FB008CE6F700A0EBF80043AFE20043AF
      E200FEFEFE0038A0DE006AAFD500FFFFFF00D5EED800F9FDFA00B2E2B800B2E1
      B700B0DFB600AEDDB500ADDBB300ABD9B000A9D6AE00A7D3AB00A5D0A9008ABD
      8F00A3CBA700A1C8A500FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00F1DD
      C500D59B5A00CF9F6900DFBE9F00E2C4AD00E2C4AD00DEBB9E00C7966100C389
      4800E9D5BD00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0044B0E30044B0E300CEF5FC009EEBF900BEF2FB00FEFF
      FF0044B0E30042ABDF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0090D0EE0043AFE200CDF4FB009DEAF800BDF1FA00FDFE
      FE0043AFE2008BCBEB00FFFFFF00FFFFFF00D6EFD900FAFDFA00FAFDFA00FAFD
      FA00FAFDFA00FAFCFA00FAFCFA00F9FCFA00F9FCFA00F9FCF900F9FBF900CADF
      CC00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FAF1E700E9CBA700D7A16400CE904D00CC904900D09B5A00E3C6A100F7EE
      E400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF0044B0E30044B0E300DEF8FC00DEF8FC0044B0
      E30044B0E300FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF0090D0EE0043AFE200DDF7FB00DDF7FB0043AF
      E20090D0EE00FFFFFF00FFFFFF00FFFFFF00DEF3E100DEF2E100DEF2E000DDF1
      E000DCF0DF00DCEFDE00DBEEDD00DAECDC00D9EBDB00D8EADA00D7E8D900D6E7
      D800FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0044B0E30044B0E30044B0E30044B0
      E300FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0090D0EE0043AFE20043AFE20090D0
      EE00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0067A3D9005282B600A4553700FFBA
      6600D27E4100D37E4100D17C4100CD7A3F00A948230064749300727272005C5C
      5C00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF003F91DF007185AC00C87E5900FFBA
      6600FFB76100FFB05E00FFB25D00B69976006969690083757D00A2A2A2008B8B
      8B00656565005D5D5D0059595900FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00F4ECE500D6B9A100B5835900AB734400AA714200B17D5200D2B49B00F2EA
      E300FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00F4ECE500D6B9A100B5835900AB734400AA714200B17D5200D2B49B00F2EA
      E300FFFFFF00FFFFFF00FFFFFF00FFFFFF0079B88000569D5D00619B65004577
      490058745A007B7B7B0086868600888888008A8A8A008B8B8B00686868005B7C
      5E0047854D005F986300397A3E0058895A003484D20093ACCC00E7AF7300FFD6
      8400FEB05F00FEA75B00FDA05500A0A0A000C9C9C900A5A5A500CACACA00C2C2
      C200A1A1A100C4C4C4006D6D6D006E6E6E00FFFFFF00FFFFFF00FFFFFF00E7D5
      C600BA885E00D6BAA200E8D9C900EBDFD000EBDFD000E7D7C700D2B49B00AF7A
      4C00E2CEBE00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00E7D5
      C600BA885E00D6BAA200E8D9C900EBDFD000EBDFD000E7D7C700D2B49B00AF7A
      4C00E2CEBE00FFFFFF00FFFFFF00FFFFFF0069B8720065B36F0071BE7C0061B3
      6C005D906100E4E4E40081818100A8A8A800ABABAB0088888800E1E1E10075BB
      7D0083C98E0073C07F0054A35D0032753700984A2100B46F5500FDD7B200FFD6
      8400FFCA6500FFC05E00F9B35C00CDA37E00C9C9C900BDBDBD00989695009494
      9400B5B5B500C2C2C2006D6D6D0065656500FFFFFF00FFFFFF00E9D8CB00BD8B
      6100E6D4C300E4D1BE00C8A58400B78D6600B5896400C4A07F00DFCBB900E2CF
      BD00AE754700E3CFC000FFFFFF00FFFFFF00FFFFFF00FFFFFF00E9D8CB00BD8B
      6100E6D4C300E4D1BE00C8A58400B78D6600B5896400C4A07F00DFCBB900E2CF
      BD00AE754700E3CFC000FFFFFF00FFFFFF00E2F3E400C3E3C7007BB98200518D
      5700A1C0A300EFEFEF007D7D7D00A3A3A300A5A5A50084848400EFEFEF00A0D5
      A70058AE610069AD71009FC7A300BFD7C100FFFFFF00A83B0100CD735200FFE8
      C000ADAA8600A79E7D00A5A5A500B7B7B700E1E1E1009C9C9C00993F0B00FFFF
      FF0095959500D5D5D5009999990065656500FFFFFF00F7F1EB00C89C7800E9D7
      C800E2CCB900BF936A00B98B6100CEAF9300CEAF9300B6885E00B1866000D9BF
      A900E3D0BF00B5825800F4ECE600FFFFFF00FFFFFF00F7F1EB00C89C7800E9D7
      C800E2CCB900BF936A00B98B6100CEAF9300CEAF9300B6885E00B1866000D9BF
      A900E3D0BF00B5825800F4ECE600FFFFFF00FFFFFF00FFFFFF00FFFFFF008A8A
      8A00EFEFEF00EEEEEE007A7A7A009D9D9D00A0A0A00080808000EEEEEE00F3F3
      F30070707000E5E5E500FFFFFF00FFFFFF00FFFFFF00FFFFFF00913302006D79
      940073ADE70081B1E300B4B4B400CACACA00E8E8E8008686860059A8680059A7
      670093979400E2E2E200B6B6B60087878700FFFFFF00E5CFBC00E3CBB800E9D5
      C400C6987000BE8F6500BE8F6500F6F0EB00F5EFE900B6885E00B6885E00B488
      6200E1CDBA00D8BCA500D8BDA700FFFFFF00FFFFFF00E5CFBC00E3CBB800E9D5
      C400C6987000BE8F6500BE8F6500F6F0EB00F5EFE900B6885E00B6885E00B488
      6200E1CDBA00D8BCA500D8BDA700FFFFFF00FFFFFF00FFFFFF00FFFFFF009090
      9000F0F0F000EEEEEE0076767600989898009B9B9B007B7B7B00EEEEEE00F3F3
      F30075757500E5E5E500FFFFFF00FFFFFF00FFFFFF00FFFFFF00564A520072A4
      D600ACD1F200AED7FD00B0D4F500A5BACD00D2D2D200ABABAB00818181008A8A
      8A00B4B4B400CACACA007D917D004C9BE600FFFFFF00D8B39500EEE0D200D8B4
      9400C6976B00C2946800C0926600BE8F6500BE8F6500BA8A6200B8896200B789
      6100CAA68500E9DBCB00C1946E00FFFFFF00FFFFFF00D8B39500EEE0D200D8B4
      9400C6976B00C2946800C0926600BE8F6500BE8F6500BA8A6200B8896200B789
      6100CAA68500E9DBCB00C1946E00FFFFFF00FFFFFF00C7DBEA00669CC2008C8E
      9000F5F5F500EEEEEE0073737300757575007676760077777700EEEEEE00F3F3
      F300898A8C004D608D00C1C8D900FFFFFF00FFFFFF00FFFFFF0023579400A7BF
      DB0096C5F100A1D0FB0096C6F300BABABA00DADADA00BFBFBF00D6D6D600D8D8
      D800B8B8B800D4D4D400888888005095DB00FFFFFF00D9B29200F1E3D800D0A4
      7900C4986A00C3966900C3956800F9F5F100F2E9E000C1946C00BD8E6400BD8E
      6300BF946C00EEE2D400C08F6600FFFFFF00FFFFFF00D9B29200F1E3D800D0A4
      7900C4986A00C3966900C3956800F9F5F100F2E9E000C1946C00BD8E6400BD8E
      6300BF946C00EEE2D400C08F6600FFFFFF00C7DCEC003A84BA005695C1003E80
      B200DBDDDF00ECECEC00EEEEEE00EEEEEE00EEEEEE00EEEEEE00EEEEEE00DEE0
      E2002C4A8000395E8F00263F7900C1C8D900FFFFFF00FFFFFF0032578F005069
      9A006380AE007CA6D6005573A5007E8CA800B6B8BA0088CBA400C0C0C000BEBE
      BE0081C49100A6ADA7008DA88E0035693900FFFFFF00E0BB9C00F1E4D900D0A5
      7D00CB9C7000C6996B00C4976A00E1CBB500F7F2ED00F5EDE700D8BCA000C193
      6700C49A7000EFE1D500C6987000FFFFFF00FFFFFF00E0BB9C00F1E4D900D0A5
      7D00CB9C7000C6996B00C4976A00E1CBB500F7F2ED00F5EDE700D8BCA000C193
      6700C49A7000EFE1D500C6987000FFFFFF00619AC9005294C50079AED2005696
      C3004286B900CCCECF00EDEDED00EEEEEE00EEEEEE00EEEEEE00D8D9DA003763
      9600436F9E005B8BB0003B639300556A9600FFFFFF00FFFFFF00243B5F004461
      9500415B9000415B9000415B9000415B90006F8F9E0084999300B6B7B700B4B4
      B400A4D5B10082BF8500277E2D0026733000FFFFFF00E9C9AF00F2E4D800DEBA
      9D00CE9F7400CC9D7100F4EAE200E3CAB300E6D2BE00FAF7F500E4D2BE00C397
      6A00D5B39000EDDFD100D2AB8A00FFFFFF00FFFFFF00E9C9AF00F2E4D800DEBA
      9D00CE9F7400CC9D7100F4EAE200E3CAB300E6D2BE00FAF7F500E4D2BE00C397
      6A00D5B39000EDDFD100D2AB8A00FFFFFF00FAFCFD003E84BD005192C50078AD
      D2005496C3004186B900C9CACB00ECECEC00EEEEEE00D8DADB003C75A5004C7F
      FD006A99BC004674A100385C9000FAFBFC00FFFFFF00FFFFFF00FFFFFF002541
      660042619500415D9200436096002D5769006B77920073ADE70081B1E3007DB2
      E7006C98C4002B652E002C753500FFFFFF00FFFFFF00F5E4D600F3E2D300EEDB
      CC00D4A77D00CF9F7600FAF7F400FBF7F400FBF7F400FAF7F400D0A78000CEA3
      7A00E9D4C200E9D3C100E8D3C100FFFFFF00FFFFFF00F5E4D600F3E2D300EEDB
      CC00D4A77D00CF9F7600FAF7F400FBF7F400FBF7F400FAF7F400D0A78000CEA3
      7A00E9D4C200E9D3C100E8D3C100FFFFFF00FFFFFF00FAFCFD003D80BD004F90
      C50075ACD2005394C5004088BB00D1D3D400D1D3D4004082B300548CBA0076A4
      C6004F83B1003D6FA200FAFBFD00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00564A520072A4D600ACD1F200AED7FD00B0D4
      F50092C0E700405E8200FFFFFF00FFFFFF00FFFFFF00FDF9F500F0D2BA00F5E8
      DC00EBD7C500D6AB8000DBBA9900F5EBE200F4EBE100E3C7AD00D1A67A00E5CD
      B900F0E1D400DEBA9B00FAF4F000FFFFFF00FFFFFF00FDF9F500F0D2BA00F5E8
      DC00EBD7C500D6AB8000DBBA9900F5EBE200F4EBE100E3C7AD00D1A67A00E5CD
      B900F0E1D400DEBA9B00FAF4F000FFFFFF00FFFFFF00FFFFFF00FAFCFD003B7F
      BB004C8FC30072AAD2005193C5003A82B9003B84B8005594C1007CABCE005490
      BB00427FB000FAFCFD00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF000F549600B8D0E70096C5F100A1D0FB0096C6
      F300B6CFE4003183BF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FBF1E900F2D3
      BA00F6E9DE00EDDDCF00E2C0A600D7AD8800D6AB8500DCBA9B00EAD5C600F2E5
      D800E3C0A200F5E9DE00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FBF1E900F2D3
      BA00F6E9DE00EDDDCF00E2C0A600D7AD8800D6AB8500DCBA9B00EAD5C600F2E5
      D800E3C0A200F5E9DE00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FAFC
      FD003B7DBA004A8CC2006FA9D10070A9D10073ABD10079AED2005596C3004488
      BA00FAFCFD00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00155F9D0034AEE50065B8E6008DC8F6003BAD
      E6001DA7E5002397D400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FCF2
      EA00F5D9C300F8E8DB00F5E7DC00F2E4D900F2E4D900F4E6DB00F4E3D500ECCC
      B300F8ECE300FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FCF2
      EA00F5D9C300F8E8DB00F5E7DC00F2E4D900F2E4D900F4E6DB00F4E3D500ECCC
      B300F8ECE300FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FAFCFD00397AB800478AC10069A5CF006DA8D0005092C5004288BE00FAFC
      FD00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF001C4A6F0021A3DF0019A6E50019A6E50019A6
      E50019A6E500236B9900FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FEFAF700FBECE100F7DDC800F5D8C000F4D6BE00F4D8C200F8E8DB00FDF8
      F500FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FEFAF700FBECE100F7DDC800F5D8C000F4D6BE00F4D8C200F8E8DB00FDF8
      F500FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FAFCFD00427EBA003476B600367AB8004687C000FAFCFD00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF001A547C002597D3001BA5E40021A0
      DE00226F9F0022374E00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FAFCFD00E9F0F700E9F0F700FAFCFD00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF002C86D8002D88D8002D87D8002D88
      D8002D88D8002D88D8002D88D8002D88D8002D88D8002D88D8002D88D8002D87
      D8002D88D8002C86D800FFFFFF00FFFFFF00FFFFFF00ACC3DC00C0897400CA6F
      3300D17D4000D27D4000D07B4000CC793E00B35E3E00B1B9C800C3DCF300FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF008F4539008F4539008F45
      39008F4539008F4539008F4539008F4539008F4539008F4539008F4539008F45
      39008F4539008F4539008F453900FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00338ED900DCF0FA00A7DDF4009EDB
      F40096DAF3008ED8F30086D7F3007FD4F20079D3F20072D2F1006CD0F10069CF
      F100C2EAF800338ED900FFFFFF00FFFFFF00519BE1007084AB00C77D5800FEB9
      6500FEB66000FEAF5D00FEB15C00FEB35B00DD87560086727D004B9AE500FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00ECE3E000ECE2DF00ECE2
      DF00ECE2DF00ECE3E000EBE0DE00ECE2DF00ECE3E000ECE2DF00EBE0DE00ECE2
      DF00ECE2DF00ECE2DF00ECE2DF00FFFFFF00FFFFFF002C86D8002D88D8002D87
      D8002D88D8002D88D8002D88D8002D88D8002D88D8002D88D8002D88D8002D88
      D8002D87D8002D88D8002C86D800FFFFFF003594DA00EFFAFE00A1E9F90091E5
      F80081E1F70072DEF60063DAF50054D7F40047D3F30039D0F2002ECDF10026CB
      F000CAF2FB003594DA00FFFFFF00FFFFFF003584D20092ABCB00E6AE7200FEB7
      5E00FDAF5E00FDA65A00FC9F5400FE964C00FC924C00B29EA1004D95DD00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00ECE2DF00B16D3900AA65
      3300A15A2C009B542A00904B230088471D00793F2200733C2500663826006437
      26005E35260064382500EBE0DE00FFFFFF00FFFFFF00338ED900DCF0FA00A7DD
      F4009EDBF40096DAF3008ED8F30086D7F3007FD4F20079D3F20072D2F1006CD0
      F10069CFF100C2EAF800338ED900FFFFFF00369ADA00F2FAFD00B3EDFA00A4E9
      F90095E6F80085E2F70081E1F7007AE0F7006FDDF60062DAF50054D6F30047D3
      F200E8F9FD003594DA00FFFFFF00FFFFFF00DCC2B500B6745B00FCD6B100FED5
      8300FEC96400FEBF5D00FEB35500FEA65600FEC49100D57C5A00B7907E00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00ECE2DF00B5723B00B06C
      3800A8623100A35D2D0098522800924D240082441B00794020006C3A26006537
      26005E35270061362600EBDFDD00FFFFFF00FFFFFF003594DA00EFFAFE00A1E9
      F90091E5F80081E1F70072DEF60063DAF50054D7F40047D3F30039D0F2002ECD
      F10026CBF000CAF2FB003594DA00FFFFFF0036A1DA00F6FCFE00C8F2FC00B9EF
      FB00ACECFA008CE4F8008AE3F80082E1F70079DFF7006DDDF60061DAF50057D7
      F400E7F8FD003594DA00FFFFFF00FFFFFF00FFFFFF00DCB29B00CE795900FEE7
      BF00ACA98500A69D7C009F917400F6C99B00E3937400C8826400FBF7F500FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00ECE3E000B9763C00B572
      3B00FFFFFF00FFFFFF00A25B2D009C552B008E49230086461B00F7F5F400FFFF
      FF006136250062362600EBE0DE00FFFFFF00FFFFFF00369ADA00F2FAFD00B3ED
      FA00A4E9F90095E6F80085E2F70076DEF60065DBF50057D7F40049D4F3003BD1
      F20030CEF100CCF2FB003598DA00FFFFFF0037A6DA00FEFFFF00F8FDFF00F6FD
      FF00F5FCFF00DEDBD100ADCAC500A6C5C000A4C3BD009EBDB60097BAB30092B8
      B200E1CBB7003594DA00C3845200BB774200FFFFFF00FFFFFF00CA9E86006F7B
      950072ACE60080B0E2007CB1E6006B97C30073542B005BA3630058A7670058A6
      660055A2630053935500BFB2B900C3DCF300FFFFFF00ECE2DF00BC7A3E00BA78
      3E00FFFFFF00FFFFFF00AC673700A86232009B542900934D2600F7F5F400FFFF
      FF006637260063372600EBE0DE00FFFFFF00FFFFFF0036A1DA00F6FCFE00C8F2
      FC00B9EFFB00ACECFA009CE8F9008BE3F7007CE0F6006CDCF6005DD9F5004FD6
      F40044D3F300D0F3FC00359FDA00FFFFFF0035ABDA00E8F6FB007EC5EA005BAE
      E30051A8E10061ADDF00EDF6F700EDF5F600E7EFF300E5ECEE00E5EBED00E5EB
      ED00F8F3EF003594DA00F0E2D800C58A5D00FFFFFF00FFFFFF00BBB6B90072A3
      D500ABD0F100ADD6FC00AFD3F40091BFE6005382880078CE930076CD8D0075CD
      8E0075CD90006AB37300598E59004B9AE500FFFFFF00ECE3E000C17F3D00C17F
      3F00FFFFFF00FFFFFF00BF7E4200BB794000A6603100A0592D00F7F6F400FFFF
      FF006F3C230069392500EBDFDD00FFFFFF00FFFFFF0037A6DA00FEFFFF00F8FD
      FF00F6FDFF00F5FCFF00F3FCFE00D8F6FC0094E6F80085E3F70076DFF60068DB
      F5005CD8F400D7F4FC0035A4DA00FFFFFF0036AADA00F1FAFD0094DEF50093DC
      F40081D5F200C0A9970091C1E4003594DA003594DA003594DA003594DA003594
      DA003594DA003594DA00F0E2D800C4865400FFFFFF00FFFFFF006B8EB700A6BE
      DA0095C4F000A0CFFA0095C5F200B5CEE3004079A60077CD8E0074CC88006FCA
      820069CA7A0069C878005F9560004D95DD00FFFFFF00ECE3E000C8873C00C989
      3D00FFFFFF00FFFFFF00E0AA6900DDA76A00C4854400FCFCFB00FAF8F700FFFF
      FF0087461C007C402000ECE2DF00FFFFFF00FFFFFF0035ABDA00E8F6FB0094D4
      EF0088CEEE0073C1E900C9E9F600F2FCFE00F3FCFE00F2FCFE00F0FCFE00EFFB
      FE00EEFBFE00FEFFFF0036ABDA00FFFFFF0035AFDA00F7FCFE008EE4F80091DE
      F5009FE0F500E3B18C00FAF6F100EAC9AE00FFFFFF00E8C7AC00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00F1E5DB00C6865500FFFFFF00FFFFFF00617DA8004F68
      9900627FAD007BA5D5005472A400425C9100436697007BCF9E0076CD960070CC
      8D0071CC87009CD7AA006CAF6F0088A68A00FFFFFF00ECE3E000CB8B3B00CE8E
      3900FFFFFF00FFFFFF00E4B67C00E3B37C00BF7E4100E5C5A200FFFFFF00FFFF
      FF00904B220086451C00ECE2DF00FFFFFF00FFFFFF0036AADA00F1FAFD0094DE
      F50093DCF40081D5F2006ACAED006CCBEA0085D3EF0080D2EF007AD0EF0076CF
      EE0072CFEE00E9F7FB0034AEDA00FFFFFF0036B3DA00FDFEFE00FEFFFF00FEFE
      FF00FDFEFF00E5B48F00FAF6F200E9C6AA00E9C6AC00E8C7AC00E8C7AC00E9C9
      B000E8C8B000E8CCB500F2E7DE00C88A5900FFFFFF00FFFFFF00C5CBD5004461
      9500405A8F00405A8F00405A8F00405A8F006E8E9D00839892007C938800748B
      7E00A3D4B00081BE840077AD7B00F6F9F700FFFFFF00ECE2DF00CD8D3800D090
      3700FFFFFF00FFFFFF00FFFFFF00FFFFFF00BC7A3D00B7753C00FAF8F600FFFF
      FF0098512A008F4B2200EBE0DE00FFFFFF00FFFFFF0035AFDA00F7FCFE008EE4
      F80091DEF5009FE0F500ACE1F600EFFBFE00F4FDFE00F3FCFE00F1FCFE00EFFB
      FE00EEFBFE00FAFDFF0036AFDA00FFFFFF0034B4D9005EC2E10060C3E20060C3
      E20060C3E200E7B79400FBF7F400E9C3A600FFFFFF00E8C7AC00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00F7F1EB00CB8F5F00FFFFFF00FFFFFF00FFFFFF00ACB6
      C4004B699A00405C910045629700567886006D79930072ACE60080B0E2007CB1
      E6006B97C30067906900F6F9F600FFFFFF00FFFFFF00ECE3E000CF8F3600D090
      3700D8993E00D5974100D1934400CE904500BC7A3E00B9773C00BE7E4600C184
      4D009F582D0098512800EBE0DE00FFFFFF00FFFFFF0036B3DA00FDFEFE00FEFF
      FF00FEFEFF00FDFEFF00FEFFFF00EAF7FB006BC7E4006BC7E3006BC7E3006BC7
      E30079CDE60074CAE50032B1D900FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00E9BA9800FBF7F400E9C3A600E9C3A600E9C3A600E9C3A600E9C3
      A600E9C3A600E9C3A600FBF7F400CE936400FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00BBB6B90072A3D500ABD0F100ADD6FC00AFD3
      F40091BFE6007D91AA00FFFFFF00FFFFFF00FFFFFF00ECE2DF00D0903600CF8F
      3800CD8D3900CA8A3B00C6853E00C3833E00BC7A3E00B9773D00B26F3A00AE69
      3700A55F30009F582C00ECE2DF00FFFFFF00FFFFFF0034B4D9005EC2E10060C3
      E20060C3E20060C3E2005FC3E2003CB6DB002CB2D8002CB2D8002CB2D8002CB2
      D8002CB2D8002CB3D8002CB3D800FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00EBBD9B00FBF7F400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FBF7F400D1976A00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF007AA0C400B7CFE60095C4F000A0CFFA0095C5
      F200B5CEE3004A92C600FFFFFF00FFFFFF00FFFFFF00EBE0DE00EBE0DE00EBE0
      DE00EBE0DE00EBE0DE00EBDFDD00EBE0DE00EBE0DE00EBE0DE00EBDFDD00EBE0
      DE00EBDFDD00EBDFDD00EBDFDD00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00ECBF9E00FBF7F4009CD5A50098D3A1008BCB930082C689007EC3
      84007AC1800076BE7C00FBF7F400D49B6F00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF0078A3C60033ADE40064B7E5008CC7F5003AAC
      E5001CA6E400309DD600FFFFFF00FFFFFF00FFFFFF008F4539008F4539008F45
      39008F4539008F4539008F4539008F4539008F4539008F4539008F4539008F45
      39008F4539008F4539008F453900FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00EEC1A100FBF7F400FBF7F400FBF7F400FBF7F400FBF7F400FBF7
      F400FBF7F400FBF7F400FBF7F400D7A07400FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00C3CFD90022A3DE0018A5E40018A5E40018A5
      E40018A5E40082ABC500FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00EFC2A300EFC1A200EDC09F00EBBE9D00E7B79300E4B28C00E2AF
      8800E0AC8400DDA98000DCA57D00DAA37A00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00A8BECD00309CD4001AA4E30023A1
      DE0076A6C300FAFAFB00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF007AC8EC002CA6DF002AA3DE0028A0
      DC00269DDB00249AD9002297D8001F92D5001A8BD2001584CE00107DCB000C76
      C8000870C500056BC2000267C0005D9CD600FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00E3E6F7009AA6E3004C61CB00354EC400334CC200455CC60094A1DE00E1E4
      F500FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF008E512B00B0633100BB703800BE77
      3C00C17B4000C27E4200C2804500C3824700C3864900C3864A00C3874B00C387
      4B00C3874C00BD834900AC7440008E512B0047B5E500BDE2F400F3FBFD00EEFA
      FD00EDFAFD00EDFAFD00EEFBFD00EEFBFD00EEFAFD00EDFAFD00ECFAFD00ECFA
      FD00EBFAFD00F1FBFD00AACDEA00297ECA00FFFFFF00FFFFFF00FFFFFF00BFC7
      EF004B62D0005163D300838FE600949FED00949EEC00828DE4004B5CCD003C53
      C300B8C0E900FFFFFF00FFFFFF00FFFFFF00636363005D5D5D00585858008181
      8100797979006E6E6E00616161005252520043434300363636002B2B2B002323
      230023232300242424002323230023232300A35D3100F8F3EE00F5ECE400FBF5
      F000FBF7F100FBF7F300FBF8F400FCF9F500FCF9F500FCF9F600FCF9F700FCFA
      F700FCFAF700F7F1EC00EAD9CC00AB764200C3E7F70061BEE700F3FBFD00B4EE
      F90057D9F40057D9F40056D7F20057D6F10057D5F10056D8F30050D7F4004DD6
      F30061D9F500E9FAFD004392D100B5D4ED00FFFFFF00FFFFFF00C1CAF100465F
      D4007483E200A0ABF3007E8AEB005B66E3005A65E2007C86E9009EA7F0006E7B
      DC00314AC100B8C1E900FFFFFF00FFFFFF006A6A6A00A7A7A700B5B5B5008181
      8100898989008989890089898900898989008989890089898900898989008080
      80002C2C2C00B5B5B5009B9B9B0023232300BE6F3C00FCF9F500ECD0BC00F9E4
      D600184259002B6188004C8ABE0070A4C400E2DCD700FEEADD00FDEADB00FDE8
      D800F8E0CD00EACBB300F3EBE300C78B5000FFFFFF005DC0EA009CD6F000E6F8
      FC008AE4F70059DAF5005AD9F3003CA0D4003CA0D40053D5F10051D7F4004FD5
      F300D7F5FB0087BEE40054A0D800FFFFFF00FFFFFF00E7EAFA00586FDD007787
      E500A2AFF4005666E6005564E5008891EC008791EB00525EE100515CE0009EA8
      F1006E7CDC004056C600E2E6F600FFFFFF0070707000B5B5B500B5B5B5009595
      95008181810081818100797979006E6E6E006161610052525200434343004242
      42006E6E6E00B5B5B500B5B5B50025252500C2764600FDFBF800F9E3D200ECCF
      B9002E67840094C7F90091C9F9004185C9002668AA00D0C2BC00FDE6D400F7DE
      C900EBCAB000F8DBC400F8F2EC00C98C5000FFFFFF00E2F4FB0036B1E400F2FA
      FD00C2F1FA005BDBF5005BD9F30063DEF50056CAEA0054D5F10053D8F40093E6
      F700E2F3FA001B89D000DEEDF800FFFFFF00FFFFFF00A7B4F0005F72DF00A3B2
      F600596DEA00586BE9005768E700FEFEFE00FEFEFE005461E4005360E200525E
      E1009EA8F1004F60D00097A3E000FFFFFF0075757500BBBBBB00BBBBBB008D8D
      8D00D4D4D400B9B9B900B9B9B900B9B9B900B9B9B900B9B9B900B9B9B900D3D3
      D30083838300BBBBBB00BBBBBB002A2A2A00C57D5000FDFBF900FDE9D800F9E1
      D0004389AA00E0F2FF00549AD8001A7ABE004998C5004687BD00CDB9AC00EAC5
      A900F8DAC200FCDFC600F8F3ED00C88D5000FFFFFF00FFFFFF0078CCEE008BD1
      EF00E9FAFD0093E5F7005BD9F30046B0DC003CA0D40055D6F1005BDAF400DDF7
      FC007CBFE60087C3E800FFFFFF00FFFFFF00FFFFFF006A81E8008D9EEF008398
      F3005B72ED005A6FEB00596DEA008F9CF000A5AEF2005666E6005564E5005461
      E4007C88EA008490E6004D63CD00FFFFFF007A7A7A00D7D7D700D7D7D7009797
      9700D8D8D800BFBFBF00BFBFBF00BFBFBF00BFBFBF00BFBFBF00BFBFBF00D7D7
      D7008E8E8E00D7D7D700D7D7D7003F3F3F00C9865B00FDFBF900FDE8D700FDE6
      D4009CA2A5007AB6D50090B7D10055C9E4005BDFF50078D0ED004E96D300D5B8
      A400FCDBC000FCDBC000F8F3ED00C88C5000FFFFFF00FFFFFF00F6FCFE0044B9
      E700C7E9F600E5F9FC005CD9F3003CA0D4003CA0D40056D6F100C6F2FB00BFE2
      F3003AA3DC00F5FAFD00FFFFFF00FFFFFF00FFFFFF005C75E9009FB2F600647F
      F1005E77EF005C75EE005B72ED00D2D8F900FEFEFE00586BE9005768E7005666
      E6005C6BE60098A4F0003B54CB00FFFFFF007E7E7E00F9F9F900F9F9F900ABAB
      AB00DFDFDF00CBCBCB00CBCBCB00CBCBCB00CBCBCB00CBCBCB00CBCBCB00DFDF
      DF00A3A3A300F9F9F900F9F9F90061616100CC8E6600FDFBF900FDE5D300F1CC
      B200E3B59600B0C8D20076BAD700C2F6FD0063DFF7005DE2F80079D3F0004996
      D800D9BAA500FCD7B700F8F3ED00C88C5000FFFFFF00FFFFFF00FFFFFF00B8E5
      F70070C7EC00F8FDFE005DDBF3003DA1D4003DA1D4005BD8F300ECFAFD0067BA
      E400B2DCF200FFFFFF00FFFFFF00FFFFFF00FFFFFF00607AED00A0B5F7006683
      F3005F7BF2005E79F0005E77EF00FEFEFE00FEFEFE005A6FEB00596DEA00586B
      E9005E6EE8009AA7F0004058CF00FFFFFF0081818100FCFCFC00FCFCFC00CBCB
      CB00F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2
      F200C6C6C600FCFCFC00FCFCFC0070707000D0967000FDFBF900F1CDB100E3B5
      9600F9E9DE00FEF7F100B0CAD30077CBE700C7F7FD005EDCF5005AE1F7007BD4
      F1004A96D800CAB2A300F8F4EC00C88C5000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0059C2EB00A8DEF300ECF8FC003DA2D5003DA2D500D3F4FB00A1D6F0005CB8
      E500FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00758CF20090A5F20087A0
      F700617FF300607DF2005F7BF200FEFEFE00FEFEFE005C75EE005B72ED005A6F
      EB008192F0008897EB00586FD700FFFFFF0081818100D2D2D200E8E8E8007D7D
      7D007D7D7D007D7D7D007D7D7D007D7D7D007D7D7D007D7D7D007D7D7D007D7D
      7D007D7D7D00E8E8E800C4C4C40056565600D39D7B00FBF6F200E3B49600F9E8
      DC00FEF5EE00FDE9DA00FDEADC00BEDBDD0079D3EE00C7F7FD005FDCF5005BE2
      F7007AD6F2004F9BD700D0D4D700C88C5000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00DAF2FB0039B7E700F8FCFE0093E8F8009DEAF900EBF9FD0030A9E000D7EE
      F900FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00B1BFFA006B80EB00A8BC
      FA006281F4006180F400617FF300FEFEFE00FEFEFE005E79F0005E77EF005C75
      EE00A4B4F7005C6FDC00A2AEEB00FFFFFF00818181009A9A9A00CCCCCC00DFDF
      DF00DFDFDF00DFDFDF00DFDFDF00DFDFDF00DFDFDF00DFDFDF00DFDFDF00DFDF
      DF00DFDFDF00C3C3C3007474740047474700D7AB9100FDFAF800FCF5F100FFFC
      F900FFFCF900FFFCF900FFFCF900FFFCFA00C1E9F4007DD4EE00C4F6FD006CDD
      F6006DCAED0063A3D70069A1D4009C7C5A00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0073CDEF0093D7F100F2FBFD00E6F9FD008ED2EF0085CEEE00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00EBEEFE00748BF6008296
      EF00A8BCFA006281F4006281F400FEFEFE00FEFEFE00607DF2005F7BF200A5B8
      F8007A8CE9005C73E000E6EAFA00FFFFFF00FFFFFF0081818100818181009898
      98009B9B9B009B9B9B009A9A9A00999999009797970096969600969696009595
      95007F7F7F005959590053535300FFFFFF00C89A7C00D5A48400D0977000CC8F
      6400CC8E6200CB8E6000CA8C5D00C98B5B00C88A58009097850080D3EA00B2E3
      F9008BC0E700AED3F600C4E0FC00679DCF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00F1FAFE0043BDE900F0F9FC00D4EEF90042B7E700F1F9FD00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00CED6FD006C85
      F7008396F000A8BCFA0089A2F7006A88F5006A88F50088A1F700A7BBF9007E91
      EB005971E400C5CEF500FFFFFF00FFFFFF00FFFFFF00FFFFFF00818181008181
      81009C9C9C00D7D7D700C3C3C300C3C3C300C3C3C300C3C3C300D7D7D7009696
      96006666660060606000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0021B7E30077BE
      E700B4D2F000E5F3FF00ACD2EF00488CC700FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF008CD7F30084D3F00081D0EF00ACE0F500FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00CED7
      FD00768DF9006D82ED0091A5F3009FB3F7009FB3F70090A5F200677CE8006880
      EC00C8D0F800FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF009C9C9C009C9C9C009B9B9B009B9B9B009A9A9A0099999900979797009696
      9600FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0032B0
      DE0058A5D80085B1DB00469DD0002B95D100FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FDFEFF005CC6EE0068C9EE00FDFEFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00EAEEFE00B5C2FC007C93F9006B85F6006983F500768EF400B0BDF800E9EC
      FD00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00BA6A3600B9693500B8693500B768
      3500B5683500B4673400B2663400B0653300AE643300AC633200AA623200A961
      3200A8603100A7603100A6603100A8613100FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00E5E7F7009EA9E100536AC6003E58BF003953BE004B66C10097A7DB00E1E6
      F500FFFFFF00FFFFFF00FFFFFF00FFFFFF00BA6A3500EBC6AD00EAC5AD00FEFB
      F800FEFBF800FEFBF800FEFBF800FEFBF800FEFBF800FEFBF800FEFBF800FEFB
      F800FEFBF800C89A7C00C7987900A7603100FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00B9663100C2835700D28A6700E08E6F00DB8C6B00D98A6C00D689
      6D00CC8A6B00AA6C4300A55E2D00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C2C8
      ED005465CB003B51CB007479E7008E91ED008E91ED007077E300324CC0003F5B
      BD00B9C4E700FFFFFF00FFFFFF00FFFFFF00BA6B3700EDCAB300E0A27A00FEFA
      F70062C0880062C0880062C0880062C0880062C0880062C0880062C0880062C0
      8800FDF9F600CA8D6500C99B7C00A7603100FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00C5825400EECDB900DCFEFE0086EDC600A1F3D600A1F5D6008BED
      C600DFFEFE00DCA18400AA693D00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C5C9EE00505F
      CC005B64DF00A0A5F4007D85EE005A62E800585CE6007C83ED009D9FF300505C
      D6003351B900B9C4E700FFFFFF00FFFFFF00BB6C3800EECCB600E1A27A00FEFA
      F700BFDCC200BFDCC200BFDCC200BFDCC200BFDCC200BFDCC200BFDCC200BFDC
      C200FDF9F600CD906800CC9E8100A8613200FFFFFF00FFFFFF00FFFFFF00B866
      3100C2835700C27E5000EEB59900E9F2E70050BE83006EC8970070C8980053BE
      8300E3F3E800DC9B7A00A9683900FFFFFF008E512B00B0633100BB703800FBF5
      F000C17B4000C27E4200C2804500C3824700C3864900C3864A00C3874B00C387
      4B00C3874C00BD834900AC7440008E512B00FFFFFF00E8EAF9006470D300606A
      E200A0ABF400535EEB004F5BE9004C58E8004D58E5004B55E5004F55E5009DA1
      F300535FD5003F5CBE00E2E7F500FFFFFF00BB6B3800EFCEB800E1A27900FEFA
      F70062C0880062C0880062C0880062C0880062C0880062C0880062C0880062C0
      8800FDF9F600CF936A00CEA38400AA613200FFFFFF00FFFFFF00FFFFFF00C481
      5300EDCCB900C3805300E9B59600F2F2E900ECF0E500EEF0E500EEEFE500ECF0
      E400F2F4EC00D49B7800AF6F4300FFFFFF00A35D3100F8F3EE00F5ECE400FBF5
      F000FBF7F100FBF7F300FBF8F400FCF9F500FCF9F500FCF9F600FCF9F700FCFA
      F700FCFAF700F7F1EC00EAD9CC00AB764200FFFFFF00ACB0E9004A55DA00A1AA
      F5005563EF005165ED004C58E8004C58E8004C58E8004C58E8004B57E5005159
      E5009EA2F400334FC30095A5DB00FFFFFF00BA6A3600EFD0BB00E2A27A00FEFB
      F800FEFBF800FEFBF800FEFBF800FEFBF800FEFBF800FEFBF800FEFBF800FEFB
      F800FEFBF800D3966D00D2A78A00AB623200FFFFFF00B8663100C2825600C47E
      5200ECB09500C88A6000E5B49100E1A68000E0A68000DDA27C00DBA07A00DA9E
      7800D89D7600D3997200BA7D5600FFFFFF00BE6F3C00FCF9F500ECD0BC00F9E4
      D600FEECDF00FEEBDF00FEEBDE00FEEBDB00FEEBDC00FEEADD00FDEADB00FDE8
      D800F8E0CD00EACBB300F3EBE300C78B5000FFFFFF007277DC00808BED007D90
      F6005C72F2004C58E8004C58E8004C58E8004C58E8004C58E8004C58E8004E5A
      E8007A82EF00747AE1004B64C300FFFFFF00BB6A3600F0D2BE00E2A37A00E2A3
      7A00E1A37A00E2A37B00E1A37B00E0A17800DE9F7700DD9F7600DC9D7400D99B
      7200D8997100D6997000D5AB8E00AD633300FFFFFF00C4815300EDCCB900C68C
      6400DFBB9B00C98C6400E9B79800DCA47D00DCA57F00DAA27B00D89F7900D89F
      7800D79E7700D79D7700BE835C00FFFFFF00C2764600FDFBF800F9E3D200ECCF
      B900F8E1D000FDE7D600F4D5BD00E9BFA000E9BFA200F4D3BD00FDE6D400F7DE
      C900EBCAB000F8DBC400F8F2EC00C98C5000FFFFFF006468DA00A0AAF6006F85
      F7006781F500FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE004C58
      E8005B65E900959BF0003855BD00FFFFFF00BB6A3600F2D5C200E3A37A00E3A3
      7A00E2A37B00E2A37B00E2A47B00E1A27900E0A17800DEA07700DE9E7500DC9D
      7400DA9B7300D99B7300DAB09500AF643300FFFFFF00C27D5000EDB49800CA95
      6E00D4B48F00C7875C00EEBEA000FCFBF900FDFBFA00FDFCFC00FDFCFB00FCFA
      F900FCFBFA00DCA78400C07E5200FFFFFF00C57D5000FDFBF900FDE9D800F9E1
      D000EBCAB300ECC5A700E3B69800F7E7DD00F7E8DE00E3B69700ECC3A400EAC5
      A900F8DAC200FCDFC600F8F3ED00C88D5000FFFFFF00696DDB00AEB8F8007E92
      F9006F84EF00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE004C58
      E8005D69ED00959CF0003C54BF00FFFFFF00BB6A3600F2D8C500E3A47B00E3A3
      7A00E3A47A00E2A47B00E2A37B00E1A37B00E1A27900DFA07700DE9F7600DD9E
      7400DB9C7200DC9D7400DDB59A00B1653400FFFFFF00C2805200E8B49500CC97
      7200E9BDA000C6855A00EEBF9D00FEFEFE00CB926D00FEFEFE00FEFEFE00FEFA
      F600FEF7F000E3AE8B00C6896000FFFFFF00C9865B00FDFBF900FDE8D700FDE6
      D400EDC6AB00DCAA8900F9ECE300FFFBF900FFFCFA00F9EEE600DCA88700EDBF
      9C00FCDBC000FCDBC000F8F3ED00C88C5000FFFFFF007C7EE200A4AEF4009CAA
      F900768BEF00535EEB00535EEB00535EEB00535EEB00535EEB00535EEB006276
      F100808DF300777EE800556AC800FFFFFF00BB6B3600F4D9C700E6A67D00C88C
      6400C98D6500C98E6700CB926C00CB926D00CA906900C88C6500C88C6400C88C
      6400C88C6400DA9C7400E1BA9F00B3663400FFFFFF00C78A5F00E4B49000C989
      5F00ECBB9D00CB8C6400F2CCAF00FEFEFE00E2C6B200FEFEFE00FEFEFE00FEFE
      FE00FEFEFE00E9BEA000C8885F00FFFFFF00CC8E6600FDFBF900FDE5D300F1CC
      B200E3B59600F9EAE000FFF9F500FEF3EA00FEF4ED00FFFBF900F9EDE500E3B0
      8D00F0C19E00FCD7B700F8F3ED00C88C5000FFFFFF00B5B4EF007C82E900CCD3
      FB008A9CF9007D92F6007489ED006B83F5006B83F5006B83F5006B83F5006278
      F200A3AEF7003D4ECF009FAAE000FFFFFF00BB6B3600F4DCC900E7A77D00F9EC
      E100F9ECE100F9EDE300FCF4EE00FDFAF700FDF7F300FAEDE500F7E7DB00F7E5
      D900F6E5D800DEA07700E4BEA400B4673400FFFFFF00C88B6400E8B69800C787
      5D00EBBC9A00D3966D00D39D7A00CF977000D5A38100CC8D6700CC8F6800CF99
      7400D0987200C78A6100AD582000FFFFFF00D0967000FDFBF900F1CDB100E3B5
      9600F9E9DE00FEF7F100FDEDE100FEEFE400FEF1E700FEF3EA00FFFAF700F9EC
      E300E2AE8A00F0BC9500F8F4EC00C88C5000FFFFFF00EBEBFB007877E200A2A6
      F200D3DAFC008699F9007E90EF00798DF0007E93F7007D91F800758BF700A7B5
      F700626DE2005767CC00E6E8F700FFFFFF00BC6B3600F5DDCC00E7A87E00FAF0
      E800FAF0E800C98D6600FAF0E900FDF8F300FEFAF800FCF4EF00F9E9DF00F7E7
      DB00F7E5D900E0A27800E7C2A900B6683500FFFFFF00C7865B00EDBEA000CF98
      7400F2D0B700FDFDFD00E5CBBA00FDFDFC00FDFDFD00F9F4F000F6EFEB00E9BD
      9F00C8875F00FFFFFF00FFFFFF00FFFFFF00D39D7B00FBF6F200E3B49600F9E8
      DC00FEF5EE00FDE9DA00FDEADC00FDECDE00FDEDE100FEEFE400FEF1E700FFFA
      F600F9EAE000E2AA8500F1E4D900C88C5000FFFFFF00FFFFFF00CFCFF6006F6F
      E000A9ACF100D7DBFC00ADB9F90090A2F9008A9CF9009BA8FA00B9C6FB006F7A
      E8005361CD00C3C8ED00FFFFFF00FFFFFF00BC6B3600F6DFD000E8A87E00FCF6
      F100FCF6F100C88C6400FAF1E900FBF4EE00FDFAF700FDF9F600FAF0E800F8E8
      DD00F7E6DB00E1A37A00EFD5C300B7693500FFFFFF00C6855A00EDBE9D00D7A1
      7C00D19C7900D3A27E00D8AC8D00D0997600D09A7600D09B7600CE967000C689
      6000AC5B1F00FFFFFF00FFFFFF00FFFFFF00D7AB9100FDFAF800FCF5F100FFFC
      F900FFFCF900FFFCF900FFFCF900FFFCFA00FFFCFA00FFFCFA00FFFCFB00FFFD
      FB00FFFDFC00FBF6F300F8EFEA00AB774300FFFFFF00FFFFFF00FFFFFF00CFCF
      F6007878E1008D92EC00BDC2F700CBD2F800C3CAF800A9B3F300656FE100636D
      D500C6CAEF00FFFFFF00FFFFFF00FFFFFF00BC6B3600F6DFD100E9AA8000FEFA
      F600FDFAF600C88C6400FBF3EE00FBF1EA00FCF6F200FEFBF800FCF6F100F9EC
      E200F8E7DB00EED0BA00ECD0BD00BB703E00FFFFFF00CB8B6400F2CCAF00FDFD
      FD00E2C6B100FDFDFD00FDFDFD00FDFDFD00FDFDFD00E8BEA000C7885F00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C89A7C00D5A48400D0977000CC8F
      6400CC8E6200CB8E6000CA8C5D00C98B5B00C88A5800C7885600C6865300C584
      5000C4824D00C1834D00B27948008E512B00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00EBEBFB00B6B5F0007C7EE100696ADD00676ADB007378DE00AEB2EA00E8E9
      F900FFFFFF00FFFFFF00FFFFFF00FFFFFF00BC6B3600F6E0D100F7E0D100FEFB
      F800FEFBF700FDF9F600FCF5F000FAF0EA00FBF2ED00FDF9F600FDFAF700FBF1
      EB00F8E9DF00ECD0BD00C9895E00B5693500FFFFFF00D2956D00D29D7A00CF97
      6F00D5A28000CC8D6700CC8F6800CF987300D0987200C78A6000AA571C00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00BC6B3600BC6B3600BC6B3600BC6B
      3600BC6B3600BB6B3600BB6B3600BB6A3600BB6A3600BC6C3900BD6E3B00BB6D
      3A00BB6B3800BB703E00B6693500FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00174259002A6188004B89BD006FA8CC00E3EDF500FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00C98A6100C2835700D28A6700E08E6F00DB8C6B00D98A
      6C00D6896D00CC8A6B00AA6C4300A55E2D00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF002D66840093C6F80090C8F8004084C800266AAD00D8E6F200FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FAFAFA00EAEAEA00C5825400EECDB900DCFEFE0086EDC600A1F3D600A1F5
      D6008BEDC600DFFEFE00DCA18400AA693D00FFFFFF001838B2001838B2001838
      B2001838B2001838B2001838B2001838B2001838B2001838B2001838B2001838
      B2001838B2001838B2001838B200FFFFFF00FFFFFF00FFFFFF004CA2E900459D
      E7003D99E6003494E5001D8BE1001F8BE100208CE3001888E2001182E2000980
      E000027CDF000078DE00FFFFFF00FFFFFF00FFFFFF00FFFFFF00F3F3F300C5C5
      C5004288A900DFF1FE005399D7001979BD004897C4003D83BC00A7B5C200F4F4
      F400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00F3F3F300C5C5C500A4A4
      A400A0A0A000AAAAAA00C27E5000EEB59900E9F2E70050BE83006EC8970070C8
      980053BE8300E3F3E800DC9B7A00A9683900FFFFFF00F1F1F900EFF0F800EFF0
      F800EFF0F800F1F1F900EEEFF800EFF0F800F1F1F900EFF0F800EEEFF800EFF0
      F800EFF0F800EFF0F800EFF0F800FFFFFF00FFFFFF00FFFFFF0054A6EA00B5E5
      F80094D0F0004AA6E70059AEEA007CC1ED00BAEDFA00B9EDF800B6ECF800B2EC
      F800B1ECF800007CE100FFFFFF00FFFFFF00FFFFFF00E5E5E500A8A8A800CDCD
      CD009BB9CD0079B5D4008FB6D00054C8E3005ADEF40077CFEC004A96D6008893
      9D00E6E6E600FFFFFF00FFFFFF00FFFFFF00E5E5E500A8A8A800CDCDCD00ECEC
      EC00F3F3F300F4F4F400C3805300E9B59600F2F2E900ECF0E500EEF0E500EEEF
      E500ECF0E400F2F4EC00D49B7800AF6F4300FFFFFF00EFF0F8005568ED005062
      E1004858C9004452BC003E4AA5003C469800363F8600343B7D0032376E003136
      6A002F33640031366A00EEEFF800FFFFFF00FFFFFF00FFFFFF005CAAEA00B3E2
      F700319EE5003AAAE800A7E8F7004DB9EA0059D5F2004FD3F20047D1F10041D0
      F100B3ECF8000780E200FFFFFF00FFFFFF00FFFFFF00AFAFAF00DDDDDD00F2F2
      F200DADADA0095B7C80074B8D500C1F5FC0062DEF6005CE1F70078D2EF004796
      D90088929C00FFFFFF00FFFFFF00FFFFFF00AFAFAF00DDDDDD00F2F2F200DADA
      DA00D1D1D100DADADA00C88A6000E5B49100E1A68000E0A68000DDA27C00DBA0
      7A00DA9E7800D89D7600D3997200BA7D5600FFFFFF00EFF0F8005B6EF1005668
      EA004E5FDA004A5ACE004350B5003F4CA9003942910037408700333A76003136
      6D002F34660030356800EDEEF700FFFFFF00FFFFFF00FFFFFF005CABEB0054AC
      EA0046AEEA00ABE8F800ACE9F90055BAEA0061D8F30059D5F2004FD3F20048D1
      F200B6ECF8001084E300FFFFFF00FFFFFF00FFFFFF00B2B2B200EFEFEF00DDDD
      DD00D3D3D300D1D1D10098BDCE0076CAE600C6F6FC005DDBF40059E0F6007AD3
      F0004694D700D6E7F700FFFFFF00FFFFFF00B2B2B200EFEFEF00DDDDDD00D3D3
      D300D1D1D100DADADA00C98C6400E9B79800DCA47D00DCA57F00DAA27B00D89F
      7900D89F7800D79E7700D79D7700BE835C00FFFFFF00F1F1F9006173F300FFFF
      FF00F4F5FA00BBBFF100848CDC00FFFFFF00FFFFFF00FFFFFF00B9B9D100FFFF
      FF00FFFFFF0031366A00EEEFF800FFFFFF00FFFFFF00FFFFFF005DACEA0082C2
      EF00D2F2FB00D0F2FB00B1ECF9005ABBEC006BD9F30061D8F30059D5F20050D3
      F200B9EDFA001989E400FFFFFF00FFFFFF00FFFFFF00B4B4B400F1F1F100E1E1
      E100D7D7D700D4D4D400DBDBDB00A3CBD80078D2ED00C6F6FC005EDBF4005AE1
      F60079D5F10050A1E100DCE9F500FFFFFF00B4B4B400F1F1F100E1E1E100D7D7
      D700D4D4D400DBDBDB00C7875C00EEBEA000FCFBF900FDFBFA00FDFCFC00FDFC
      FB00FCFAF900FCFBFA00DCA78400C07E5200FFFFFF00EFF0F8006477F400FFFF
      FF00D2D4F800FFFFFF008A94EC00FFFFFF00A2A7DE009FA2D500BABCD700FFFF
      FF00AFAFC60031366E00EEEFF800FFFFFF00FFFFFF00FFFFFF0070B5ED009DD0
      F30077C9EF0071C6EF006DC5EF005FBDEC0075DCF4006BDAF30063D8F3005AD5
      F200BDEEFA00228EE700FFFFFF00FFFFFF00FFFFFF00B6B6B600F2F2F200E6E6
      E600DCDCDC00D8D8D800DFDFDF00DADADA0096BFCC007BD3ED00C3F5FC006BDC
      F5006CC9EC0062A2D60068A2D400E5EFF700B6B6B600F2F2F200E6E6E600DCDC
      DC00D8D8D800DFDFDF00C6855A00EEBF9D00FEFEFE00CB926D00FEFEFE00FEFE
      FE00FEFAF600FEF7F000E3AE8B00C6896000FFFFFF00F1F1F9006B7CF500FFFF
      FF007383F600FFFFFF00929CF700FFFFFF00727DE2006C76D400BDBFDF00FFFF
      FF00353C7E0032397700EDEEF700FFFFFF00FFFFFF00FFFFFF0078B8EF00DAF5
      FB009BE6F70094E4F7008EE2F60085E0F6007DDEF40075DCF4006CDAF30063D8
      F300BFEFFA002B93E800FFFFFF00FFFFFF00FFFFFF00B7B7B700F3F3F300E9E9
      E900E0E0E000DCDCDC00E2E2E200DDDDDD00C8C8C80088B9C8007FD3EC00B1E2
      F8008ABFE600ADD2F500C3DFFB006AA1D300B7B7B700F3F3F300E9E9E900E0E0
      E000DCDCDC00E2E2E200CB8C6400F2CCAF00FEFEFE00E2C6B200FEFEFE00FEFE
      FE00FEFEFE00FEFEFE00E9BEA000C8885F00FFFFFF00F1F1F9007484F600FFFF
      FF0099A3F900FFFFFF009DA6F800FFFFFF007584F6006F7EF100C1C4ED00FFFF
      FF003D479B0038418D00EFF0F800FFFFFF00FFFFFF00FFFFFF008BC4F300DCF6
      FC00A1E7F7009CE6F70094E4F7008EE2F60086E0F6007EDEF50076DCF4006CDA
      F300C3EFFA003697E900FFFFFF00FFFFFF00FFFFFF00B9B9B900F4F4F400EDED
      ED00E5E5E500E1E1E100E5E5E500E0E0E000CCCCCC00C1C1C10088BDCD0076BD
      E600B3D1EF00E4F2FE00ABD1EE005895CB00B9B9B900F4F4F400EDEDED00E5E5
      E500E1E1E100E5E5E500D3966D00D39D7A00CF977000D5A38100CC8D6700CC8F
      6800CF997400D0987200C78A6100EDDCD000FFFFFF00F1F1F9007988F600FFFF
      FF00FEFEFE00FEFEFE00A1A9F800FFFFFF00E0E2F700DFE1F600C3C6F100FFFF
      FF003F4CAB003B469A00EFF0F800FFFFFF00FFFFFF00FFFFFF0092C7F400E0F6
      FC00A9E9F800A2E7F8009CE6F70095E4F7008FE2F60087E0F6007FDEF50076DC
      F400C7F0FA003F9DEA00FFFFFF00FFFFFF00FFFFFF00BABABA00F5F5F500EAEA
      EA00DDDDDD00D5D5D500D4D4D400D0D0D000C2C2C200BBBBBB00BFBFBF00AAD3
      E20057A4D70084B0DA00459CCF00B0D8EE00BABABA00F5F5F500EAEAEA00DDDD
      DD00D5D5D500D4D4D400D0D0D000C2C2C200BBBBBB00BFBFBF00E4E4E400AAAA
      AA00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00EFF0F8007A89F600C7CB
      FA00BFC3FB0097A1F800909BF700C2C6FA00BEC2FA00BAC0FA00969FEE00B6BA
      ED004351BB003E4BA800EEEFF800FFFFFF00FFFFFF00FFFFFF0096CBF500F8FC
      FE00EFFAFD00EFFAFD00EFFBFD00EDFAFC00EEFAFC00EEFAFC00EFFAFC00EFFA
      FC00F6FCFD0049A2EC00FFFFFF00FFFFFF00FFFFFF00BCBCBC00F6F6F600E6E6
      E600EEEEEE00F5F5F500FAFAFA00F9F9F900EFEFEF00DDDDDD00C2C2C200E5E5
      E500ABABAB00FFFFFF00FFFFFF00FFFFFF00BCBCBC00F6F6F600E6E6E600EEEE
      EE00F5F5F500FAFAFA00F9F9F900EFEFEF00DDDDDD00C2C2C200E5E5E500ABAB
      AB00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00F1F1F9007B8AF6007E8C
      F6007B8AF6007988F6007484F6007080F5006477F4006173F3005668EA005062
      E1004857C7004350B600EEEFF800FFFFFF00FFFFFF00FFFFFF00B1DBFC00F9FD
      FE00F9FDFE00F9FDFE00F9FDFE00F9FDFE00F9FCFD00F9FCFE00F9FDFE00F9FD
      FE00F9FCFE0052A7ED00FFFFFF00FFFFFF00FFFFFF00BEBEBE00F7F7F700FDFD
      FD00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FAFAFA00E9E9
      E900ADADAD00FFFFFF00FFFFFF00FFFFFF00BEBEBE00F7F7F700FDFDFD00FEFE
      FE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FAFAFA00E9E9E900ADAD
      FD00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00EFF0F8007D8BF6007D8B
      F6007988F6007786F6007181F6006F80F5006477F4006274F300576AEE005366
      E8004B5CD4004756C400EFF0F800FFFFFF00FFFFFF00FFFFFF00B5DEFD00A1D1
      F9009BD0F80096CCF70091C9F6008BC5F50084C1F4007DBEF30075B9F3006DB5
      F00064B1EF005CACEF00FFFFFF00FFFFFF00FFFFFF00CBCBCB00E0E0E000FDFD
      FD00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FAFAFA00CECE
      CE00C8C8C800FFFFFF00FFFFFF00FFFFFF00CBCBCB00E0E0E000FDFDFD00FEFE
      FE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FAFAFA00CECECE00C8C8
      C800FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00EEEFF800EEEFF800EEEF
      F800EEEFF800EEEFF800EDEEF700EEEFF800EEEFF800EEEFF800EDEEF700EEEF
      F800EDEEF700EDEEF700EDEEF700FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00F4F4F400C6C6C600CFCF
      CF00E7E7E700F2F2F200FCFCFC00FBFBFB00ECECEC00DFDFDF00C1C1C100C0C0
      C000F6F6F600FFFFFF00FFFFFF00FFFFFF00F4F4F400C6C6C600CFCFCF00E7E7
      E700F2F2F200FCFCFC00FBFBFB00ECECEC00DFDFDF00C1C1C100C0C0C000F6F6
      F600FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF001838B2001838B2001838
      B2001838B2001838B2001838B2001838B2001838B2001838B2001838B2001838
      B2001838B2001838B2001838B200FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FDFDFD00E8E8
      E800CFCFCF00C3C3C300B7B7B700B7B7B700C2C2C200CCCCCC00E9E9E900FEFE
      FE00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FDFDFD00E8E8E800CFCF
      CF00C3C3C300B7B7B700B7B7B700C2C2C200CCCCCC00E9E9E900FEFEFE00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0082CEEC0040B3E100169F
      D70040ADDD0080C7E700E0F1F900FFFFFF00FFFFFF00E0F2FB007FC8EB003DA8
      DE001391D4003DA1D9007EC0E500E0EFF800FFFFFF0082CEEC0040B3E100169F
      D70040ADDD0080C7E700E0F1F900FFFFFF00FFFFFF00E0F2FB0048968B001B6E
      3E00186A36001B6D3E0048938800E0EFF800FFFFFF0082CEEC0040B3E100169F
      D70040ADDD0080C7E700E0F1F900FFFFFF00FFFFFF00E0F2FB005192D8000950
      BD000341BB00094EBC004485CF00E0EFF800FFFFFF00FFFFFF00898989008383
      83007E7E7E007979790074747400707070006B6B6B00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0097DBF2005ECAEC0089DFF50087E2
      F8006ED9F30046C0E5004EB3DF003FABDC001495D3002AA4DC0049C2EB0071D9
      F40070DDF60056D2F20038B7E40094CBEA0097DBF2005ECAEC0089DFF50087E2
      F8006ED9F30046C0E5004EB3DF003FABDC001495D30021868600278B520063B9
      8C0094D1B10063B98C00278B52005095870097DBF2005ECAEC0089DFF50087E2
      F8006ED9F30046C0E5004EB3DF003FABDC001495D300217DCF002564C9002076
      E5000478E9000063DC00044DBC004F8BD200FFFFFF00FFFFFF008F8F8F009292
      9200D5D3D300E2E0DF00DFDCDB00E1DFDF0070707000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0064CBEE008DDCF3009DE5FB0084DD
      F9007ADCF9006BD2F10023A8DE0060D0F00071DDF8002BB5EB007DD9F400B4ED
      FD00A6EAFD008EE2FA0057CEF0005FB5E30064CBEE008DDCF3009DE5FB0084DD
      F9007ADCF9006BD2F10023A8DE0060D0F00071DDF8001B6D3E0061B98A005FB9
      8600FEFEFE005FB8860066BB8E001B6D3B0064CBEE008DDCF3009DE5FB0084DD
      F9007ADCF9006BD2F10023A8DE0060D0F00071DDF8000750BE00629CF300177E
      FE000075F7000075ED000267E0000C50BC00FFFFFF00FFFFFF00FFFFFF009090
      90008B8B8B00C4C2C100D4CFCE007B7B7B007878780079797900747474007070
      70006B6B6B0067676700636363006060600015B6E800BEF0FC0073D8F6005AD0
      F50043CAF4008DE5FB0011A1DB0046C6F3002DB5F00012AEED00D5F6FE00BCEE
      FE00AAEAFE009EE6FE00ADEFFD000E97DB0015B6E800BEF0FC0073D8F6005AD0
      F50043CAF4008DE5FB0011A1DB0046C6F3002DB5F000307A4B009BD3B500FEFE
      FE00FEFEFE00FEFEFE0094D1B100186A360015B6E800BEF0FC0073D8F6005AD0
      F50043CAF40062D9F70011A1DB0046C6F3002DB5F0000341BB00ADCCFD00FEFE
      FE00FEFEFE00FEFEFE00177EEE000341BB00A7A7A700A2A2A2009C9C9C009797
      9700919191009E9E9E009A9A9A0082828200848484008787860087868500A2A0
      9F00D3CECD00D3CECD00E8E5E5006464640017BAEB00BCEEFB0098E2FA0088DE
      F90073D8F80062D9F70012A7DF005AD1F80043C8F60015B4F000C1EFFC00CDF3
      FE00C5F3FE00B7EEFD0088DFF50030AAE50017BAEB00BCEEFB0098E2FA0088DE
      F90073D8F80062D9F70012A7DF005AD1F80043C8F600428761008FD2B00091D5
      B000FEFEFE0064BB8B0066BB8E00196C3C0017BAEB00A9E9FA0098E2FA0088DE
      F90073D8F80062D9F70012A7DF005AD1F80043C8F6000552BF008CB4F5004C91
      FE001076FE002085FE003F89EA000850BE00AEAEAE00E0DDDD00D7D5D500D5D3
      D200D1CECD00CAC4C300C8C3C200CDC9C800CCCACA00CCCAC900D8D6D6007473
      7300B9B1AE00B7AFAE00D3CECD006868680018BFEE00A9E9FA0077D9F70060D3
      F50043CCF40065DAF70013ACE30035C0F1002AB6F00019B0F1001AB6F30013B2
      F00012AEEF0019ADED003EB8ED00B5E3F80018BFEE00A9E9FA0077D9F70060D3
      F50043CCF40065DAF70013ACE30035C0F1002AB6F000359FAC0060AA800094D3
      B300B9E5CF0069BA8E002C8E56005EA08D0018BFEE00A9E9FA0077D9F70060D3
      F50043CCF40065DAF70013ACE30035C0F1002AB6F0001B86DC003674D1008CB4
      F600B7D5FD0071A7F4002D6BCA00699EDD00B4B4B400E0DDDD00A7724D00A772
      4D00A7724D00A7724D00A7724D00A7724D00A7724D00A7724D00DAD5D4007878
      7800BAB2B100B9B1AF00D4CFCE006D6D6D001AC3F000CEF4FD00C2EFFD00BCEE
      FD00A1E6FB0098E7FB0014B2E6005DD2F80047CBF70035C1F40060D2F70011A0
      DB00FFFFFF00FFFFFF00FFFFFF00FFFFFF001AC3F000CEF4FD00C2EFFD00BCEE
      FD00A1E6FB0098E7FB0014B2E6005DD2F80047CBF70035C1F4005CB3B4005394
      73004E8D65004989610099BDA600FFFFFF001AC3F000CEF4FD00C2EFFD00BCEE
      FD00A1E6FB0098E7FB0014B2E6005DD2F80047CBF70035C1F4004098DF000D56
      C2000442BB001F59C00088A7DE00FFFFFF00BABABA00DEDBDB00B5805A00CE98
      7000D8AE9100CF997100D9AF9100DAAF9100D6A07700A7724D00D7D3D1007E7E
      7E00BBB4B300BBB3B100D4D0CF00737373001AC7F300D9F6FD00D0F3FE00C2F0
      FE00B6EDFE00BEF1FD0016B6EA0039C3F2002CBAF1001FAFEE0050C6F30011A4
      DE00FFFFFF00FFFFFF00FFFFFF00FFFFFF001AC7F300D9F6FD00D0F3FE00C2F0
      FE00B6EDFE00BEF1FD0016B6EA0039C3F2002CBAF1001FAFEE0050C6F30011A4
      DE00FFFFFF00FFFFFF00FFFFFF00FFFFFF001AC7F300D9F6FD00D0F3FE00C2F0
      FE00B6EDFE00BEF1FD0016B6EA0039C3F2002CBAF1001FAFEE0050C6F30011A4
      DE00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C0C0C000DFDCDC00B47F5900CB95
      6E00CD976F00CF997100D19B7200D29C7400D49E7500A7724D00D7D4D3008484
      84003BA1420037943700D6D1D0007878780085E3FA0090E0F900DEF7FE00D6F6
      FE00CBF3FE00A8E8F90029C1EF0063D5F8004BCEF7003AC5F50067D5F80013A9
      E100FFFFFF00FFFFFF00FFFFFF00FFFFFF0085E3FA0090E0F900DEF7FE00D6F6
      FE00CBF3FE00A8E8F90029C1EF0063D5F8004BCEF7003AC5F50067D5F80013A9
      E100FFFFFF00FFFFFF00FFFFFF00FFFFFF0085E3FA0090E0F900DEF7FE001AC7
      F400CBF3FE00A8E8F90029C1EF0063D5F8004BCEF7003AC5F50067D5F80013A9
      E100FFFFFF00FFFFFF00FFFFFF00FFFFFF00C5C5C500E1DEDC00B37D5800C791
      6B00C9936D00CB956E00CD977000CF997100D19B7300A7724D00D9D5D4008B8B
      8B00A0C8A40050A95600D7D3D1007E7E7E00F3FCFF0034D1F7001DCAF5001AC7
      F4001FC6F30019C1F10078DBF7003BC6F3002FBEF20022B4EF006BD6F80013AE
      E400FFFFFF00FFFFFF00FFFFFF00FFFFFF00F3FCFF0034D1F7001DCAF5001AC7
      F4001FC6F30019C1F10078DBF7003BC6F3002FBEF20022B4EF006BD6F80013AE
      E400FFFFFF00FFFFFF00FFFFFF00FFFFFF00F3FCFF0034D1F7001DCAF5001AC7
      F4001FC6F30019C1F10078DBF7003BC6F3002FBEF20022B4EF006BD6F80013AE
      E400FFFFFF00FFFFFF00FFFFFF00FFFFFF00CACACA00E1DFDE00B17C5700C48E
      6800C6906A00C8926B00CA946D00CC966F00CE987000A7724D00DBD6D6009191
      9100C1BBB900C0B9B800D7D3D30084848400FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0018C2F000A1E8FB0068D8F90050D1F8003DC8F60059CBF40014B2
      E700FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0018C2F000A1E8FB0068D8F90050D1F8003DC8F60059CBF40014B2
      E700FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0018C2F000A1E8FB0068D8F90050D1F8003DC8F60059CBF40014B2
      E700FFFFFF00FFFFFF00FFFFFF00FFFFFF00CECECE00E2DFDF00B07B5600B17B
      5600B17C5700B27D5800B37E5800B47F5900B5805A00A7724D00DCD8D7009898
      98008D8D8D008A8A8A00D9D5D4008B8B8B00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF001AC5F20086E1F9003FCAF40033C3F20024B9F0005BCCF50016B6
      EA00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF001AC5F20086E1F9003FCAF40033C3F20024B9F0005BCCF50016B6
      EA00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF001AC5F20086E1F9003FCAF40033C3F20024B9F0005BCCF50016B6
      EA00FFFFFF00FFFFFF00FFFFFF00FFFFFF00D3D3D300F1EFEF00E2DFDF00E2DF
      DF00E1DFDE00E1DEDD00E0DDDC00DFDCDB00DEDBDB00DEDBD900EDECEB009E9E
      9E00C5BFBE00C3BDBB00DAD6D50091919100FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF001BC8F300B9EFFC00A9E9FD00A1E8FD0078DCFA007ADEFA0016BA
      EC00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF001BC8F300B9EFFC00A9E9FD00A1E8FD0078DCFA007ADEFA0016BA
      EC00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF001BC8F300B9EFFC00A9E9FD00A1E8FD0078DCFA007ADEFA0016BA
      EC00FFFFFF00FFFFFF00FFFFFF00FFFFFF00D6D6D600D3D3D300D0D0D000CCCC
      CC00C8C8C800C3C3C300BFBFBF00BABABA00B5B5B500B0B0B000AAAAAA00A5A5
      A5009493930092919100DBD7D60098989800FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF001BCBF500D5F6FE00BBEEFE00AAEAFE0099E5FE00A6ECFC0017BE
      EF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF001BCBF500D5F6FE00BBEEFE00AAEAFE0099E5FE00A6ECFC0017BE
      EF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF001BCBF500D5F6FE00BBEEFE00AAEAFE0099E5FE00A6ECFC0017BE
      EF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00CFCFCF00CBCBCB00DFDFDF00EAEAEA00CFCAC900CBC6C500CAC4
      C300C8C3C100C7C1C100DCD9D8009E9E9E00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0028D0F600A1E6FA00D2F5FE00C6F3FE00BAF0FE00A1E8FA0039CA
      F300FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0028D0F600A1E6FA00D2F5FE00C6F3FE00BAF0FE00A1E8FA0039CA
      F300FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0028D0F600A1E6FA00D2F5FE00C6F3FE00BAF0FE00A1E8FA0039CA
      F300FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00D0D0D000CCCCCC00DCDCDC00E6E3E300E1DEDC00DFDC
      DC00DFDCDB00DEDBDB00EEECEC00A5A5A500FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00DFF8FE0035D3F80020CEF6001BCBF50021CAF40046D2F500B8ED
      FB00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00DFF8FE0035D3F80020CEF6001BCBF50021CAF40046D2F500B8ED
      FB00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00DFF8FE0035D3F80020CEF6001BCBF50021CAF40046D2F500B8ED
      FB00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00CDCDCD00C9C9C900C4C4C400C0C0
      C000BBBBBB00B6B6B600B0B0B000ABABAB00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF006D6D6D00585858005151510052525200FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00C6C6C600818181007C7C7C00BBBBBB00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00C6C6C600818181007C7C7C00BBBBBB0014863100027A
      1D00FBFDFB00FFFFFF00FFFFFF00FFFFFF0013A8DE0013A4DC0011A1DA00119E
      D700119AD5001097D3001094D100FFFFFF00FFFFFF00109CDE000F98DA000E93
      D7000E8FD4000D8BD1000D89CE000D85CC00FFFFFF00FFFFFF00FFFFFF006F6F
      6F006A6A6A007A7A7A0081818100BDBDBD00B2B2B2005B5B5B005A5A5A005C5C
      5C004E4E4E00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00E8E8
      E800F7F7F700FEFEFE008A8A8A00BCBCBC00B1B1B10068686800FEFEFE00F6F6
      F600E2E2E200FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00E8E8
      E800F7F7F700FEFEFE008A8A8A00BCBCBC00B1B1B10068686800148C3B0042A0
      5E002D8F4600F9FCFA00FFFFFF00FFFFFF0014ADE2005FCBED008AE0F60088E3
      F9006FDAF40047C1E6001099D5001097D4000F93D3001099D9004AC3EC0072DA
      F50071DEF70057D3F30039B8E5000D8AD100FFFFFF00FFFFFF00818181006F6F
      6F00646464007676760083838300CBCBCB00C7C7C700626262005A5A5A005858
      58004E4E4E0049494900FFFFFF00FFFFFF00FFFFFF00FFFFFF00B2B2B2006F6F
      6F0072727200F1F1F1008E8E8E00CACACA00C6C6C60070707000EFEFEF006767
      67004E4E4E0090909000FFFFFF00FFFFFF00FFFFFF00FFFFFF00B2B2B2006F6F
      6F0072727200F1F1F100219650001B904900158E43000F8A3A00399E5D007FC0
      950045A2610019803300F8FBF900FFFFFF0016B2E6008EDDF4009EE6FC0085DE
      FA007BDDFA006CD3F20024A9DF0061D1F10072DEF9002CB6EC007EDAF500B5EE
      FE00A7EBFE008FE3FB0058CFF1000E91D600FFFFFF00A4A4A400BCBCBC00DEDE
      DE00A6A6A6008383830085858500C4C4C400C2C2C2006D6D6D006E6E6E00A6A6
      A600D2D2D2008080800052525200FFFFFF00FFFFFF00D3D3D300BBBBBB00DDDD
      DD00A5A5A5008787870084848400C3C3C300C1C1C1006D6D6D0073737300A5A5
      A500D1D1D1007F7F7F00ABABAB00FFFFFF00FFFFFF00D3D3D300BBBBBB00DDDD
      DD00A5A5A50087878700289A5A008FC9A8008CC7A40089C5A00087C49D0069B5
      840081C1960047A465001B833600F6FAF70016B7E900BFF1FD0074D9F7005BD1
      F60044CBF5008EE6FC0012A2DC0047C7F4002EB6F10013AFEE00D6F7FF00BDEF
      FF00ABEBFF009FE7FF00AEF0FE000F98DC00FFFFFF00ABABAB00A6A6A600D5D5
      D500C5C5C500CBCBCB00D1D1D100C9C9C900C7C7C700CCCCCC00C5C5C500BDBD
      BD00CBCBCB006E6E6E0067676700FFFFFF00FFFFFF00D5D5D500A5A5A500D4D4
      D400C4C4C400CACACA00D0D0D000C8C8C800C6C6C600CBCBCB00C4C4C400BCBC
      BC00CACACA006E6E6E00B4B4B400FFFFFF00FFFFFF00D5D5D500A5A5A500D4D4
      D400C4C4C400CACACA00309E620093CCAC006EB98D006AB7880065B5840060B2
      7F0066B4810082C197003B9F5B000681290018BBEC00BDEFFC0099E3FB0089DF
      FA0074D9F90063DAF80013A8E0005BD2F90044C9F70016B5F100C2F0FD00CEF4
      FF00C6F4FF00B8EFFE0089E0F600109EE200FFFFFF00FFFFFF00ACACAC00C5C5
      C500C1C1C100C5C5C500C7C7C700AAAAAA00A7A7A700C1C1C100BEBEBE00B5B5
      B500AAAAAA0069696900FFFFFF00FFFFFF00FFFFFF00FFFFFF00D3D3D300C4C4
      C400C0C0C000C4C4C400C6C6C600A9A9A900A6A6A600C0C0C000BDBDBD00B4B4
      B400A9A9A900B0B0B000FFFFFF00FFFFFF00FFFFFF00FFFFFF00D3D3D300C4C4
      C400C0C0C000C4C4C40036A26A0095CDAF0093CCAC0090CAA9008FCAA70073BB
      8F0089C6A00045A467000A883700FEFFFE0019C0EF00AAEAFB0078DAF80061D4
      F60044CDF50066DBF80014ADE40036C1F2002BB7F1001AB1F2001BB7F40014B3
      F10013AFF00013ACED0011A8EA0011A5E800A3A3A3008F8F8F00A0A0A000CFCF
      CF00C6C6C600CCCCCC009E9E9E0099999900949494008F8F8F00C1C1C100BCBC
      BC00B9B9B900646464005858580053535300B4B4B4009A9A9A00A5A5A500CECE
      CE00C5C5C500CBCBCB00B3B3B300E4E4E400E2E2E200A7A7A700C0C0C000BBBB
      BB00B8B8B8006D6D6D006969690074747400B4B4B4009A9A9A00A5A5A500CECE
      CE00C5C5C500CBCBCB003CA46E0038A36E0034A16800309C620054AE7B0090CA
      A9004EAA7300178D440069696900747474001BC4F100CFF5FE00C3F0FE00BDEF
      FE00A2E7FC00BFF2FE0015B3E7005ED3F90048CCF80036C2F50061D3F80012A1
      DC00FFFFFF00FFFFFF00FFFFFF00FFFFFF00BFBFBF00E2E2E200D2D2D200C6C6
      C600CDCDCD00B1B1B10093939300FFFFFF00FFFFFF0095959500A8A8A800C2C2
      C200B7B7B700C0C0C000D2D2D20061616100BFBFBF00E1E1E100D1D1D100C5C5
      C500CCCCCC00B0B0B000E2E2E200FFFFFF00FFFFFF00E2E2E200A7A7A700C1C1
      C100B6B6B600BFBFBF00D1D1D10061616100BFBFBF00E1E1E100D1D1D100C5C5
      C500CCCCCC00B0B0B000E2E2E200FFFFFF00FFFFFF00E2E2E200399F670059B2
      800027975600BFBFBF00D1D1D100616161001BC8F400DAF7FE00D1F4FF00C3F1
      FF00B7EEFF00BFF2FE0017B7EB003AC4F3002DBBF20020B0EF0051C7F40012A5
      DF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C4C4C400E9E9E900D6D6D600C9C9
      C900CECECE00A5A5A50084848400FFFFFF00FFFFFF009A9A9A00ACACAC00C4C4
      C400BABABA00C6C6C600DDDDDD006B6B6B00C3C3C300E8E8E800D5D5D500C8C8
      C800CDCDCD00A4A4A400DEDEDE00FFFFFF00FFFFFF00E4E4E400ABABAB00C3C3
      C300B9B9B900C5C5C500DCDCDC006B6B6B00C3C3C300E8E8E800D5D5D500C8C8
      C800CDCDCD00A4A4A400DEDEDE00FFFFFF00FFFFFF00E4E4E4003FA36F00309E
      6400B9B9B900C5C5C500DCDCDC006B6B6B001CCBF60091E1FA00DFF8FF00D7F7
      FF00CCF4FF00A9E9FA002AC2F00064D6F9004CCFF8003BC6F60068D6F90014AA
      E200FFFFFF00FFFFFF00FFFFFF00FFFFFF00C8C8C800C4C4C400C0C0C000D8D8
      D800CDCDCD00BCBCBC0082828200777777007E7E7E008F8F8F00C3C3C300C2C2
      C200CDCDCD008C8C8C008787870083838300D2D2D200CACACA00C3C3C300D7D7
      D700CCCCCC00BBBBBB009D9D9D00DADADA00DCDCDC00A7A7A700C2C2C200C1C1
      C100CCCCCC0093939300939393009B9B9B00D2D2D200CACACA00C3C3C300D7D7
      D700CCCCCC00BBBBBB009D9D9D00DADADA00DCDCDC00A7A7A700C2C2C200C1C1
      C100CCCCCC0093939300939393009B9B9B001ECEF8001DCCF7001BCAF6001BC8
      F5001AC5F4001AC2F20079DCF8003CC7F40030BFF30023B5F0006CD7F90014AF
      E500FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C5C5C500D4D4
      D400CCCCCC00C9C9C900BABABA009C9C9C00A1A1A100C2C2C200C6C6C600C1C1
      C100B7B7B70089898900FFFFFF00FFFFFF00FFFFFF00FFFFFF00E0E0E000D3D3
      D300CBCBCB00C8C8C800B9B9B9009B9B9B00A0A0A000C1C1C100C5C5C500C0C0
      C000B6B6B600C1C1C100FFFFFF00FFFFFF00FFFFFF00FFFFFF00E0E0E000D3D3
      D300CBCBCB00C8C8C800B9B9B9009B9B9B00A0A0A000C1C1C100C5C5C500C0C0
      C000B6B6B600C1C1C100FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0019C3F100A2E9FC0069D9FA0051D2F9003EC9F7005ACCF50015B3
      E800FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00CACACA00C4C4C400DCDC
      DC00D4D4D400D9D9D900DBDBDB00D6D6D600D4D4D400D9D9D900D2D2D200CBCB
      CB00C8C8C8007979790071717100FFFFFF00FFFFFF00E5E5E500C3C3C300DBDB
      DB00D3D3D300D8D8D800DADADA00D5D5D500D3D3D300D8D8D800D1D1D100CACA
      CA00C7C7C70079797900B9B9B900FFFFFF00FFFFFF00E5E5E500C3C3C300DBDB
      DB00D3D3D300D8D8D800DADADA00D5D5D500D3D3D300D8D8D800D1D1D100CACA
      CA00C7C7C70079797900B9B9B900FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF001BC6F30087E2FA0040CBF50034C4F30025BAF1005CCDF60017B7
      EB00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00D0D0D000DCDCDC00EDED
      ED00DBDBDB00C2C2C200BEBEBE00D6D6D600D4D4D400B0B0B000ACACAC00CBCB
      CB00E7E7E700B7B7B7008B8B8B00FFFFFF00FFFFFF00E8E8E800DBDBDB00ECEC
      EC00DADADA00C4C4C400BDBDBD00D5D5D500D3D3D300AFAFAF00AFAFAF00CACA
      CA00E6E6E600B6B6B600C7C7C700FFFFFF00FFFFFF00E8E8E800DBDBDB00ECEC
      EC00DADADA00C4C4C400BDBDBD00D5D5D500D3D3D300AFAFAF00AFAFAF00CACA
      CA00E6E6E600B6B6B600C7C7C700FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF001CC9F400BAF0FD00AAEAFE00A2E9FE0079DDFB007BDFFB0017BB
      ED00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00D1D1D100CECE
      CE00CACACA00C6C6C600C2C2C200DEDEDE00DDDDDD00B2B2B200B1B1B100ACAC
      AC00A7A7A700A3A3A300FFFFFF00FFFFFF00FFFFFF00FFFFFF00E2E2E200CDCD
      CD00CECECE00F9F9F900C7C7C700DDDDDD00DCDCDC00B8B8B800F7F7F700B3B3
      B300A7A7A700C6C6C600FFFFFF00FFFFFF00FFFFFF00FFFFFF00E2E2E200CDCD
      CD00CECECE00F9F9F900C7C7C700DDDDDD00DCDCDC00B8B8B800F7F7F700B3B3
      B300A7A7A700C6C6C600FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF001CCCF600D6F7FF00BCEFFF00ABEBFF009AE6FF00A7EDFD0018BF
      F000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00D1D1
      D100CECECE00CBCBCB00C7C7C700E5E5E500E4E4E400ACACAC00B6B6B600B2B2
      B200ADADAD00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00F7F7
      F700FCFCFC00FFFFFF00CBCBCB00E4E4E400E3E3E300B2B2B200FEFEFE00FBFB
      FB00F2F2F200FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00F7F7
      F700FCFCFC00FFFFFF00CBCBCB00E4E4E400E3E3E300B2B2B200FEFEFE00FBFB
      FB00F2F2F200FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF001ECFF700A2E7FB00D3F6FF00C7F4FF00BBF1FF00A2E9FB001AC3
      F200FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00CBCBCB00C7C7C700C4C4C400BFBFBF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00EAEAEA00D4D4D400D2D2D200E6E6E600FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00EAEAEA00D4D4D400D2D2D200E6E6E600FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF001FD1F9001ECFF8001ECEF7001CCCF6001CCAF5001BC8F4001BC6
      F400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0094AFE300225B
      C1000442BB001E59C00086A6DD00FFFFFF00FFFFFF00FFFFFF00FFFFFF008585
      850080808000C5C5C500FFFFFF00FFFFFF00FFFFFF00FFFFFF00BCBCBC006464
      640061616100FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF008585
      850080808000C5C5C500FFFFFF00FFFFFF00FFFFFF008CAAE0002764C7002076
      E5000478E9000063DC00064EBD0086A6DD00FFFFFF00CBCBCB008F8F8F00ABAB
      AB00C8C8C800A5A5A5007D7D7D0078787800747474007070700098989800C4C4
      C4009494940077777700FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00F5F5
      FE00928EF400504AEE001C14E700D6D5FB00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00CBCBCB008F8F8F00ABAB
      AB00C8C8C800A5A5A5007D7D7D0078787800747474000E49B000629CF300177E
      FE000075F7000075ED000267E0001D58C000FFFFFF00CDCDCD00FFFFFF00CECE
      CE0099999900CACACA00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C0C0C0007E7E
      7E00BDBDBD006A6A6A00FFFFFF00FFFFFF0057B7630054B5600052B35D004FB1
      5A00FFFFFF00FFFFFF003CA0440035993C002F923500298B2E00FFFFFF00FFFF
      FF00207E23001F7D23001F7C22001F7C2200FFFFFF00FFFFFF00CBCAFB00514D
      F2005755EA006B6CE600322CE800D7D6FB00A96A4700A86C4C00C49E8A00F9F6
      F400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00CDCDCD00FFFFFF00CECE
      CE0099999900CACACA00FFFFFF00FFFFFF00FFFFFF000442BB00ADCCFD00FEFE
      FE00FEFEFE00FEFEFE00177EEE000442BB00FFFFFF00F0F0F000C2C2C2009696
      9600919191008C8C8C0087878700838383007E7E7E007A7A7A00757575007171
      7100FFFFFF006F6F6F00FFFFFF00FFFFFF005BBA6700A7D7AD00A4D6AB0053B4
      5E00FFFFFF00FFFFFF0044A74D007EC5870071BF7B002F933500FFFFFF00FFFF
      FF00218125004FAC56004EAB54001F7C2200FFFFFF00C6C6FC006161F2007C7E
      ED009398EA008C90E8003A36EB00D9D7FB00B16F4C00D58D6100B76542009B5A
      3700DDC8BD00FFFFFF00FFFFFF00FFFFFF00FFFFFF00F0F0F000C2C2C2009696
      9600919191008C8C8C0087878700838383007E7E7E00124AB0008CB4F5004C91
      FE001076FE002085FE003F89EA00235BC100FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FCFC
      FC007272720079797900FFFFFF00FFFFFF005EBD6B00ABD9B000A8D8AE0056B7
      6200FFFFFF00FFFFFF004BAF56008DCB950082C78B00379B3E00FFFFFF00FFFF
      FF002586290052AE590050AD5700207E2300F3F3FF006666F7009498F100A4A9
      ED007A80E5009699EA00433FEE00DAD9FC00B7765100DA986F00E5A37E00CA7F
      5600A5543000D7BFB300FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0096B0E3003C75D1008CB4
      F600B7D5FD0071A7F4002E6CCB0093AEE100FFFFFF00FFFFFF00FFFFFF00A0A0
      A0009C9C9C0097979700929292008E8E8E008989890084848400808080007E7E
      7E00B0B0B00074747400FFFFFF00FFFFFF0062C06F005FBE6C005DBC69005ABA
      6700FFFFFF00FFFFFF0053B45E004CB0570046A94F003EA24700FFFFFF00FFFF
      FF002B8E2F00268729002282250021802500F6F6FF00A6A6FB006565F8008384
      F300A2A7EE009FA4EC004E4BF000DCDBFC00C07D5700DDA07800DD885A00E5A5
      7E00CF865B00944D2600F5EFEC00FFFFFF00FFFFFF00FFFFFF00FFFFFF00A0A0
      A0009C9C9C0097979700929292008E8E8E008989890084848400516DA0001A52
      B7000441BB000F49B00088A7DE00FFFFFF00FFFFFF00FFFFFF00D6D6D600C9C9
      C900D9D9D900B1B1B100D6D6D600A9A9A900D2D2D200A2A2A200CFCFCF009A9A
      9A00CBCBCB0078787800FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00AAD1AE00B1D3B400EEF0FA00A9AA
      FB006363F7007B7DF2005857F300DDDDFD00C5855D00E0A78000DF916300D878
      4B00E6A78300BD6F4900C69E8900FFFFFF00FFFFFF00FFFFFF00D6D6D600C9C9
      C900D9D9D900B1B1B100D6D6D600A9A9A900D2D2D200A2A2A200CFCFCF009A9A
      9A00CBCBCB0078787800FFFFFF00FFFFFF00FFFFFF00FFFFFF00AFAFAF00F3F3
      F300B8B8B800EBEBEB00B1B1B100E9E9E900AAAAAA00E7E7E700A3A3A300E5E5
      E5009B9B9B007D7D7D00FFFFFF00FFFFFF00FFFFFF00FFFFFF00B7B7B700FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF005C5C5C00FFFFFF00FFFFFF006EB575008FBE92004E9B5400A6CA
      A900EBEFF600B1B1FB006160F700E0DFFD00CD8D6400E3AF8A00E29B6C00DC84
      5300E1956600D9966C00AC6D4B00FFFFFF00FFFFFF00FFFFFF00AFAFAF00F3F3
      F300B8B8B800EBEBEB00B1B1B100E9E9E900AAAAAA00E7E7E700A3A3A300E5E5
      E5009B9B9B007D7D7D00FFFFFF00FFFFFF00FFFFFF00B7B7B700D1D1D100BFBF
      BF00DDDDDD00B9B9B900D9DAD9000786350037945000ABABAB00D3D3D300A3A3
      A300CFCFCF0088888800F9F9F900FFFFFF00FFFFFF00FFFFFF00BDBDBD00BBBB
      BB00B8B8B800B3B3B300ABABAB00A1A1A100989898008D8D8D00818181007676
      76006C6C6C0063636300FFFFFF00FFFFFF005FB36800C9E7C700AED8AA0091BE
      930047944D009AC19D00F5F4F900F6F2F500D3966A00E6B69200E6A57600DF8F
      5C00DD8D5B00E5AC8700A65A3100FFFFFF00FFFFFF00B7B7B700D1D1D100BFBF
      BF00DDDDDD00B9B9B900DADADA00B2B2B200D6D6D600ABABAB00D3D3D300A3A3
      A300CFCFCF0088888800F9F9F900FFFFFF00FFFFFF00BBBBBB00C5C5C500EFEF
      EF00C0C0C000EDEDED00198F460045A4670047A46500439B5900ABABAB00E8E8
      E800A4A4A40099999900ECECEC00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00B5B5B500B0B0B000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0063B96E00B5DFB0007ACB6E0091D1
      8800ACD8A80088B78A0082B38500F1DAC700D28C5900EEC7A800E5A57200E19A
      6600E1976500E6B28E00AF653900FFFFFF00FFFFFF00BBBBBB00C5C5C500EFEF
      EF00C0C0C000EDEDED00BABABA00ECECEC00B2B2B200EAEAEA00ABABAB00E8E8
      E800A4A4A40099999900ECECEC00FFFFFF00C1C1C100D7D7D700E2E2E200C6C6
      C600E0E0E000279756004EAA730089C6A00081C1960045A2610056A06900ABAB
      AB00D3D3D300AAAAAA00E0E0E000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0084CC8E00B9DEB70079CB6C0065C5
      580071C76500A7D9A20067A76C00D0E2D100E0AB8200E5B48D00EFCBAB00E4A5
      7000E8B08300E2AE8700C1805A00FFFFFF00C1C1C100D7D7D700E2E2E200C6C6
      C600E0E0E000C1C1C100DEDEDE00BABABA00DADADA00B3B3B300D7D7D700ABAB
      AB00D3D3D300AAAAAA00E0E0E000FFFFFF00C3C3C300FBFBFB00F8F8F800F8F8
      F800309E640059B2800090CAA90073BB8F0069B584007FC0950042A05E001680
      2D00F0F0F000D7D7D7009C9C9C00CECECE00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00E0A36C00D6985E00CC8B4F00C37D4100FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00B6E2BC00B2D9B400A1D799006CC9
      5E0065C557007FCB7400A2CDA20062A76800F6EBE000D8935F00F1D0B100EAB8
      8C00EFC8A900D79B6F00DCB39A00FFFFFF00C3C3C300FBFBFB00F8F8F800F8F8
      F800F8F8F800F8F8F800F8F8F800F8F8F800F8F8F800F8F8F800F2F2F200A6A6
      A600F0F0F000D7D7D7009C9C9C00CECECE00C4C4C400C4C4C400C2C2C200BFBF
      BF0041A470003BA0690054AE7B008FCAA70087C49D00399E5D000D8534000C7F
      2A00C4C4C400FAFAFA00E3E3E300A2A2A200FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00E8AF7C00ECCABF00E9C2B700CD8C5000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00F6FCF7007ACC8700BDE0BD0093D3
      88006DC961006DC85F009DD5960092C09500B0D3B300EBC4A400E6B38D00F2D2
      B400E8BA9700CC855300FBF5F200FFFFFF00C4C4C400C4C4C400C2C2C200BFBF
      BF00BCBCBC00B9B9B900B6B6B600B2B2B200AEAEAE00AAAAAA00A6A6A600A1A1
      A100C4C4C400FAFAFA00E3E3E300A2A2A200FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0032A0660093CCAC008CC7A400148E4200FFFFFF00FFFF
      FF00A2A2A2009D9D9D0099999900D8D8D800FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00EFB88A00EFD3C800EDCCC100D79B5F00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00D5F0DA009FD4A700B9DF
      BA00A6D99F007CCD6F007ECC7200AFD8AC0056A75D00F1F1E800E0A47200EAC1
      9D00DCA17200F0D9C800FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00A2A2A2009D9D9D0099999900D8D8D800FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0039A36E0095CDAF008FC9A8001C914900FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00F3BF9400EFB98A00E9B17E00E1A76F00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00DFF3E20089D2
      9400B3DBB600BBDFB900B8E0B400CDE9CA00A3CDA50095C89A00F3D9C300E2AB
      7C00F6E6D800FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF003CA46E0036A26A00289A5A0022975100FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00F9FD
      FA00BCE6C30092D49B006BC2780064BC70007FC58800ABD6B000FEFEFD00FEFB
      F900FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0084B094002472
      4000186A36002472400084B09400FFFFFF00FFFFFF00D7A27900D2986D00D095
      6700CD916200CA8D5D00C8895A00C6865500C2835100C2835100C2835100C283
      5100C2835100C2835100C0835300FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00B9BCF000676DDF004048D600434BD7004048D700353ED5005960DC00AFB2
      EE00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF008686
      8600818181007D7D7D00FFFFFF00FFFFFF00FFFFFF00FFFFFF00686868006565
      650062626200FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF008585
      850080808000C5C5C500FFFFFF00FFFFFF00FFFFFF0087B29700278B520063B9
      8C0094D1B10063B98C00278B520080AD9100FFFFFF00D6A07400F7F1EC00F6EF
      E900F5ECE500F3E9E100F2E6DD00F0E3DA00EFE1D700EFE1D700EFE1D700EFE1
      D700EFE1D700EFE1D700C4895C00FFFFFF00FFFFFF00FFFFFF00FFFFFF00BABD
      F0005760DF008A96F50099A6FB0093A0F800909EF600929FF6007F8BED00404A
      D900AEB1EE00FFFFFF00FFFFFF00FFFFFF00FFFFFF009595950090909000ACAC
      AC00C9C9C900A6A6A6007E7E7E0079797900757575007171710099999900C5C5
      C5009595950062626200FFFFFF00FFFFFF00FFFFFF00CBCBCB008F8F8F00ABAB
      AB00C8C8C800A5A5A5007D7D7D0078787800747474001D6B3A0061B98A005FB9
      8600FEFEFE005FB8860066BB8E001F6F3C00FFFFFF00D8A37900F8F2ED00EAD1
      BD00FEFEFE00EAD2BE00FEFEFE00EAD2BF00FEFEFE00FEFEFE00FEFEFE00FEFE
      FE00FEFEFE00EFE1D700C58B5E00FFFFFF00FFFFFF00FFFFFF00BCBEF1005F67
      E000919DF600657CFE003D58FE003B57FE003752FD002F4BF8005269F600808C
      F0003F48D900ABAFED00FFFFFF00FFFFFF00FFFFFF009A9A9A00FFFFFF009191
      91008C8C8C0088888800FFFFFF00FFFFFF00FFFFFF00FFFFFF00717171006D6D
      6D006A6A6A0066666600FFFFFF00FFFFFF00FFFFFF00CDCDCD00FFFFFF00CECE
      CE0099999900CACACA00FFFFFF00FFFFFF00FFFFFF00307A4B009BD3B500FEFE
      FE00FEFEFE00FEFEFE0094D1B100186A3600FFFFFF00DCA77D00F8F2EE00EACF
      B900EACFBA00E9CCB400E9CCB400E9CCB400EAD0BC00E9CCB400E9CCB400E9CC
      B400E9CCB400EFE1D700C5895B00FFFFFF00FFFFFF00C0C3F1006970E20098A5
      F7006F87FE004260FE003E5CFE003956FE003552FE00304DFE002B49FE00556C
      FA00828FF300404AD900ADB0EE00FFFFFF00FFFFFF00A0A0A0009B9B9B009797
      9700929292008D8D8D0088888800848484007F7F7F007B7B7B00767676007272
      7200FFFFFF006A6A6A00FFFFFF00FFFFFF00FFFFFF00F0F0F000C2C2C2009696
      9600919191008C8C8C0087878700838383007E7E7E0045865D008FD2B00091D5
      B000FEFEFE0064BB8B0066BB8E001F6F3C00FFFFFF00DEA98100F8F2EE00E9CD
      B600FEFEFE00E9CCB400FEFEFE00E9CCB400FEFEFE00E9CEB900FEFEFE00E9CC
      B400FEFEFE00EFE1D700C78C5E00FFFFFF00FFFFFF008186E5009EACF8007891
      FE004E6DFE006D86FE008EA0FE00405EFE003B5AFE008195FE00647AFE002C4B
      FE00566DFE00828FF500585FDC00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF007777
      7700737373006F6F6F00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00A7C6B30060AA800094D3
      B300B9E5CF0069BA8E002C8E560080AD9100FFFFFF00E0AD8600F9F3EF00E9CA
      B100E9CBB200E9CCB400E9CCB400E9CCB400E9CCB400E9CCB400E9CCB400E9CC
      B400E7C7AD00EFE1D700C3855300FFFFFF00FFFFFF006B70DF00AFBFFD005D7E
      FE005675FE0095A8FE00FEFEFE00AAB8FE009AABFE00FEFEFE009AAAFE003352
      FE003351FE0096A5FD003840D500FFFFFF00FFFFFF00FFFFFF00FFFFFF00A1A1
      A1009D9D9D0098989800939393008F8F8F008A8A8A0085858500818181007F7F
      7F00B1B1B10074747400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00A0A0
      A0009C9C9C0097979700929292008E8E8E0089898900848484006D8977005992
      6E004E8D65004282590099BDA600FFFFFF00FFFFFF00E2B08B00F9F5F000E9C8
      FD00FEFEFE00E9C8AF00FEFEFE00E8CAB200FEFEFE00E9CCB400FEFEFE00E9CC
      B400FEFEFE00EFE1D700C5855400FFFFFF00FFFFFF00767BE100B0BFFC006788
      FE005D7EFE005D7EFE00AEBEFE00FEFEFE00FEFEFE00B8C4FE004867FE003A5A
      FE003C5BFE0096A4FB00444DD800FFFFFF00FFFFFF00FFFFFF00ABABAB00CACA
      CA00DADADA00B2B2B200D7D7D700AAAAAA00D3D3D300A3A3A300D0D0D0009B9B
      9B00CCCCCC0078787800FFFFFF00FFFFFF00FFFFFF00FFFFFF00D6D6D600C9C9
      C900D9D9D900B1B1B100D6D6D600A9A9A900D2D2D200A2A2A200CFCFCF009A9A
      9A00CBCBCB0078787800FFFFFF00FFFFFF00FFFFFF00E4B38E00F9F5F100E8C5
      A900E8C5AB00E9C6AB00E8C6AC00E8C8AD00E8C8AF00E9CCB400E9CCB400E9CC
      B400E7CBB400EFE1D700C7895800FFFFFF00FFFFFF007A7FE300B3C4FC006E91
      FE006387FE005F83FE00A7B9FE00FEFEFE00FEFEFE00AFBFFE004A6BFE004162
      FE004363FE0099A8FB004950D900FFFFFF00FFFFFF00FFFFFF00B0B0B000F4F4
      F400B9B9B900A3A3A300B2B2B2009A9A9A00ABABAB0090909000A4A4A4008787
      87009C9C9C007E7E7E00FFFFFF00FFFFFF00FFFFFF00FFFFFF00AFAFAF00F3F3
      F300B8B8B800EBEBEB00B1B1B100E9E9E900AAAAAA00E7E7E700A3A3A300E5E5
      E5009B9B9B007D7D7D00FFFFFF00FFFFFF00FFFFFF00E6B69300FAF6F300FEFE
      FE00FEFEFE00E7C3A800FEFEFE00E8C5A900FEFEFE00E7C6AB00FEFEFE00E7C7
      AF00FEFEFE00F6F0EA00CA8E5E00FFFFFF00FFFFFF00797EE300BACBFD007196
      FE006A8FFE009EB5FE00FEFEFE00C1CEFE00B4C4FE00FEFEFE0092A8FE00486A
      FE004668FE009FB0FD00464ED800FFFFFF00FFFFFF00B8B8B800D2D2D200C0C0
      C000DEDEDE00BABABA00DBDBDB00B3B3B300D7D7D700ACACAC00D4D4D400A4A4
      A400D0D0D000898989007E7E7E00FFFFFF00FFFFFF00B7B7B700D1D1D100BFBF
      BF00DDDDDD00B9B9B900DADADA00B2B2B200D6D6D600ABABAB00D3D3D300A3A3
      A300CFCFCF0088888800F9F9F900FFFFFF00FFFFFF00E8B99700FAF6F30064A3
      FE0063A2FE0061A1FE0060A0FE005E9EFE005B9CFE005999FE005697FE005394
      FE005193FE00FAF6F300CD926300FFFFFF00FFFFFF009499E800AFC0F80093B2
      FE007098FE008FADFE00B0C4FE00678DFE005E84FE009BB1FE007694FE004F73
      FE00718DFE0092A2F6006D73E000FFFFFF00FFFFFF00BCBCBC00C6C6C600B5B5
      B500C1C1C100ADADAD00BBBBBB00A4A4A400B3B3B3009B9B9B00ACACAC009292
      9200A5A5A5009A9A9A0084848400FFFFFF00FFFFFF00BBBBBB00C5C5C500EFEF
      EF00C0C0C000EDEDED00BABABA00ECECEC00B2B2B200EAEAEA00ABABAB00E8E8
      E800A4A4A40099999900ECECEC00FFFFFF00FFFFFF00EABC9A00FAF6F30063A3
      FE0078BCFE0074BAFE0070B8FE006CB7FE0067B2FE0060AFFE0059AAFE0053A6
      FE003A7CFE00FAF6F300D0966900FFFFFF00FFFFFF00CDCFF400868FE700B0C1
      F80095B6FE00739CFE006F98FE006A92FE00658DFE006188FE005B82FE007B99
      FE0099A9F7006069E000BCBEF100FFFFFF00C2C2C200D8D8D800E3E3E300C7C7
      C700E1E1E100C2C2C200DFDFDF00BBBBBB00DBDBDB00B4B4B400D8D8D800ACAC
      AC00D4D4D400ABABAB0089898900FFFFFF00C1C1C100D7D7D700E2E2E200C6C6
      C600E0E0E000C1C1C100DEDEDE00BABABA00DADADA00B3B3B300D7D7D700ABAB
      AB00D3D3D300AAAAAA00E0E0E000FFFFFF00FFFFFF00EBBE9D00FAF6F30064A3
      FE0063A2FE005F9FFE005C9DFE005798FE005395FE004C8FFE00468AFE004183
      FE003C7EFE00FAF6F300D39A6E00FFFFFF00FFFFFF00FFFFFF00CECFF400878F
      E700B1C2F80096B8FE0078A2FE0076A0FE00729BFE006B94FE0084A3FE00A0B0
      F7006871E200BEC0F100FFFFFF00FFFFFF00C4C4C400FCFCFC00F9F9F900F9F9
      F900F9F9F900F9F9F900F9F9F900F9F9F900F9F9F900F9F9F900F3F3F3009D9D
      9D00F1F1F100D8D8D8008F8F8F008A8A8A00C3C3C300FBFBFB00F8F8F800F8F8
      F800F8F8F800F8F8F800F8F8F800F8F8F800F8F8F800F8F8F800F2F2F200A6A6
      A600F0F0F000D7D7D7009C9C9C00CECECE00FFFFFF00EDC0A100FAF6F300FAF6
      F300FAF6F300FAF6F300FAF6F300FAF6F300FAF6F300FAF6F300FAF6F300FAF6
      F300FAF6F300FAF6F300D69F7300FFFFFF00FFFFFF00FFFFFF00FFFFFF00CFD1
      F5008891E800B1C3F800BDD2FD00B9CDFC00B7CAFC00B7CAFD00A6B7F700727B
      E400C2C4F200FFFFFF00FFFFFF00FFFFFF00C5C5C500C5C5C500C3C3C300C0C0
      C000BDBDBD00BABABA00B7B7B700B3B3B300AFAFAF00ABABAB00A7A7A700A2A2
      A200C5C5C500FBFBFB00E4E4E40090909000C4C4C400C4C4C400C2C2C200BFBF
      BF00BCBCBC00B9B9B900B6B6B600B2B2B200AEAEAE00AAAAAA00A6A6A600A1A1
      A100C4C4C400FAFAFA00E3E3E300A2A2A200FFFFFF00F2D1BA00EEC1A200ECBF
      9E00EABD9C00EABB9900E8B99500E6B69200E5B48F00E3B18B00E1AE8700DFAB
      8300DCA87F00DBA47C00DBA67F00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00CFD1F500989DE9007E83E3008084E4007C82E300747AE1008C91E600C7CA
      F300FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00A3A3A3009E9E9E009A9A9A0095959500FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00A2A2A2009D9D9D0099999900D8D8D800FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00174259002A6188004B89BD006FA8CC00E3EDF500FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00909090008887
      8700868585008686860087878600888887008887870087878700878786008685
      85008685840096969600FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF002D66840093C6F80090C8F8004084C800266AAD00D8E6F200FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00DFB49200D49C7300D095
      6700CD916200CA8D5D00C8895A00C6865500C2835100C2835100C2835100C283
      5100C2835100C2835100CFA07C00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0087878700C1C1
      C000BBBBBB00BBBBBB00BBBBBA00BBBBBA00BBBBBA00BBBBBA00BBBBBA00BBBB
      BA00C1C1C0008A8A8900FFFFFF00FFFFFF00FFFFFF0090909000888787008685
      85004288A900DFF1FE005399D7001979BD004897C4003C82BA00788592008685
      840096969600FFFFFF00FFFFFF00FFFFFF00FFFFFF00D6A07400F7F1EC00F6EF
      E900F5ECE500F3E9E100F2E6DD00F0E3DA00EFE1D700EFE1D700EFE1D700EFE1
      D700EFE1D700EFE1D700C48A5D00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF008B8B8A00FEFE
      FE00EAEAEA00EAEAEA00E8E8E800E7E7E700E6E6E600E6E6E600E5E5E500E5E5
      E500FEFEFE008D8C8B00FFFFFF00FFFFFF00FFFFFF0087878700C1C1C000BBBB
      BB007D9BAF0079B5D4008FB6D00054C8E3005ADEF40077CFEC004B96D600AFBA
      C3008A8A8900FFFFFF00FFFFFF00FFFFFF00FFFFFF00D8A37900F8F2ED00EACF
      BB00E6C0A300E6BEA000E5BD9E00E5BA9900E2B79400E0B48E00DDAF8800DBAA
      8200D8AD8800EFE1D700C58B5E00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0091909000FEFE
      FE00B3B3B30093939300E6E6E600B1B1B10092929200E2E2E200AFAFAF009090
      9000FAFAFA0091919000FFFFFF00FFFFFF00FFFFFF008B8B8A00FEFEFE00EAEA
      EA00EAEAEA00A4C7D70075B8D500C1F5FC0062DEF6005CE1F70078D2EF004998
      DB00828C9500FFFFFF00FFFFFF00FFFFFF00FFFFFF00DCA77D00F8F2EE00EACF
      B900FEFEFE00FDFDFD00FDFEFD00FDFEFD00FEFEFE00FDFDFD00FEFEFE00FEFE
      FE00DAAF8B00EFE1D700C5895B00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00E5E5FB00807FE6002D2ACC002E2AC100847FCD00E6E5F200FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0094949400FEFE
      FE00E7E7E700E6E6E600E4E4E400E2E2E200E1E1E100DFDFDF00DEDEDE00DBDB
      DB00FEFEFE0094949400FFFFFF00FFFFFF00FFFFFF0091909000FEFEFE00B3B3
      B30093939300E6E6E6007DA1B30076CAE600C6F6FC005DDBF40059E0F6007AD3
      F0004594D700D6E7F700FFFFFF00FFFFFF00FFFFFF00DEA98100F8F2EE00E9CD
      B600FEFEFE00BFDCC20061AA6800A0CCA400AAD1AE0067AD6D00AAD1AE00FEFE
      FE00DCB39000EFE1D700C78C5E00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF007F80F1007B7BED008F92F4008487F2007877E300847FCF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0099999800FEFE
      FE00B0B0B00090909000E1E1E100ACACAC008E8E8E00DBDBDB00A8A8A8008C8C
      8C00FAFAFA0099989800FFFFFF00FFFFFF00FFFFFF0094949400FEFEFE00E7E7
      E700E6E6E600E4E4E400E2E2E200AAD2DF0078D2ED00C6F6FC005EDBF4005AE1
      F60079D5F10050A1E100DCE9F500FFFFFF00FFFFFF00E0AD8600F9F3EF00E9CA
      B100FEFEFE00FEFEFE0061AA6800D4E8D6008BC09000FEFEFE0061AA6800FEFE
      FE00DEB79500EFE1D700C3855300FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF002A2BF200A8ABF7006F76F400666BF3008587F2002E2AC600FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF009D9C9C00FEFE
      FE00E2E2E200E0E0E000DBDBDB00DADADA00D6D6D600D2D2D200D2D2D200D0D0
      D000FEFEFE009D9C9B00FFFFFF00FFFFFF00FFFFFF0099999800FEFEFE00B0B0
      B00090909000E1E1E100ACACAC008E8E8E00A7D1DD007BD3EC00C3F5FC006BDC
      F5006CC9EC0062A2D60068A2D400E5EFF700FFFFFF00E2B08B00F9F5F000E9C8
      FD00FEFEFE00FEFEFE0061AA6800D4E8D60095C69A00F8FBF8006BB07200FEFE
      FE00E0BC9C00EFE1D700C5855400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF002A2DF900B7BBFA007D85F7006D73F4009093F4002C2AD200FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF009F9F9F00FEFE
      FE00ACACAC008D8D8D00D7D7D700A4A4A40089898900CDCDCD007273E7005157
      DA00FAFAFA009D9D9D00FFFFFF00FFFFFF00FFFFFF009D9C9C00FEFEFE00E2E2
      E200E0E0E000DBDBDB00DADADA00D6D6D600D2D2D20097C8D7007FD4EC00B1E2
      F8008ABFE600ADD2F500C3DFFB006AA1D300FFFFFF00E4B38E00F9F5F100E8C5
      A900FEFEFE00AAD1AE006BB07200D4E8D600AAD1AE0064AC6B00AAD1AE00FEFE
      FE00E3C0A300F1E6DD00C7895800FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF007F81FE007F80FC00B8BBFA00B0B4F9007C7CEF007F7FEA00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00A2A2A200FBFB
      FB00D9D9D900D6D6D600D1D1D100CDCDCD00C8C8C800C4C4C400C1C1C100BEBE
      BE00FEFEFE009F9F9F00FFFFFF00FFFFFF00FFFFFF009F9F9F00FEFEFE00ACAC
      AC008D8D8D00D7D7D700A4A4A40089898900CDCDCD007273E7004079DD0076BD
      E600B3D1EF00E4F2FE00ABD1EE005895CB00FFFFFF00E6B69300FAF6F300E8C2
      A500FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFE
      FE00E4C5AA00F6F0EA00CA8E5E00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00E5E5FF007F81FE002A2DFB002A2CF6007F80F500E5E5FC00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00A2A2A200FEFE
      FE00AF7A5500C28C6600C48E6700C58F6800C7916A00C9936B00C9946D00AF7A
      5500FEFEFE00A09F9E00FFFFFF00FFFFFF00FFFFFF00A2A2A200FBFBFB00D9D9
      D900D6D6D600D1D1D100CDCDCD00C8C8C800C4C4C400C1C1C100BEBEBE00BBE4
      F30057A4D70084B0DA00459CCF00B0D8EE00FFFFFF00E8B99700FAF6F30064A3
      FE0063A2FE0061A1FE0060A0FE005E9EFE005B9CFE005999FE005697FE005394
      FE005193FE00FAF6F300CD926300FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00A3A3A300FEFE
      FE00AF7A5500C08A6300C28C6500C48E6600C58F6800C7916A00C9936B00AF7A
      5500FEFEFE009F9F9F00FFFFFF00FFFFFF00FFFFFF00A2A2A200FEFEFE00AF7A
      5500C28C6600C48E6700C58F6800C7916A00C9936B00C9946D00AF7A5500FEFE
      FE00A09F9E00FFFFFF00FFFFFF00FFFFFF00FFFFFF00EABC9A00FAF6F30063A3
      FE0078BCFE0074BAFE0070B8FE006CB7FE0067B2FE0060AFFE0059AAFE0053A6
      FE003A7CFE00FAF6F300D0966900FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00A2A2A200FEFE
      FE00A6714C00A6714C00A6714C00A6714C00A6714C00A6714C00A6714C00A671
      4C00FEFEFE009D9D9D00FFFFFF00FFFFFF00FFFFFF00A3A3A300FEFEFE00AF7A
      5500C08A6300C28C6500C48E6600C58F6800C7916A00C9936B00AF7A5500FEFE
      FE009F9F9F00FFFFFF00FFFFFF00FFFFFF00FFFFFF00EBBE9D00FAF6F30064A3
      FE0063A2FE005F9FFE005C9DFE005798FE005395FE004C8FFE00468AFE004183
      FE003C7EFE00FAF6F300D39A6E00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00A9A9A900FEFE
      FE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFE
      FE00FEFEFE00A2A2A200FFFFFF00FFFFFF00FFFFFF00A2A2A200FEFEFE00A671
      4C00A6714C00A6714C00A6714C00A6714C00A6714C00A6714C00A6714C00FEFE
      FE009D9D9D00FFFFFF00FFFFFF00FFFFFF00FFFFFF00EEC5A700FAF6F300FAF6
      F300FAF6F300FAF6F300FAF6F300FAF6F300FAF6F300FAF6F300FAF6F300FAF6
      F300FAF6F300FAF6F300D7A27700FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00B2B2B200A8A8
      A800A7A7A700AAAAAA00ABABAB00ACACAC00ABABAB00AAAAAA00A7A7A700A3A3
      A300A2A2A200B5B5B500FFFFFF00FFFFFF00FFFFFF00A9A9A900FEFEFE00FEFE
      FE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFE
      FE00A2A2A200FFFFFF00FFFFFF00FFFFFF00FFFFFF00F7E0D100F0C7AB00ECBF
      9E00EABD9C00EABB9900E8B99500E6B69200E5B48F00E3B18B00E1AE8700DFAB
      8300DCA87F00DBA47C00E1B59500FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00B2B2B200A8A8A800A7A7
      A700AAAAAA00ABABAB00ACACAC00ABABAB00AAAAAA00A7A7A700A3A3A300A2A2
      A200B5B5B500FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF004092C800368AC5003588C4003386C3003284C2003083C1002F81
      C0002D7FBF002C7DBE002A7BBE005595CB00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00D7CCC300A47D5D00B17F5500AE7D
      5100A3795800CFC1B700FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF004C9CCE00DCEBF500BCEDF800ABE9F700AAE9F700AAE9F700AAE9
      F700ACE9F700D3F2FA00A3C7E3006DA6D300FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00E6DFDA00A8876A00B1805700CAAA8800D0B39400BA8D
      6200B4865900AA764C00A27F6200E1D9D300FFFFFF00962F0E00962F19008B28
      0B00922B0C007D20090062150500530F03004E0E03004B0D0200500E0200FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00EEEEEE0088AEC3008DC1E00096E7F80060DBF5005ADAF4003187C1005ADA
      F40069DDF500B0E6F5003E8DC600DCEAF500FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00F3F6F400FAFBFA00AC7F5600D4BA9E00D5BA9D00D2B79B00D0B29300B688
      5C00B98D6100B78C6000B1805500A7754D00FFFFFF00C86E4100AB412100FFFF
      FF009E330F008F2B14009E322400992D220092291F008321190061130B00430B
      0200500D0200FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00F7F7F700CCCC
      CC00A2A2A200C1C3C40064ACD400AADAEE0073DFF60057D9F40057D9F4005CDA
      F4008FE5F70091C0E00099C5E200FFFFFF00FFFFFF00FFFFFF00C6D4C7006799
      6B0062A1690060A06800B07D5100E0CCB700D7BFA400D7BFA600D3B99C00B78B
      5F00B6895F00B78C6000B98D6100B07D5100FFFFFF00CC754000AF4322008D26
      0C00AA3C2300C76E4D00D0876400CE886700CC806300C6755C00B6544400922A
      21004A0D0400510E0200FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FDFDFD00DADADA00ADADAD00C0C0
      C000E7E7E700EAEAEA00B3CDDA007ABCDE00A1E9F80060DBF5003086C10076E0
      F600B5DDEF004A95C200C9CED100FBFBFB00DCE4DD00759F790065A26B0092BF
      98009DC6A30070AB7700AE7D5000E2CFBB00D9C2AA00D2B79D00C6A27C00C097
      6E00B5885B00B6895F00B98D6100B07F5300FFFFFF00C55E2500D1824900C15B
      3400D1865900D89A7000D28B6300C3664400BA543900BF624600C97B5F00C572
      5900A43B3000510E030063120300FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00BCBCBC00BDBDBD00E2E2E200F0F0
      F000E6E6E600DCDCDC00D8D9D9007DB9D400ABD8EB0081E2F7003287C100ABEC
      F900439DCE0096B3C400A5A5A500ADADAD00639E6B00A8CCAE00A5CBAB00A1C8
      A80098C49E006AA87300AD7B4E00DBC7AF00BE9E8000B78C6400D0B28E00D0B2
      8E00BA8F6500BB906700B6895F00B07D5100FFFFFF00C8621E00D68E4C00E0A8
      7100DEA57400DA9C6C00C1613700AC3F1300A73B1100A3370F00BB573D00BF61
      4700C6745A00983425006D170500FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00EAF5EB0096CA9B004EA055004B98530090B89500E8EFE900FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00A7A7A700F4F4F400F1F1F100E6E6
      E600E3E3E300DEDEDE00DADADA00BFCFD50058AFD400B3EAF7008DE5F700B4DC
      ED006BACCB00BBBCBD00C8C8C8009797970061A06800BFD9C400ACCFB200AACD
      B0009DC7A5006CA97500947A7D005960C7004F57E2004E55DF00575EC7008F77
      8300BA8F6500D0B28E00C5A17A00A8784F00FFFFFF00D0702100CD6E2500E0A6
      6700E2AD7700D8965E00AA3A190094290D008E270C0099310E00A73B1600AA40
      1E00A53B1A00902D1800711A0700FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0099D29C0090CA9400A0D3A20098CF9A008BC18F0091BA9600FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00ADADAD00F2F2F200EFEFEF00EBEB
      EB00E9E9E900E3E3E300D9D9D900D7D7D7008DBCCE00A3D6EA00DBF3FA0057AF
      D500AABDC600BFBFBF00CACACA009D9D9D005F9F6700C4DDC800B3D3B800A3C8
      A90080AA9900606CC2004F57DF006567EA009292F3006062E900575AE3004851
      DB005F62BD00A5887E00C0997000B89F8A00FFFFFF00FFFFFF00D2752300D98E
      4200E3AE7100E1A76D00C96C3800C25B3200BD502F00BD553300BA543400B64F
      3200B34B3200A83D2C00731C0700FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0057BC5D00B3DBB40089CB8A0082C9840099CF9C004D9C5500FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00AEAEAE00F2F2F200F0F0F000EDED
      ED00E0E0E000C6C6C600CACACA00D0D0D000CACFD1006ABCD900AADAEC0083B7
      CC00BFBFBF00BFBFBF00CDCDCD009E9E9E005C9E6400B8D5BD0086B98E0070AB
      77005258DB006569EA009795F3009090F2008889EF005A5EE6005E61E8005C60
      E7005057E3004954D700E3DDDB00FBFAFA00FFFFFF00DC862600D9842500D479
      2300E09F5000E5B47700D9914C00D4844500D07D4400CC784400CF804D00D696
      6A00D4906700C265470083230900FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0059C15E00BFE0BF0094D1940087CB8800A1D3A30050A55700FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00AFAFAF00F2F2F200E8E8E800DCDC
      DC00DDDDDD00C1C1C100D9D9D900FCFCFC00FCFCFC00B0D0DB0071BDD700CBD4
      D700BABABA00BABABA00CECECE009F9F9F00649F6B0085B98E0098C5A10073AC
      7B004E56E100B3B0F8009695F3009292F3008B8CEF005B5FE7005B60E6005C60
      E7005E61E8004E56E100E3E5F200FFFFFF00FFFFFF00E2962900DF922E00D983
      2500D67F2500E7B26A00D1742B00CB641F00C45B1D00C0541B00D07D4400DB9E
      6E00D99C7000C0623E0098300E00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF009CDC9F0096D59A00C0E1C100B9DEBA0091CB940097CD9B00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00ACACAC00D7D7D700CCCCCC00CDCD
      CD00D0D0D000ABABAB00FEFEFE00FEFEFE00FEFEFE00FEFEFE00ABABAB00D0D0
      D000CBCBCB00C0C0C000BDBDBD009C9C9C0092B296007BB3840075AE7D006EAA
      77004D53E000B3B0F8009495F4006569EA006E70EB006D71EB00595BE4005B60
      E6005E61E8005057E100E3E5F200FFFFFF00FFFFFF00FFFFFF00E59B2A00EDBB
      5B00DE903100DF973F00D8853300BD391400B3361000C55D2900DE9F6400E0AA
      7600DA9A6600B74C2500AD411300FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00EBF8EB009CDC9F0059C25E0058BF5E009AD59D00EAF6EB00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00CCCCCC00ADADAD00D4D4D400FCFC
      FC00FCFCFC00C6C6C600B4B4B400A2A2A200A2A2A200B4B4B400C6C6C600FBFB
      FB00FAFAFA00D1D1D100ADADAD00BFBFBF00FAFBFA00DEE6DF00CAD7CB006DA7
      76004B51DF00A1A1F300696BEB006062E9009692F6009692F6006367E8006465
      E9005B60E6004E56E100E3E5F200FFFFFF00FFFFFF00FFFFFF00EAA52C00E7A5
      3200F0C56F00EFC67C00ECBD7000E3AA5500E2A45300E3AB6500E6B47900DFA7
      6A00D1814400BC501A00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00AAAAAA00FEFEFE00FEFE
      FE00FEFEFE00DFDFDF00ABABAB00D0D0D000D0D0D000AAAAAA00DFDFDF00FEFE
      FE00FEFEFE00FEFEFE00AAAAAA00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00545ADA007B7BF1009692F6006367E8005157E2005157E2006367E8009692
      F6007B7BF1004D56D800E9EAF500FFFFFF00FFFFFF00FFFFFF00FFFFFF00EBA7
      2D00E9A62F00EDBA5200EEC36D00EDC07000EBBC7000E9BA7200E2A75600D27C
      3600BB4B1700FFFFFF00B2431500AC3F1300FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00DEDEDE00BCBCBC00A2A2
      A200A1A1A100B0B0B000D5D5D500FCFCFC00FBFBFB00D2D2D200B0B0B000A1A1
      A100A2A2A200BCBCBC00DEDEDE00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF009094D8006D6EEB006567EA005E61E8007777EF007373EF005E61E800686A
      EA006E70EB009094D600FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00EEAB2D00EAA62C00E79F2B00E59E3100E2993100E1983900E5AA5300E19F
      4C00CC632700B73C1200B7431600B6461700FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00F8F8F800AAAAAA00FEFEFE00FEFEFE00FEFEFE00FEFEFE00AAAAAA00F6F6
      F600FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FAFAFD00DFE0F000CBCDE7006062E2005056E1005056E1005E61E200C8CB
      E600DFE0F000FAFAFD00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00EAA32B00E69B2A00E2952900DE8D2700DC8A
      2B00E19F4A00DC924200CD6E2200C8621E00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00DEDEDE00BABABA00A1A1A100A1A1A100BABABA00DEDEDE00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C3916D00C38E6800C08B6600BE88
      6400BB856100B9835F00B6805E00B47E5C00B27C5A00B17B5800AE795700AD76
      5600AB755400A9735300A9715100A3705100FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00B0947600855E330081593000A3825F00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00A9715100C38E6800C08B6600BE88
      6400BB856100B9835F00B47E5C00B27C5A00B17B5800AE795700AD765600AB75
      5400A9735300A9715100A9715100FFFFFF00C8926C0052525200535353005454
      54005555550056565600575757005757570058585800595959005A5A5A005B5B
      5B005C5C5C005C5C5C005D5D5D00A9725100FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00A27541009D6F3C00976A37009264
      32008C5F2D008659280081532300926738008F643500714415006C3F1000683B
      0C0064370900603305005D3002005A2D0000C8926C00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00A9725100FFFFFF00CA946E004E4E4E003D3D3D003D3D
      3D003E3E3E003F3F3F0041414100424242004343430044444400454545004646
      460046464600484848005A5A5A00AA735300FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00AA7D4900B28A5C00B28A5C00B28A
      5C00B28A5C00B28A5C00B28A5C007C502000784B1C00B28A5C00B28A5C00B28A
      5C00B28A5C00B28A5C00B28A5C00673B0D00CA946E00FFFFFF00EBB06000FFFF
      FF00B2B2B200AEAEAE00A5A5A500FEFAF700A2A2A200FEFAF700989898009595
      950091919100FFFFFF00AA735300FFFFFF00CC976F004B4B4B00383838003939
      39003A3A3A003C3C3C003D3D3D003F3F3F003F3F3F0041414100424242004242
      4200444444004545450057575700AC755400FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF005E8E
      6000FAFBFA00FFFFFF00FFFFFF00FFFFFF00AF824E009D6F3C00976A3700F8F8
      F8008C5F2D008659280081532300AA8F7300A98E7200714415006C3F1000683B
      0C0064370900603305005D3002006B3E1100CC976F00FFFFFF00FEFDFB00FEFC
      FB00FEFBF900FEFBF900FEFAF700FEFAF700FEFAF700FEFAF700FDF8F400FCF6
      F300FCF6F300FFFFFF00AC755400FFFFFF00CF9A720047474700333333003434
      34003636360037373700393939003A3A3A003B3B3B003C3C3C003E3E3E003F3F
      3F00404040004141410055555500AD785600FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00D0DFD1002B6D
      2F0041794400FFFFFF00FFFFFF00FFFFFF00B5875300A4764200F8F8F800F8F8
      F800F8F8F800F7F7F700F0F0F000E2E2E200F2F2F200F7F7F700F8F8F800F7F7
      F700E8E8E800F7F7F700613406006F431500D19C7300FFFFFF00EFB46200FFFF
      FF00B5B5B500B3B3B300ABABAB00FEFAF700A8A8A800FDF8F500A2A2A2009E9E
      9E009B9B9B00FFFFFF00B07A5800FFFFFF00D19C7300424242002F2F2F003030
      30003131310033333300343434003636360036363600383838003A3A3A003B3B
      3B003D3D3D003D3D3D0052525200B07A5800FFFFFF0060BD6C005CB7670057B0
      610052A85B004CA0550046984E00409048003A874100347F3A003E87440058A0
      5D00438A48004A804C00FFFFFF00FFFFFF00B98C5700AA7C4800F8F8F800F0F0
      F000ECECEC00E6E6E600D2D2D200A4A4A400D6D6D600F3F3F300EDEDED00E9E9
      E900DBDBDB00F7F7F70065380A0073471900D49E7500FFFFFF00FEFCFA00FEFB
      F900FEFAF800FEFAF800FEFAF600FEFAF700FCF7F400FCF7F200FCF6F000FCF5
      EF00FCF4EE00FFFFFF00B27C5A00FFFFFF00D49E75003D3D3D0029292900D1D1
      D100ADADAD002E2E2E002F2F2F00313131003232320034343400363636003737
      3700383838003A3A3A004E4E4E00B27C5A00FFFFFF0064C270009FD6A8009BD4
      A40097D2A00093CF9C008FCD97008ACA920086C88D0081C588007DC2830079C0
      7F0075BD7B00448B490054865600FFFFFF00BD905B00B0824D00F8F8F800CBCB
      CB00C8C8C800C4C4C400D2D2D200A5A5A500D7D7D700F3F3F300C9C9C900C5C5
      C500B9B9B900F7F7F7006A3D0F00794C1D00D5A07600FFFFFF00F3B66300FFFF
      FF00BABABA00B8B8B800B2B2B200FEFAF700AFAFAF00FCF6F000A9A9A900A7A7
      A700A5A5A500FFFFFF00B57E5C00FFFFFF00D5A0760039393900252525002626
      2600DEDEDE00747474002A2A2A002C2C2C002D2D2D002F2F2F00313131003232
      320034343400353535004B4B4B00B57E5C00FFFFFF0067C67300A4D9AD00A1D7
      AA009DD5A60099D3A20095D19E0092CE99008DCB940088C98F0084C68A0080C4
      86007CC1810049904F0052885600FFFFFF00C1945F00B6885200F9F9F900F0F0
      F000ECECEC00E8E8E800D3D3D300A5A5A500D7D7D700F4F4F400EEEEEE00EAEA
      EA00DBDBDB00F7F7F700704314007E522200D8A27900FFFFFF00FEFAF800FEFA
      F700FEFAF600FDF8F600FCF7F200FEFAF700FCF6F000FCF5EF00FBF3EC00FAF1
      EA00FAF0E800FFFFFF00B7815E00FFFFFF00D8A279003434340020202000CFCF
      CF00A8A8A800242424002525250026262600282828002A2A2A002C2C2C002D2D
      2D002F2F2F003131310046464600B7815E00FFFFFF0067C6730067C6730064C2
      700060BD6C005CB7670057B0610052A85B004CA0550046984E004090480059A2
      6100549C5B0054905900FFFFFF00FFFFFF00C5976100BB8D5700F9F9F900CBCB
      CB00C9C9C900C4C4C400D3D3D300A6A6A600D7D7D700F4F4F400CACACA00C6C6
      C600BABABA00F7F7F7007649190083572700D9A37900FFFFFF00F6B96500FFFF
      FF00BDBDBD00BBBBBB00B7B7B700FEFAF700B5B5B500FCF3ED00B1B1B100B0B0
      B000ADADAD00FFFFFF00BA856000FFFFFF00D9A3790034343400202020002121
      210022222200242424002525250026262600282828002A2A2A002C2C2C002D2D
      2D002F2F2F003131310046464600BA856000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF004693
      4E0056985C00FFFFFF00FFFFFF00FFFFFF00C5986200C0925B00F9F9F900F1F1
      F100EEEEEE00E9E9E900D4D4D400B4B4B400DEDEDE00F4F4F400F0F0F000EBEB
      EB00DDDDDD00F8F8F8007C4F1F00895D2C00DBA47A00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00BD876300FFFFFF00DBA47A0031313100323232003333
      330034343400353535003636360037373700393939003B3B3B003C3C3C003D3D
      3D003F3F3F004141410043434300BD876300FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0077B3
      7D00FBFCFB00FFFFFF00FFFFFF00FFFFFF00C5986200C4965F00F9F9F900CCCC
      CC00C9C9C900C5C5C500F1F1F100DCD7D100EAE4DE00FBFBFB00CBCBCB00C8C8
      C800BCBCBC00F8F8F8008356250090623200DCA77B00DCA77B00DCA77B00DCA7
      7B00DCA77B00DCA77B00DCA77B00DCA77B00DCA77B00DCA77B00DCA77B00DCA7
      7B00DCA77B00DCA77B00C08B6600FFFFFF00DCA77B00DBA47A00DAA37900D8A2
      7900D7A17800D59F7600D39E7400D19C7300CF9A7200CD977000CB956E00C994
      6C00C7916B00C48F6900C38D6700C08B6600FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C5986200C7996200F9F9F900F9F9
      F900F9F9F900F7F7F700D8C5B000B88E5E00B38A5B00D6C3AE00F8F8F800F8F8
      F800F8F8F800F8F8F8008A5C2B0096683700DDAC8500E8B99200E8B99200E8B9
      9200E8B99200E8B99200E8B99200E8B99200E8B99200E8B99200E8B99200E8B9
      9200E8B99200E8B99200C1906F00FFFFFF00DDAC8500F1DCCE00EAC1A000E8B9
      9200E8B99200E8B99200E8B99200E8B99200E8B99200CDC8C500E8B99200CDC8
      C500E8B992004464FF00E8C4A700C1906F00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00F4EBE000C89A6300D2AD8100CFAB
      7F00CDA87C00CAA57A00C59F7300F2EAE000F1E9E000BA946900B7936900B38F
      6500AE8A6100AA865D0091633100EAE1D700A9715100DDB18D00DCA77B00DCA6
      7A00DAA47A00D8A27900D5A07600D49E7500D29D7300CF9A7200CE997000CB96
      6F00C9946C00C49A7A00A9715100FFFFFF00DDAC8600DDB18D00DCA77B00DCA6
      7A00DAA47A00D8A27900D8A17900D5A07600D49E7500D29D7300CF9A7200CE99
      7000CB966F00C9946C00C49A7A00C3937100FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00F4EBE000F4EBE000F4EB
      E000F3EADF00F3EADF00F2E9DE00FFFFFF00FFFFFF00F0E6DC00EFE5DB00EEE4
      DA00ECE3D900EBE2D800EAE1D700FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00E0EEE0008FBF91003A8C3E0024792800247628003A843E008FB99100E0EB
      E000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00E5F0E7009FC8A500559B5E003F8E48003B8C44004C95520097C19B00E1ED
      E200FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00B5D9
      B600308E3400419F510086C999009AD2AA009AD1AA0082C695003C964B00307B
      3300B4D0B600FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C3DD
      C800569F630040984F007CC18E0095CFA50095CEA50077BD8800358C4100408C
      4700B9D5BB00FFFFFF00FFFFFF00FFFFFF00A9715100C38E6800C08B6600BE88
      6400BB856100B9835F00B47E5C00B27C5A00B17B5800AE795700AD765600AB75
      5400A9735300A9715100A9715100FFFFFF00A9715100C38E6800C08B6600BE88
      6400BB856100B9835F00B47E5C00B27C5A00B17B5800AE795700AD765600AB75
      5400A9735300A9715100A9715100FFFFFF00FFFFFF00FFFFFF00B5DBBA00248E
      29006CBD8200A7DAB40086CB970065BB7C0063B97B0085CA9700A4D8B30065B6
      7C0023712600B4D0B600FFFFFF00FFFFFF00FFFFFF00FFFFFF00C6DFCB00549F
      630063B37700A7DAB40086CB970065BB7C0063B97B0085CA9700A4D8B30057A9
      6A0034853C00B9D5BB00FFFFFF00FFFFFF00C8926C00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00A9725100FFFFFF00C8926C00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00A9725100FFFFFF00FFFFFF00E1F2E40032A0430071C1
      8600A7DAB1005FBB76005BB9720058B76F0058B46E0057B46E005AB67300A4D8
      B20068B77E00307F3400E0ECE100FFFFFF00FFFFFF00E9F3EB0066AB750069B8
      7C00A7DAB1005FBB76005BB9720058B76F0058B46E0057B46E005AB67300A4D8
      B20059A96B00418E4800E2EEE300FFFFFF00CA946E00FFFFFF00FFFFFF00FFFF
      FE00FFFFFD00FEFEFD00FEFEFC00FEFEFC00FEFEFC00FEFEFC00FEFEFA00FEFE
      FA00FCFCF900FFFFFF00AA735300FFFFFF00CA946E00FFFFFF00EBB06000FFFF
      FF00B2B2B200AEAEAE00A5A5A500FEFAF700A2A2A200FEFAF700989898009595
      950091919100FFFFFF00AA735300FFFFFF00FFFFFF008FD29F004BAF6300A9DC
      B30063C078005EBD700074C48400D3EBD80089CC980055B56B0057B46D005BB6
      7300A5D9B300409A4D008EBB9000FFFFFF00FFFFFF00AED4B80052AA6700A9DC
      B30063C078005EBD70005FBB7600FEFEFE00FEFEFE0058B76F0057B46D005BB6
      7300A5D9B300378E420096C19A00FFFFFF00CC976F00FFFFFF00FFFFFC00FFFF
      FD00FEFEFC00FEFEFC00FEFEFB00FDFDFA00FDFDFA00FDFDFA00FDFDFA00FCFC
      F700FBFBF600FFFFFF00AC755400FFFFFF00CC976F00FFFFFF00FEFDFB00FEFC
      FB00FEFBF900FEFBF900FEFAF700FEFAF700FEFAF700FEFAF700FDF8F400FCF6
      F300FCF6F300FFFFFF00AC755400FFFFFF00FFFFFF003EB45C0090D19E008CD3
      990063C2730078C88600F1F9F300FEFEFE00FCFDFC0085CA950056B66C005AB8
      710084CB960086C699003A8A3E00FFFFFF00FFFFFF0076B7880089CB970088D2
      95006AC5790062C06F0054AA6400FEFEFE00FEFEFE0058B76F0058B76F005AB8
      710084CB96007ABD8C004C955400FFFFFF00D19C7300FFFFFF00FEFEFC00FEFE
      FC00FEFEFC00FDFDFB00FDFDFB00FDFDFA00FDFDF800FBFBF900FBFAF700FBFA
      F600FBF8F400FFFFFF00B07A5800FFFFFF00D19C7300FFFFFF00EFB46200FFFF
      FF00B5B5B500B3B3B300ABABAB00FEFAF700A8A8A800FDF8F500A2A2A2009E9E
      9E009B9B9B00FFFFFF00B07A5800FFFFFF00FFFFFF0026AF4800A5DBAE006FC9
      7E0072C97F00EFF8F000FEFEFE00EAF6EC00FEFEFE00FAFCFB0087CC95005AB8
      700066BD7C009FD6AE00227E2500FFFFFF00FFFFFF0069B17E00A8DCB2007CCE
      890074CB8000FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE0058B7
      6F0066BD7C009BD3AA003A8B4300FFFFFF00D49E7500FFFFFF00FEFEFC00FDFD
      FB00FDFDFC00FDFDFB00FDFDF900FCFCF800FBF9F700FBF9F500FBF8F400FBF7
      F200FBF5F200FFFFFF00B27C5A00FFFFFF00D49E7500FFFFFF00FEFCFA00FEFB
      F900FEFAF800FEFAF800FEFAF600FEFAF700FCF7F400FCF7F200FCF6F000FCF5
      EF00FCF4EE00FFFFFF00B27C5A00FFFFFF00FFFFFF002DB65000A6DCB00071CB
      7F0065C67200AFE0B600D1EDD50062C06F00B7E2BE00FEFEFE00FAFCFB008BCF
      980068C07D00A0D6AD0022832500FFFFFF00FFFFFF006DB48200B5E1BD008AD4
      960079C88500FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE0058B7
      6F0068C07D009CD3A9003E8E4800FFFFFF00D5A07600FFFFFF00FDFDFC00FDFD
      FB00FDFDFA00FCFCF900FCFBF700FBF9F500FBF8F400FBF7F300FBF5F200FAF3
      EF00F8F2EC00FFFFFF00B57E5C00FFFFFF00D5A07600FFFFFF00F3B66300FFFF
      FF00BABABA00B8B8B800B2B2B200FEFAF700AFAFAF00FCF6F000A9A9A900A7A7
      A700A5A5A500FFFFFF00B57E5C00FFFFFF00FFFFFF004AC46B0094D6A00090D6
      9A0068C8750063C56E0060C36D0060C26E0060C16E00B8E3BF00FEFEFE00E2F3
      E5008AD098008ACD9C003B983F00FFFFFF00FFFFFF0081BF9400ABDCB500A5DE
      AE0080CA8B007BC885006DBC7800FEFEFE00FEFEFE005AAB69005FBB76005BB9
      72008AD098007FC49100579D6000FFFFFF00D8A27900FFFFFF00FDFDFA00FCFC
      FA00FCFBF900FBFAF600FBF8F500FBF7F400FBF6F100F8F4EE00F7F2EB00F7F0
      EA00F6ECE800FFFFFF00B7815E00FFFFFF00D8A27900FFFFFF00FEFAF800FEFA
      F700FEFAF600FDF8F600FCF7F200FEFAF700FCF6F000FCF5EF00FBF3EC00FAF1
      EA00FAF0E800FFFFFF00B7815E00FFFFFF00FFFFFF009ADEAC0056BE6F00AEE0
      B6006CCB790067C7710064C66F0062C46D0061C36D0062C37000B5E2BD006EC6
      7D00ABDEB40047A85D008EC79300FFFFFF00FFFFFF00B8DBC30084C69600D1ED
      D60094D89F0089D293007EC78800FEFEFE00FEFEFE0078CC84006AC27B006EC6
      7D00ABDEB400449D5600A0C8A600FFFFFF00D9A37900FFFFFF00FCFBF900FCFB
      F800FBF9F700FBF7F400FAF7F200F9F5F000F7F3ED00F6EFEA00F5EBE700F3EA
      E400F2E7DE00FFFFFF00BA856000FFFFFF00D9A37900FFFFFF00F6B96500FFFF
      FF00BDBDBD00BBBBBB00B7B7B700FEFAF700B5B5B500FCF3ED00B1B1B100B0B0
      B000ADADAD00FFFFFF00BA856000FFFFFF00FFFFFF00E4F7E90048C465007ECD
      8F00ADE0B4006CCB790069C9750067C7710067C7730067C774006AC87800ABDE
      B30075C3880032A04200E1F1E300FFFFFF00FFFFFF00ECF6EF007EBE9200A9D9
      B600D7F0DB0091D79C0087CC920083CB8D008AD3950089D3940082D18D00AEDF
      B6006AB87C005AA26600E6F1E800FFFFFF00DBA47A00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00BD876300FFFFFF00DBA47A00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00BD876300FFFFFF00FFFFFF00FFFFFF00BFECCA003CC2
      5B007ECD8F00AEE0B60091D79C0076CD820076CD820091D79C00ADE0B40077C7
      8A0026A03A00B5DFBD00FFFFFF00FFFFFF00FFFFFF00FFFFFF00D1E9D90075BA
      8B00AEDBBA00DBF1DF00B5E3BC009ADAA40095D89F00A4DEAE00BFE7C40078C1
      890057A16500C4DEC900FFFFFF00FFFFFF00DCA77B00DCA77B00DCA77B00DCA7
      7B00DCA77B00DCA77B00DCA77B00DCA77B00DCA77B00DCA77B00DCA77B00DCA7
      7B00DCA77B00DCA77B00C08B6600FFFFFF00DCA77B00DCA77B00DCA77B00DCA7
      7B00DCA77B00DCA77B00DCA77B00DCA77B00DCA77B00DCA77B00DCA77B00DCA7
      7B00DCA77B00DCA77B00C08B6600FFFFFF00FFFFFF00FFFFFF00FFFFFF00C0EC
      CB0049C7680058C1730095D6A200A4DBAD00A4DBAD0094D5A0004FB8690034B2
      5400B6E3C100FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00D1E9
      D9007EBE920093CDA300C2E5CA00CEEAD300C8E8CD00AEDCB7006CB87E0067AD
      7700C7E0CD00FFFFFF00FFFFFF00FFFFFF00DDAC8500E8B99200E8B99200E8B9
      9200E8B99200E8B99200E8B99200E8B99200E8B99200E8B99200E8B99200E8B9
      9200E8B99200E8B99200C1906F00FFFFFF00DDAC8500E8B99200E8B99200E8B9
      9200E8B99200E8B99200E8B99200E8B99200E8B99200E8B99200E8B99200E8B9
      9200E8B99200E8B99200C1906F00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00E5F7E9009EE2B00054CA71003ABF5B0036BD590048C26A0097DBAA00E1F5
      E700FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00ECF6EF00B9DCC40082BF950070B685006DB4810078B98900B1D5BA00E8F3
      EB00FFFFFF00FFFFFF00FFFFFF00FFFFFF00A9715100DDB18D00DCA77B00DCA6
      7A00DAA47A00D8A27900D5A07600D49E7500D29D7300CF9A7200CE997000CB96
      6F00C9946C00C49A7A00A9715100FFFFFF00A9715100DDB18D00DCA77B00DCA6
      7A00DAA47A00D8A27900D5A07600D49E7500D29D7300CF9A7200CE997000CB96
      6F00C9946C00C49A7A00A9715100FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00369DD9003199D8002C94
      D7002890D600238CD5001E88D4001A84D3001580D200117CD1000E79D1000A76
      D0000773CF000470CF00016ECE00FFFFFF00FFFFFF00FFFFFF00FFFFFF0027A8
      DC00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0027A8
      DC00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF003DA3DA00BCEBFA00BCEB
      FC00BFEEFE00C6F4FF00CEF8FF00D3FAFF00D0F8FF00C7F2FF00BAE9FC00B3E4
      F900B0E2F800B0E2F8000571CF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0029AC
      DE0027A9DC0025A6DB00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0029AC
      DE0027A9DC0025A6DB00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF001C811F001B7E1F001B7A1F001A731E001A701E001B711F001B711F001B6C
      1F00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0043A8DB00BFECFB0059CF
      F50041B0EC004EBAEF005AC2EF0060C6EF005CC4EF004CB6EF0037A5E6002A9A
      E10038B8EE00B1E3F8000975D000FFFFFF00FFFFFF00FFFFFF00FFFFFF002BAF
      DF002DAEDF002BABDE0025A6DB00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF002BAF
      DF002DAEDF002BABDE0025A6DB00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF001C8A
      21001B831F0042A0520087CA9A009BD3AB009BD2AB0083C796003D974C001A6E
      1E001B701F00FFFFFF00FFFFFF00FFFFFF00FFFFFF0049ADDC00C1EEFB005FD3
      F7006CDBFC007FE5FF008FEDFF0097F2FF0093EDFF007CDFFF005BCCF80046BE
      EF003CBAEE00B3E3F9000E79D100FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF002BAFDF004FBCE7004CBAE60026A7DC0024A4DB00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF002BAFDF004FBCE7004CBAE60026A7DC0024A4DB00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF001C912B001B8A
      20006DBE8300A8DBB50087CC980066BC7D0064BA7C0086CB9800A5D9B40066B7
      7D001A6C1D001B711F00FFFFFF00FFFFFF00FFFFFF004EB2DD00C3EFFB0065D6
      F8004CB6EC005ABDEF0095EBFF003097DD004D82AB0084E1FF0041A9E900329F
      E10042BEEF00B4E5F900137ED200FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF002BAFDF0084D3F20055BDE7002EAADE0024A4DB00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF002BAFDF0084D3F20055BDE7002EAADE0024A4DB00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF001D9B36001C962F0072C2
      8700A8DBB20060BC77005CBA730059B8700059B56F0058B56F005BB77400A5D9
      B30069B87F001A711E001B711F00FFFFFF00FFFFFF0053B7DE00C6F0FC006AD9
      F8007CE2FD0090E8FF0099E9FF00329FDF00548BB2008AE2FF006AD0F90050C5
      F10046C1F000B6E7F9001883D300FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF002DB2E00070CCEE0083D2F2007ECEF1004AB6E40024A5DB0022A2
      DA00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF002DB2E00070CCEE0083D2F2007ECEF1004AB6E40024A5DB0022A2
      DA00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF001EA43D004CB06400AADD
      B40064C179005FBE710075C58500D4ECD9008ACD990056B66C0058B56E005CB7
      7400A6DAB400419B4E001B771F00FFFFFF00FFFFFF0058BBDF00C7F1FC006FDC
      F90056BBED0061BDEF009BE7FF0035A6E2004BA4E10090E2FF0049ADE90038A4
      E30049C4F000B8E8F9001E88D400FFFFFF0038C2E70036C0E60035BDE50033BB
      E40031B8E3002FB6E20086D7F3002FB6EB004ABCEC0080CEF10051B9E6002CA8
      DD0023A2DA00FFFFFF00FFFFFF00FFFFFF0038C2E70036C0E60035BDE50033BB
      E40031B8E3002FB6E20086D7F3002FB6EB004ABCEC0080CEF10051B9E6002CA8
      DD0023A2DA00FFFFFF00FFFFFF00FFFFFF00FFFFFF001FA9420091D29F008DD4
      9A0064C3740079C98700F2FAF400FFFFFF00FDFEFD0086CB960057B76D005BB9
      720085CC970087C79A001B781F00FFFFFF00FFFFFF005CBFE000C8F3FC0075DF
      F90089E6FD0095E7FF009AE5FF00AAEEFF00A8EDFF0099E3FF0074D5F90059CC
      F3004FC8F100BBE9FA00248DD500FFFFFF003AC4E80075DAF20093E6F80091E3
      F7008DE0F6008ADCF5008ADBF50088D7F40084D3F2007FCFF1007CCCF0007AC9
      EF0048B4E30023A3DA00209ED800FFFFFF003AC4E80075DAF20093E6F80091E3
      F7008DE0F6008ADCF5008ADBF50088D7F40084D3F2007FCFF1007CCCF0007AC9
      EF0048B4E30023A3DA00209ED800FFFFFF00FFFFFF001FAD4200A6DCAF0070CA
      7F0073CA8000F0F9F100FFFFFF00EBF7ED00FFFFFF00FBFDFC0088CD96005BB9
      710067BE7D00A0D7AF001B7A1E00FFFFFF00FFFFFF0060C2E100C9F3FC00CBF3
      FD00D4F6FE00D7F6FF00D8F4FF00E0F8FF00DFF8FF00DAF5FF00CDF1FC00C2ED
      FA00BDEBFA00BDEBFA002B93D600FFFFFF003BC7E9004FCDEC0098E9F9004AD5
      F30045CFF10040CAF00038C2EE0089D9F4002EB4E1002CB1E0002BAEDF0029AC
      DE0027A9DC0025A6DB0023A3DA00FFFFFF003BC7E9004FCDEC0098E9F9004AD5
      F30045CFF10040CAF00038C2EE0089D9F4002EB4E1002CB1E0002BAEDF0029AC
      DE0027A9DC0025A6DB0023A3DA00FFFFFF00FFFFFF0026B44B00A7DDB10072CC
      800066C77300B0E1B700D2EED60063C17000B8E3BF00FFFFFF00FBFDFC008CD0
      990069C17E00A1D7AE001B7F1E00FFFFFF00FFFFFF0061C3E10088A0A8009191
      91008E8E8E005AB9DC0055B8DF0051B5DE004DB1DD0049ADDC0046A8D7007878
      780076767600657E8D003199D800FFFFFF00FFFFFF003BC7E90080E1F5008EE6
      F80043D2F3003FCDF10039C7EF008CDCF50058C6EA002EB4E100FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF003BC7E90080E1F5008EE6
      F80043D2F3003FCDF10039C7EF008CDCF50058C6EA002EB4E100FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF002DBB540095D7A10091D7
      9B0069C9760064C66F0061C46E0061C36F0061C26F00B9E4C000FFFFFF00E3F4
      E6008BD199008BCE9D001C882000FFFFFF00FFFFFF00FFFFFF0099999900C6C6
      C600949494008F8F8F00FFFFFF00FFFFFF00FFFFFF00FFFFFF007E7E7E007D7D
      7D00ABABAB0076767600FFFFFF00FFFFFF00FFFFFF003DC9EA005BD4EF0099EA
      F90047D6F40042D0F2003DCBF0006ED5F3007FD7F3004AC0E7002FB4E100FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF003DC9EA005BD4EF0099EA
      F90047D6F40042D0F2003DCBF0006ED5F3007FD7F3004AC0E7002FB4E100FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0034BE590057BF7000AFE1
      B7006DCC7A0068C8720065C7700063C56E0062C46E0063C47100B6E3BE006FC7
      7E00ACDFB50048A95E001C8F2600FFFFFF00FFFFFF00FFFFFF009D9D9D00C4C4
      C400A1A1A10093939300FFFFFF00FFFFFF00FFFFFF00FFFFFF00828282008989
      8900A9A9A90079797900FFFFFF00FFFFFF00FFFFFF00FFFFFF003DCAEA0093E9
      F90072E1F70045D4F30041CEF2003CC9F0008ADCF50070D0EF003DBBE4002FB5
      E100FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF003DCAEA0093E9
      F90072E1F70045D4F30041CEF2003CC9F0008ADCF50070D0EF003DBBE4002FB5
      E100FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0039C25C0034BE55007FCE
      9000AEE1B5006DCC7A006ACA760068C8720068C8740068C875006BC97900ACDF
      B40076C489001C962D001C942D00FFFFFF00FFFFFF00FFFFFF00A1A1A100BABA
      BA00BFBFBF009898980094949400919191008E8E8E008A8A8A0087878700A8A8
      A8009E9E9E007D7D7D00FFFFFF00FFFFFF00FFFFFF00FFFFFF003FCCEB0064D9
      F1009AEBFA0048D8F40044D3F3003FCEF1003AC8F0008CDCF50062CBED0031B8
      E300FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF003FCCEB0064D9
      F1009AEBFA0048D8F40044D3F3003FCEF1003AC8F0008CDCF50062CBED0031B8
      E300FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF003BC55E0034C0
      55007FCE9000AFE1B70092D89D0077CE830077CE830092D89D00AEE1B50078C8
      8B001D9D32001D9D3600FFFFFF00FFFFFF00FFFFFF00FFFFFF00A4A4A400A1A1
      A100C4C4C400BEBEBE00A1A1A100969696009393930097979700AEAEAE00AEAE
      AE008484840081818100FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF003FCC
      EB009AEDFA0099EBF90097E8F90094E5F80091E2F7008EDFF6008BDBF50056C7
      EB0031B8E300FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF003FCC
      EB009AEDFA0099EBF90097E8F90094E5F80091E2F7008EDFF6008BDBF50056C7
      EB0031B8E300FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF003DC7
      600036C2590059C2740096D7A300A5DCAE00A5DCAE0095D6A10050B96A001FAB
      42001FA94200FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00A4A4
      A400A2A2A200BCBCBC00CACACA00CCCCCC00CACACA00C2C2C200ADADAD008C8C
      8C0089898900FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0040CE
      EC003FCCEB003ECBEA003CC9E9003BC7E9003AC4E80038C2E70036C0E60035BD
      E50033BBE40031B8E300FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0040CE
      EC003FCCEB003ECBEA003CC9E9003BC7E9003AC4E80038C2E70036C0E60035BD
      E50033BBE40031B8E300FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0040C962003BC55E0039C25B0031BD54002DBB52002BB952002BB7520028B4
      4E00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00A5A5A500A3A3A300A0A0A0009D9D9D009A9A9A0097979700949494009090
      9000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF008585
      850080808000C5C5C500FFFFFF00FFFFFF00FFFFFF00FFFFFF00BCBCBC006464
      640061616100FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00369DD9003199D8002C94
      D7002890D600238CD5001E88D4001A84D3001580D200117CD1000E79D1000A76
      D0000773CF000470CF00016ECE00FFFFFF0013A8DE0013A4DC0011A1DA00119E
      D700119AD5001097D3001094D100FFFFFF00FFFFFF00109CDE00186FCC00044D
      BC000442BC00044BBB00075EC0000D85CC00FFFFFF00CBCBCB008F8F8F00ABAB
      AB00C8C8C800A5A5A5007D7D7D0078787800747474007070700098989800C4C4
      C4009494940077777700FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF003DA3DA00BCEBFA00BCEB
      FC00BFEEFE00C6F4FF00CEF8FF00D3FAFF00D0F8FF00C7F2FF00BAE9FC00B3E4
      F900B0E2F800B0E2F8000571CF00FFFFFF0014ADE2005FCBED008AE0F60088E3
      F9006FDAF40047C1E6001099D5001097D4000F93D3001576CD002665CA002177
      E6000579EA000164DD00054EBD00065BC000FFFFFF00CDCDCD00FFFFFF00CECE
      CE0099999900CACACA00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C0C0C0007E7E
      7E00BDBDBD006A6A6A00FFFFFF00FFFFFF00FFFFFF00FFFFFF00636363005959
      590050505000484848004545450041414100FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0043A8DB00BFECFB0059CF
      F50041B0EC004EBAEF005AC2EF0060C6EF005CC4EF004CB6EF0037A5E6002A9A
      E10038B8EE00B1E3F8000975D000FFFFFF0016B2E6008EDDF4009EE6FC0085DE
      FA007BDDFA006CD3F20024A9DF0061D1F10072DEF9000851BF00639DF400187F
      FF000076F8000076EE000368E100044BBB00FFFFFF00F0F0F000C2C2C2009696
      9600919191008C8C8C0087878700838383007E7E7E007A7A7A00757575007171
      7100FFFFFF006F6F6F00FFFFFF00FFFFFF00FFFFFF00777777006E6E6E006464
      64005C5C5C0052525200494949004545450042424200FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0049ADDC00C1EEFB005FD3
      F7006CDBFC007FE5FF008FEDFF0097F2FF0093EDFF007CDFFF005BCCF80046BE
      EF003CBAEE00B3E3F9000E79D100FFFFFF0016B7E900BFF1FD0074D9F7005BD1
      F60044CBF5008EE6FC0012A2DC0047C7F4002EB6F1000442BC00AECDFE00FFFF
      FF00FFFFFF00FFFFFF00187FEF000442BC00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FCFC
      FC007272720079797900FFFFFF00FFFFFF00FFFFFF0082828200787878007070
      7000FFFFFF00FFFFFF00535353004B4B4B004646460043434300FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF004EB2DD00C3EFFB0065D6
      F8004CB6EC005ABDEF0095EBFF003097DD004D82AB0084E1FF0041A9E900329F
      E10042BEEF00B4E5F900137ED200FFFFFF0018BBEC00BDEFFC0099E3FB0089DF
      FA0074D9F90063DAF80013A8E0005BD2F90044C9F7000653C0008DB5F6004D92
      FF001177FF002186FF00408AEB00044EBE00FFFFFF00FFFFFF00FFFFFF00A0A0
      A0009C9C9C0097979700929292008E8E8E008989890084848400808080007E7E
      7E00B0B0B00074747400FFFFFF00FFFFFF00FFFFFF008C8C8C00848484007B7B
      7B00FFFFFF00FFFFFF005F5F5F00565656004C4C4C004747470044444400FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0053B7DE00C6F0FC006AD9
      F8007CE2FD0090E8FF0099E9FF00329FDF00548BB2008AE2FF006AD0F90050C5
      F10046C1F000B6E7F9001883D300FFFFFF0019C0EF00AAEAFB0078DAF80061D4
      F60044CDF50066DBF80014ADE40036C1F2002BB7F1001C87DD003775D2008DB5
      F700B8D6FE0072A8F5002D6BCB000860C800FFFFFF00FFFFFF00D6D6D600C9C9
      C900D9D9D900B1B1B100D6D6D600A9A9A900D2D2D200A2A2A200CFCFCF009A9A
      9A00CBCBCB0078787800FFFFFF00FFFFFF00FFFFFF00989898008F8F8F008585
      85007D7D7D00737373006A6A6A0060606000585858004F4F4F00484848004444
      4400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0058BBDF00C7F1FC006FDC
      F90056BBED0061BDEF009BE7FF0035A6E2004BA4E10090E2FF0049ADE90038A4
      E30049C4F000B8E8F9001E88D400FFFFFF001BC4F100CFF5FE00C3F0FE00BDEF
      FE00A2E7FC0099E8FC0015B3E7005ED3F90048CCF80036C2F5004199E0000E57
      C3000442BC000345B9000345B900FFFFFF00FFFFFF00FFFFFF00AFAFAF00F3F3
      F300B8B8B800EBEBEB00B1B1B100E9E9E900AAAAAA00E7E7E700A3A3A300E5E5
      E5009B9B9B007D7D7D00FFFFFF00FFFFFF00FFFFFF00FFFFFF00999999009191
      9100888888007E7E7E00767676006C6C6C006363630059595900505050004848
      480045454500FFFFFF00FFFFFF00FFFFFF00FFFFFF005CBFE000C8F3FC0075DF
      F90089E6FD0095E7FF009AE5FF00AAEEFF00A8EDFF0099E3FF0074D5F90059CC
      F3004FC8F100BBE9FA00248DD500FFFFFF001BC8F400DAF7FE00D1F4FF00C3F1
      FF00B7EEFF00BFF2FE0017B7EB003AC4F3002DBBF20020B0EF0051C7F40012A5
      DF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00B7B7B700D1D1D100BFBF
      BF00DDDDDD00B9B9B90041AB77003AA870002B9F5F00229A5500D3D3D300A3A3
      A300CFCFCF0088888800F9F9F900FFFFFF00FFFFFF00FFFFFF00FFFFFF009B9B
      9B00929292008A8A8A0080808000777777006E6E6E00646464005C5C5C005252
      52004949490045454500FFFFFF00FFFFFF00FFFFFF0060C2E100C9F3FC00CBF3
      FD00D4F6FE00D7F6FF00D8F4FF00E0F8FF00DFF8FF00DAF5FF00369AD500369A
      D500369AD500BDEBFA002B93D600FFFFFF001CCBF60091E1FA00DFF8FF00D7F7
      FF00CCF4FF00A9E9FA002AC2F00064D6F9004CCFF8003BC6F60068D6F90014AA
      E200FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00BBBBBB00C5C5C500EFEF
      EF00C0C0C000EDEDED003FAC79009FD2B70098CDAF001D984D00ABABAB00E8E8
      E800A4A4A40099999900ECECEC00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF009C9C9C00949494008B8B8B00828282007878780070707000666666005D5D
      5D00535353004B4B4B0046464600FFFFFF00FFFFFF0061C3E100909395009191
      91008E8E8E005AB9DC0055B8DF0051B5DE004DB1DD0049ADDC0046A8D700369A
      D500369AD500359AD6003199D800FFFFFF001ECEF8001DCCF7001BCAF6001BC8
      F5001AC5F4001AC2F20079DCF8003CC7F40030BFF30023B5F0006CD7F90014AF
      E500FFFFFF00FFFFFF00FFFFFF00FFFFFF00C1C1C100D7D7D700E2E2E200C6C6
      C600E0E0E000C1C1C1003AB07800A1D3B70098CEAE0016974800D7D7D700ABAB
      AB00D3D3D300AAAAAA00E0E0E000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF009E9E9E00959595008C8C8C00848484007B7B7B00717171006969
      69005F5F5F00565656004C4C4C00FFFFFF00FFFFFF00FFFFFF0093939300B9B9
      B90091919100FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0019C3F100A2E9FC0069D9FA0051D2F9003EC9F7005ACCF50015B3
      E800FFFFFF00FFFFFF00FFFFFF00FFFFFF00C3C3C300FBFBFB00F8F8F800F8F8
      F80054BE90004CB9850069BF9600A3D3B70099CCAC0040A9690013933D000C85
      2D00F0F0F000D7D7D7009C9C9C00CECECE00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF009F9F9F00989898008F8F8F00858585007D7D7D00FFFF
      FF00FFFFFF006060600058585800FFFFFF00FFFFFF00FFFFFF0093939300BCBC
      BC0092929200FFFFFF00FFFFFF00FFFFFF00FFFFFF008F8F8F00939393008F8F
      8F00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF001BC6F30087E2FA0040CBF50034C4F30025BAF1005CCDF60017B7
      EB00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C4C4C400C4C4C400C2C2C200BFBF
      BF0044BF8D007BCAA800AED9C00091CCAA007FC39B0092C9A5004AAA69001686
      3000C4C4C400FAFAFA00E3E3E300A2A2A200FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00A2A2A2009999990091919100888888007E7E
      7E00FFFFFF006C6C6C0063636300FFFFFF00FFFFFF00FFFFFF0093939300C0C0
      C000ACACAC0092929200FFFFFF00FFFFFF00868686008F8F8F00A2A2A2007A7A
      7A00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF001CC9F400BAF0FD00AAEAFE00A2E9FE0079DDFB007BDFFB0017BB
      ED00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF003ABF80006FC79E00ABD7BC009ED0AF0054B3750067B67B00FFFF
      FF00A2A2A2009D9D9D0099999900D8D8D800FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00A3A3A3009B9B9B00929292008A8A
      8A00808080008E8E8E006E6E6E00FFFFFF00FFFFFF00FFFFFF00A1A1A100ADAD
      FD00C7C7C700AAAAAA0092929200929292009F9F9F00B4B4B400929292002121
      2100FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF001CCCF600D6F7FF00BCEFFF00ABEBFF009AE6FF00A7EDFD0018BF
      F000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0025BD690063C493005EBE86004AB06300FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00A5A5A5009C9C9C009494
      94008B8B8B0082828200FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00A1A1
      A100AEAEAE00C8C8C800CACACA00CACACA00BEBEBE009B9B9B0087878700FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF001ECFF700A2E7FB00D3F6FF00C7F4FF00BBF1FF00A2E9FB001AC3
      F200FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FEFFFE000BB7500044B66300FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00A4A4A400A1A1A1009A9A9A009A9A9A009696960092929200FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF001FD1F9001ECFF8001ECEF7001CCCF6001CCAF5001BC8F4001BC6
      F400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF001277
      A90004609700FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00036C
      A300086FA500FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000C689A0056CA
      E90034B0D700025D9300FFFFFF00FFFFFF00FFFFFF00FFFFFF001080B20081E0
      F3000D8BBD000C689A00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF002892
      BF005DF0FF0038B6DC0004659A00FFFFFF00FFFFFF001F8BBA00A1EEFB0041D4
      F7002892BF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF0000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000A67
      9A0048D3F60050E9FF0048C2E300076B9F002392BF00B5F2FB0050EAFF0048D3
      F600005A9100FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF0000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF000A679A0035DDFF0055E3FF0058D7F300A5EEFC0081EEFF0043DEFC000A67
      9A00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF0000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF000000000000000000000000000000000000000000000000000000
      000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF000A679A0030D4FF0057E1FF0075E7FF0084F3FF000A679A00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF0000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000462
      97000A679A000FC6FB0018CBFF0035D5FF0055DDFF007FEDFF0063CEE7000A67
      9A000A679A00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF0000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00005A91001A79A90056C4
      E50047E0FF001CCCFF000AC6FE001CCCFE003AD7FF0059E0FF0083EEFF0075E5
      F7002EA5CC002EA5CC00005A9100FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00938378003A342F000D0C0B0000000000FFFFFF00FFFFFF0000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00106EA0006BB8D300D3FFFF00BFFF
      FF0080F2FF0050E5FF001CCEFF000AC5FE001DCCFE003EDDFF0064EDFF008FF8
      FF0089FEFF004CD3ED006BB8D300005A9100FFFFFF00FFFFFF00FFFFFF009181
      750000000000000000000000000000000000FFFFFF00FFFFFF0000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF000000000000000000000000000000000000000000000000000000
      000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0000000000000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00005A9100005A9100005A9100005A
      9100005A9100005A910055CEF00019CEFF000CC9FF0016A7DA00005A9100005A
      9100005A9100005A9100005A9100005A9100FFFFFF00FFFFFF00FFFFFF003A34
      2F0000000000000000000000000000000000FFFFFF00FFFFFF0000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00005A910049E2FF0014CBFF00036FA700FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000E0D
      0B0000000000000000000000000000000000FFFFFF00FFFFFF0000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00005A910073EDFF0031CCF700066BA000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF003C36
      320000000000000000000000000000000000FFFFFF00FFFFFF0000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00005A910093EFFC0041BCE10003609700FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00988A
      7E0000000000000000000000000000000000887C7100FFFFFF0000000000887C
      7100FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF000000000000000000000000000000000000000000000000000000
      000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00005A9100ADEEF80041A4CA00005A9100FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00978A7E003C36320000000000000000000000000000000000000000000000
      000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00005A9100B8E3EF0046A0C500005A9100FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF001875A5000B699D00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0084000000840000008400
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0084000000840000008400
      0000FFFFFF00FFFFFF0000000000000000000000000000000000000000000000
      00000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000FFFF
      FF00000000000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00000000000000000000000000FFFFFF0084000000840000008400
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF000000000000000000FFFFFF00FFFFFF00FFFFFF000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF00FFFF
      FF00FFFFFF0000000000FFFFFF0000000000FFFFFF00FFFFFF0000000000FFFF
      FF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF000000000000000000FFFFFF00FFFFFF00FFFFFF000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF000000000000000000FFFFFF00FFFFFF00FFFFFF000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFF
      FF0000000000FFFFFF00FFFFFF00000000000000000000000000FFFFFF00FFFF
      FF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF0084000000840000008400
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF000000000000000000FFFFFF00FFFFFF00FFFFFF000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000000000
      000000000000FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF0000000000FFFF
      FF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF0084000000840000008400
      0000FFFFFF00FFFFFF0000000000000000000000000000000000000000000000
      00000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF000000000000000000FFFFFF00FFFFFF00FFFFFF000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      0000FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF0000000000FFFF
      FF0000000000FFFFFF00FFFFFF0000000000FFFFFF0084000000840000008400
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF000000000000000000FFFFFF00FFFFFF00FFFFFF000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      0000FFFFFF00FFFFFF0000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF000000000000000000FFFFFF00FFFFFF00FFFFFF000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      0000000000000000000000000000FFFFFF000000000000000000000000000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0084000000840000008400
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0084000000840000008400
      0000FFFFFF00FFFFFF0000000000000000000000000000000000000000000000
      00000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0084000000840000008400
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00299C
      DE00299CDE00A57B7300A57B7300A57B7300A57B7300A57B7300A57B7300A57B
      7300A57B7300A57B7300A57B7300FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00BD735200C65A0000AD4A
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00299CDE008CD6
      EF0084D6F700CEC6BD00FFEFDE00F7EFE700F7EFDE00F7EFDE00F7EFDE00F7EF
      DE00F7EFDE00F7EFDE00A57B7300FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00B55A3100C65A0000CE63
      0000B5521000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00299CDE00A5E7FF0094EF
      FF008CF7FF00CEC6BD00F7E7D600F7E7D600F7DEC600F7DEC600F7DEC600F7DE
      BD00F7DEC600F7E7D600A57B7300FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00B55A3100C663
      0000CE630000B55A2100FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00299CDE00A5E7FF0094EF
      FF0084EFFF00CEC6BD00F7E7DE00FFE7CE00F7DEBD00F7DEBD00F7DEBD00F7DE
      BD00F7DEC600F7E7D600A57B7300FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00B55A
      2100CE630000C6630000C6846300FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00299CDE00ADEFFF00A5EF
      FF0094EFFF00CEC6BD00F7E7E700F7E7D600F7DEC600F7DEC600F7DEBD00F7DE
      BD00F7DEC600F7E7D600A57B7300FFFFFF00FFFFFF00AD4A0000BD5A0000BD5A
      0000BD5A0000BD5A0000BD5A0000BD5A0000BD5A0000C6846300FFFFFF00FFFF
      FF00AD4A0000CE630000B54A0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000000000000000
      0000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00299CDE00B5EFFF00ADEF
      FF00A5EFFF00CEC6BD00F7EFE700F7EFDE00FFE7CE00FFE7CE00FFE7CE00F7DE
      C600F7E7D600EFE7DE00A57B7300FFFFFF00FFFFFF00B5520000D6730000CE6B
      0000CE630000CE630000CE630000CE630000C6630000BD6B4200FFFFFF00FFFF
      FF00CE9C8400C6630000C6630000C6846300FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00000000000000000000000000FFFFFF00FFFFFF00000000000000
      000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      00000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00299CDE00BDEFFF00BDF7
      FF00ADF7FF00CEC6BD00FFF7EF00FFE7CE00FFDEBD00F7DEBD00F7DEBD00FFDE
      B500F7DEC600F7EFE700A57B7300FFFFFF00FFFFFF00BD5A0000DE7B0000D673
      0000CE630000A5421000CE9C8400CE9C8400CE9C8400FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00AD4A0000CE630000B5521000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00000000000000000000000000FFFFFF00FFFFFF00000000000000
      000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00299CDE00C6EFFF00CEF7
      FF00BDF7FF00CEC6BD00FFF7F700FFF7EF00F7EFE700F7EFE700F7EFDE00F7EF
      DE00F7EFE700EFE7DE00A57B7300FFFFFF00FFFFFF00C6630000E7840000CE63
      0000DE730000CE630000C6846300FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00C6734200CE630000B54A0000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00000000000000000000000000FFFFFF00FFFFFF00000000000000
      000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00299CDE00CEEFFF00DEF7
      FF00CEF7FF00CEC6BD00FFF7F700FFFFFF00FFFFFF00FFF7F700F7F7F700EFE7
      DE00D6BDB500C6ADA500A57B7300FFFFFF00FFFFFF00CE630000F7940000B552
      1000B5520000DE7B0000CE6B0000BD7B5200FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00C6734200CE630000B54A0000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF000000000000000000000000000000000000000000000000000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00299CDE00CEEFFF00E7FF
      FF00DEF7FF00CEC6BD00FFF7F700FFFFFF00FFFFFF00FFFFFF00FFFFFF00DECE
      C600E7AD7300C6AD8C00FFFFFF00FFFFFF00FFFFFF00CE6B0800FF9C0800CE84
      4200FFFFFF00B5520000E7840000CE6B0000BD633100FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00B54A0000CE630000B5521000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00000000000000000000000000FFFFFF00FFFFFF00000000000000
      000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00299CDE00D6F7FF00F7FF
      FF00E7FFFF00CEC6BD00FFEFE700FFF7EF00FFF7EF00FFEFEF00FFF7EF00E7C6
      BD00C6AD8C00299CDE00FFFFFF00FFFFFF00FFFFFF00CE732100FFAD3100CE84
      4A00FFFFFF00FFFFFF00C6631000E7840000E77B0000BD520000C67B5200C68C
      7300B5521000C6630000C6630000C6846300FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00000000000000000000000000FFFFFF00FFFFFF00000000000000
      000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00299CDE00DEF7FF00FFFF
      FF00F7FFFF00CEC6BD00CEC6BD00CEC6BD00CEC6BD00CEC6BD00CEC6BD00CEC6
      BD0084C6DE00299CDE00FFFFFF00FFFFFF00FFFFFF00CE7B3900FFBD6300C67B
      5200FFFFFF00FFFFFF00FFFFFF00B55A2100E77B0000E7840000DE7B0000D673
      0000CE6B0000C6630000AD4A1000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00000000000000000000000000FFFFFF00FFFFFF00000000000000
      000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000000000000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00299CDE00DEF7FF00F7F7
      F700ADC6CE00A5C6CE00A5C6CE00A5C6CE00A5C6CE00A5C6CE00B5D6D600DEFF
      FF0084D6F700299CDE00FFFFFF00FFFFFF00FFFFFF00CE947B00C6845A00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00CE9C8400C6631000CE6B0000CE6B
      0000BD5A0000BD6B4200FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      00000000000000000000FFFFFF00FFFFFF00FFFFFF00299CDE00DEF7FF00DECE
      C600BDA59C00A57B7300A57B7300A57B7300A57B7300A57B7300BD9C9400E7EF
      E70094DEF700299CDE00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00299CDE00B5D6
      E700949C9C00E7DED600F7E7D600F7E7D600F7E7D600CEC6BD00849CA5008CCE
      E700299CDE00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00299C
      DE00299CDE009C948C009C948C009C948C009C948C009C948C00299CDE00299C
      DE00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00AD5A5A00AD52
      5200A54A4A00AD949400C6CEC600CECEC600CECEC600C6CEC600C6CEC600B59C
      9C009C4242009C424200A5525200FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00B58C8C008C5A5A008C5A5A008C5A5A008C5A5A008C5A5A008C5A
      5A008C5A5A008C5A5A008C5A5A00FFFFFF00FFFFFF0029ADD60031B5DE0021AD
      D600FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00BD7B7300CE636300CE6B
      6B00B55A5A009C848400BDA5A500E7CECE00FFF7F700FFFFF700F7F7F700CEB5
      B500942929009C313100C65A5A00AD5A5A00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00AD390000A54200008C290000FFFFFF00FFFFFF00FFFFFF00A5420000A542
      00008C290000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00B58C8C00FFF7E700F7EFDE00F7EFDE00F7EFDE00F7EFDE00F7EF
      DE00F7EFDE00F7E7CE008C5A5A00FFFFFF00FFFFFF0029ADD6009CDEEF0084EF
      FF004AC6E70021ADD60018A5C60018A5C60018A5C600FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00BD7B7300CE636300CE63
      6300B55A5A009C7B7B009C424200B5737300E7DEDE00FFF7F700FFFFFF00D6B5
      B500943131009C313100BD5A5A00AD5A5A00FFFFFF00FFFFFF00FFFFFF00C65A
      0000A5420000A5420000A54200008C290000FFFFFF00A5420000AD390000A542
      0000AD3900008C290000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00B58C8C00F7EFDE00F7DECE00F7DEC600F7DEC600F7DEC600F7DE
      C600EFDECE00EFDECE008C5A5A00FFFFFF00FFFFFF0029ADD60052BDE7009CFF
      FF0094FFFF0073DEF70073DEF70073DEF70073DEF7004AC6E70021ADD60018A5
      C600FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00BD7B7300CE636300CE63
      6300B55A5A00AD8484009C3939009C393900CEBDBD00EFEFEF00FFFFFF00E7C6
      C6009429290094313100BD5A5A00AD5A5A00FFFFFF00FFFFFF00FFFFFF00AD39
      0000FFFFFF00FFFFFF00FFFFFF008C290000FFFFFF00AD390000FFFFFF00FFFF
      FF00FFFFFF008C290000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00B58C8C00FFF7E700FFD6A500FFD6A500FFD6A500FFD6A500FFD6
      A500FFD6A500EFDECE008C5A5A00FFFFFF00FFFFFF0029ADD60052BDE700ADFF
      FF008CF7FF008CEFFF008CEFFF008CEFFF0073DEF70073DEF70073DEF7004AC6
      EF0021ADD600FFFFFF00FFFFFF00FFFFFF00FFFFFF00BD7B7300CE636300CE63
      6300B55A5A00B58C8C009C4A4A0094313100A59C9C00D6D6D600FFFFFF00E7C6
      C6009429290094313100BD5A5A00AD5A5A00FFFFFF00FFFFFF00FFFFFF00AD39
      00008C290000FFFFFF00FFFFFF008C290000FFFFFF00AD390000FFFFFF00FFFF
      FF00C65A00008C290000FFFFFF00FFFFFF00FFFFFF00B58C8C008C5A5A008C5A
      5A008C5A5A00B58C8C00FFF7EF00F7DEC600F7DEC600F7DEC600F7DEC600F7DE
      BD00F7E7CE00EFDECE009C6B6300FFFFFF00FFFFFF0029ADD60029ADD600ADDE
      EF0094F7FF0094F7FF008CEFFF008CEFFF008CEFFF008CEFFF0073DEF70073DE
      F7004AC6EF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00BD7B7300CE636300CE63
      6300BD5A5A00C6948C00C6949400B5848400AD8C8C00BDA5A500E7C6C600DEAD
      FD00A5393900A5393900C65A5A00AD5A5A00FFFFFF00FFFFFF00FFFFFF00C65A
      0000AD390000A5420000AD390000AD390000FFFFFF00AD390000AD390000A542
      0000AD3900008C290000FFFFFF00FFFFFF00FFFFFF00B58C8C00FFF7E700F7EF
      DE00F7EFDE00B58C8C00FFF7EF00F7E7CE00F7DEC600F7DEC600F7DEC600F7DE
      C600F7E7D600EFDECE009C6B6B00FFFFFF00FFFFFF0029ADD60073DEF70029AD
      D6009CFFFF008CF7FF008CF7FF008CF7FF008CEFFF008CEFFF008CEFFF0073DE
      F70073DEF70018A5C600FFFFFF00FFFFFF00FFFFFF00BD7B7300CE636300CE63
      6300CE636300CE636300CE636300CE636300CE636300C65A5A00C65A5A00CE63
      6300CE636300CE636300CE6B6B00AD525A00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00C65A0000A5420000A54200009C4A18008C634A00AD390000A5420000A542
      00008C290000FFFFFF00FFFFFF00FFFFFF00FFFFFF00B58C8C00F7EFDE00F7DE
      CE00F7DEC600B58C8C00FFFFF700FFD6A500FFD6A500FFD6A500FFD6A500FFD6
      A500FFD6A500EFE7D600A57B7300FFFFFF00FFFFFF0029ADD60094F7FF0029AD
      D600ADDEEF00A5EFF700A5EFF700A5F7FF008CEFFF008CEFFF008CEFFF0073DE
      F7000073080018A5C600FFFFFF00FFFFFF00FFFFFF00BD7B7300B5525200B55A
      5A00C6848400D6A5A500D6ADAD00D6ADA500D6ADAD00D6A5A500D6A5A500D6AD
      A500D6ADAD00D69C9C00CE636300AD525200FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF008C736B004242420063524200FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00B58C8C00FFF7E700FFD6
      A500FFD6A500B58C8C00FFFFF700FFE7D600FFE7D600F7E7D600F7E7CE00FFE7
      D600FFF7E700EFDEDE00A57B7300FFFFFF00FFFFFF0029ADD6009CFFFF0073DE
      F70029ADD60018A5C60018A5C60018A5C600ADDEEF008CF7FF0084EFFF000073
      08005AE78C000073080018A5C600FFFFFF00FFFFFF00BD7B7300AD524A00E7CE
      CE00F7F7F700F7F7EF00F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7
      F700F7F7F700DEBDBD00C65A5A00AD525A00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF008C736B009C847B009C847B009C847B0063524200FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00B58C8C00FFF7EF00F7DE
      C600F7DEC600B58C8C00FFFFFF00FFFFFF00FFFFFF00FFFFF700FFFFF700EFDE
      DE00D6C6C600BDADAD00B5847300FFFFFF00FFFFFF0029ADD6009CFFFF0094F7
      FF0073DEF70073DEF70073DEF7006BDEF70029ADD600ADDEEF000073080052D6
      7B0042D66B0031C64A0000730800FFFFFF00FFFFFF00BD7B7300B5524A00EFD6
      D600FFF7F700F7EFEF00F7EFEF00F7EFEF00F7EFEF00F7EFEF00F7EFEF00F7EF
      EF00F7F7F700DEBDBD00C65A5A00AD525A00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF008C736B009C847B00B5A59C00FFFFFF00B5A59C009C847B006352
      4200FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00B58C8C00FFF7EF00F7E7
      CE00F7DEC600B58C8C00FFFFFF00FFFFFF00FFFFFF00FFFFF700FFFFF700B58C
      8C00B58C8C00B58C8C00B58C8C00FFFFFF00FFFFFF0029ADD6009CFFFF0094F7
      FF0094F7FF0094F7FF0094F7FF0073DEF70073DEF70029ADD60018A5C600108C
      210031C64A00109C210018A5C600FFFFFF00FFFFFF00BD7B7300B5524A00EFD6
      D600EFEFEF00D6D6D600D6D6D600D6D6D600D6D6D600D6D6D600D6D6D600D6D6
      D600EFEFEF00DEBDBD00C65A5A00AD525A00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF008C736B009C847B00B5A59C00FFFFFF00FFFFFF00FFFFFF00B5A59C009C84
      7B0063524200FFFFFF00FFFFFF00FFFFFF00FFFFFF00B58C8C00FFFFF700FFD6
      A500FFD6A500B58C8C00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00B58C
      8C00EFB56B00C68C7B00FFFFFF00FFFFFF00FFFFFF0029ADD600C6FFFF0094FF
      FF009CFFFF00D6FFFF00D6FFFF008CEFFF0094EFFF0073DEF70073DEF7000884
      100018AD290008841000FFFFFF00FFFFFF00FFFFFF00BD7B7300B5524A00EFD6
      D600EFEFEF00DED6D600DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00DED6
      D600EFEFEF00DEBDBD00C65A5A00AD525A00FFFFFF00FFFFFF00FFFFFF008C73
      6B009C847B00B5A59C00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00B5A5
      9C009C847B0063524200FFFFFF00FFFFFF00FFFFFF00B58C8C00FFFFF700FFE7
      D600FFE7D600B58C8C00B58C8C00B58C8C00B58C8C00B58C8C00B58C8C00B58C
      8C00BD848400FFFFFF00FFFFFF00FFFFFF00FFFFFF0021ADD6009CDEEF00C6FF
      FF00C6FFFF009CDEEF0018ADD60018A5C60018A5C60018A5C60018A5C600088C
      100008A51800FFFFFF00FFFFFF00FFFFFF00FFFFFF00BD7B7300B5524A00EFD6
      D600F7F7EF00E7DEDE00E7DEDE00E7DEDE00E7DEDE00E7DEDE00E7DEDE00E7DE
      DE00EFEFEF00DEBDBD00C65A5A00AD525A00FFFFFF00FFFFFF00FFFFFF009C84
      7B00B5A59C00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00B5A59C009C847B00FFFFFF00FFFFFF00FFFFFF00B58C8C00FFFFFF00FFFF
      FF00FFFFFF00FFFFF700FFFFF700EFDEDE00D6C6C600BDADAD00B5847300FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0031B5DE0029AD
      D60018A5C60018A5C600FFFFFF00FFFFFF00FFFFFF00FFFFFF00088C100008A5
      180008841000FFFFFF00FFFFFF00FFFFFF00FFFFFF00BD7B7300B5524A00EFD6
      D600EFEFEF00D6D6D600D6D6D600D6D6D600D6D6D600D6D6D600D6D6D600D6D6
      D600EFEFEF00DEBDBD00C65A5A00AD525A00FFFFFF00FFFFFF00FFFFFF00B5A5
      9C00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00B5A59C00FFFFFF00FFFFFF00FFFFFF00B58C8C00FFFFFF00FFFF
      FF00FFFFFF00FFFFF700FFFFF700B58C8C00B58C8C00B58C8C00B58C8C00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF0000730800087B0800088C1000088C1000087B
      0800FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00BD7B7300B5524A00E7D6
      CE00FFF7F700F7EFEF00F7EFEF00F7EFEF00F7EFEF00F7EFEF00F7EFEF00F7EF
      EF00FFF7F700DEBDBD00C65A5A00AD525A00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00B58C8C00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00B58C8C00EFB56B00C68C7B00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00AD524A00CEB5
      B500D6D6D600CECECE00CECECE00CECECE00CECECE00CECECE00CECECE00CECE
      CE00D6D6D600CEADAD00A54A4A00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00B58C8C00B58C8C00B58C
      8C00B58C8C00B58C8C00B58C8C00B58C8C00BD848400FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00424D3E000000000000003E000000
      2800000040000000D00100000100010000000000800E00000000000000000000
      000000000000000000000000FFFFFF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000}
  end
  object ImageList2: TImageList
    Height = 20
    Width = 20
    Left = 312
    Top = 520
    Bitmap = {
      494C010105000900040014001400FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000500000002800000001002000000000000032
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000084DEFF0031A9
      F300339AEF00339AEF00339AEF00339AEF00339AEF00339AEF00339AEF00339A
      EF00339AEF00339AEF00339AEF00339AEF0032A6F20084DEFF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000023AFF50016DE
      FF000EDEFE000EE6FE000EE6FE000EE6FE000EE6FE000DEEFF000DEEFF000EDE
      FE000EDEFE000EDEFE000EDEFE000FD7FE001BD7FE0023A8F300000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000071B2F20013CC
      F90000EFFF0000EFFF0000EFFF0000EFFF0000F7FF0004C7F80004C7F80000F7
      FF0000EFFF0000E6FF0000E6FF0000E6FF0016C2F80071B2F200000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000E7F2FD0023A8
      F30005EBFF0005EBFF0000EFFF0000F7FF0000EFFF001941DC00174DDE0000F7
      FF0000F7FF0000EFFF0000EFFF0005EBFF001EA1F100E7F2FD00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000007CC4
      F60013CCF90000E6FF0000E6FF0000E6FF0000EFFF000B9CEC000AA5EE0000F7
      FF0000EFFF0000EFFF0000EFFF0013CCF9007CC4F60000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000EFF8
      FE001EB1F50000DEFF0000DEFF0000DEFF0000E6FF0000D8FA0000D8FA0000E6
      FF0000E6FF0000E6FF0008E4FE001EB1F500EFF8FE0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000087D4F9000FC4F9000FD7FE000FD7FE001BE7FF002896E6002896E6001BE7
      FF0016DEFF0016DEFF000FC4F90089D3F9000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000F7FCFF002FBDF80062DCFF005ADCFF0053E4FF0057A3E60057A3E60044E3
      FF0044DBFF004DDCFE002FBDF800F7FCFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000095DDFC004AC9FB0070DBFF0062DCFF00639DE1005B9AE1004DDC
      FE0046D5FF002BC3FB0095DDFC00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000033C2FA0084D5FF0079DAFF007AA3E00073A0DF0063D5
      FF005ED0FF0033C2FA0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000A3E4FD0056CAFC009CDCFF008FACE00089A8DE0084D5
      FF0043C5FC00A3E4FD0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000039C6FC00A1DBFF00A7BFE600A0BBE6008BD4
      FF0033C2FA000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000AEE5FD0060C9FC00C6E3FF00BEE0FF0050C4
      FC00AEE5FD000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000003CC0FB00BEE0FF00B5DEFE003CC0
      FB00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000BDE8FE0084D5FF0059C8FB00BDE8
      FE00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000CDF2FF00BAEDFE000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000D8CDAD0093825800F8F6F40000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000009FC0E5004D74
      9D00EDEEED000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000A8997A00A2824400927B6200DEDEDE00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000006E93B3001779
      CC0058859D00DEDEDE0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000C6C6DD007F7F
      C9005252BD004343C4004444C0006161C0009C9CC800E7E7E700000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000008E816B00DCAF8300DCAF8300866C4600B8B4B4000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000658093006BCE
      F2006BCEF2002C729D00B4B8B700000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000077897900DBDEDB00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000CDCDE1004444C0000D0DBF000B0B
      C5000808CE000808CE000303D2000303D2000303D2000F0FB9008081B9000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000008E816B00CCA27800F5BE9F00DCAF830093744E00A69B
      8B00000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000006580930056C0
      ED0098ECFB006BCEF2001C83BE00899CA7000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000ADB6AD00288B53007D9D8A00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000A3A3D7001B1BB6001415C6001415C6001415
      C6001B1BC7002322C8002322C8001415C6000303D2000303D2000303D2004141
      AE00EFEFEF000000000000000000000000000000000000000000000000000000
      00000000000000000000958A7500C69C7100E5B18D00DAA68400D7A17A00AC7B
      56009A876B00EEEDED0000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000006E889B004ABD
      E7007CDDF5006CDAF10062D6EF001C9EDB006089A400EDEEED00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000D6D5D5002F824C001CFF75001FA05000ADB5A5000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000BCBCD6001B1BB6001B1CBD001B1CBD003A3BC6009F9F
      E000DDDDF100EFEFF800EFEFF800C6C6E9007171D7000808CE000808CE000606
      D8004141AE00000000000000000000000000FCF9F600D9D4CE00CCC5C200CCC5
      C200C4C4C400C4C4C4006E644F00C4996D00DEAD8C00D49F7C00CC967300CC96
      7300B483540093744E00DAD4CC00000000000000000000000000000000000000
      0000F4FAFE00C7D8E000C2CACC00C2C9CA00C4C4C400C4C4C4004F5E6D0046B9
      E90073DAF40062D6EF0053CFEE004CCFEB0021AFE4003A84A600CCD5DA000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000F6F6F600497F58001BCD5E000ADE520016D95D002F824C00CCCC
      CC00000000000000000000000000000000000000000000000000000000000000
      000000000000EFEFF8002F2FB6002222BA002222BA006969CC00F5F5F9000000
      0000000000000000000000000000000000008787D4000F0FCD000808CE000808
      CE000808CE008081B9000000000000000000927B62007D5B3200744B2200865D
      330089633A00835F3B008D6C4200CCA27800D49F7C00CF9A7600C5926D00C28B
      6600BE856200B17B520090673B00C5B2A7000000000000000000000000000000
      00003892BC00136C9B000C648900127AA5001580AD00167CA6001780B60056C6
      EB0062D6EF0053CFEE004CCFEB003AC5E7003AC5E7001EB7E3001F81AB00A3C1
      CD00000000000000000000000000000000000000000000000000000000000000
      0000000000007495770017A3490008C74A000BC148000BC1480012B44B004E86
      5B00F6F6F6000000000000000000000000000000000000000000000000000000
      0000000000008C8CD6002828B5002828B5005252BD0000000000000000000000
      00000000000000000000000000007F7FD2001010C4000B0BC5000F0FCD000F0F
      CD000606D8000F0FB900EFEFEF000000000049270A007B4F25009A664200B67E
      5900C48E6900CF9A7600D7A17A00CF9A7600CC967300CC967300C48E6900BF89
      6300B6805A00AD7452009F6B45008B5B2F00B59A7F00FCF9F600000000000000
      0000033A4E000D6E920016A1BF002ABFE50042C9EB0053CFEE0062D6EF0056D3
      ED0056D3ED004CCFEB0041C7E8003AC5E7002ABFE5001CC3E10018A6C900107F
      A90073A9BF00F8FBFB0000000000000000000000000000000000000000000000
      0000A4B6A4002E914A002BBE5A002BBE5A002DC9620024BE560018B84D001A97
      4300749977000000000000000000000000000000000000000000000000000000
      0000F5F5F9005252BD002F2FB6002F2FB600D5D5E70000000000000000000000
      000000000000000000008484CF001B1CBD001B1CBD001415C600AEAEE8006060
      D3000303D2000303D2009C9CC8000000000049270A00744B22008D5A3800A76F
      4A00B67E5900BE856200C28B6600C48E6900C48E6900C28B6600BE856200B680
      5A00B17B5200A6704C009A6642008D5A380083522A00A67D5A00F4EBE5000000
      0000033A4E000C6489001394B00019B4D60028C3E5003AC5E7003ECBE9003ECB
      E9003ECBE9003ECBE90035C3E60035C3E60020BCE30019B4D60017A0C2001394
      B0000E799D004A9AB400DFF1F60000000000000000000000000000000000DBDE
      DB00388848004BBD6A004BBD6A0053C46E0047A3610053C1710053C1710053C1
      710041945400ABC1AB0000000000000000000000000000000000000000000000
      0000B4B4E1004444C0003B3BB7005857B5000000000000000000000000000000
      0000000000008484CF002222BA001F1FB8001F1FB800AEAEE80000000000ABAB
      DE000F0FCD000303D2006363C30000000000532A0B007C502A009A664200AC7B
      5600B6876400C48E6900C5926D00C5926D00C5926D00C5926D00BF896300B680
      5A00AD745200A0694600925D390083522A0078492A006E3F1E0091623B00D1AE
      9600034156000E75970017A0C20020B6E10035C3E60041C7E80041C7E80041C7
      E80041C7E80041C7E8003AC5E7002ABFE5001CBEE10018ADCD001495B5000F83
      A0000E7B93000A6981002B83A0008BCBDC000000000000000000E7EEE7005896
      5E004FAE650058BE6D0058BE6D0053A862007495770055A063005CC5740058BE
      6D0069BE79004A905000D5DED500000000000000000000000000000000000000
      00008C8CD6004B4BBD004B4BBD008383BB000000000000000000000000000000
      00008B8BCC002F2FB6002828B5002828B500AEAEE8000000000000000000D6D6
      EC001415C6000303D2004444C00000000000532A0B009A745200B7917000BE98
      7500C69F7C00CCA68300CFAA8600CFAA8600CFAA8600CFAA8600CFAA8600C69F
      7C00C4957400B68B6800A67D5A009162410078492A0064371900854C2200C495
      7400034C5C001C9DCD0040BCE5004ABDE70058C2E90062C7ED0065CCEE0065CC
      EE0065CCEE0065CCEE0065CCEE0056C6EB004BC5E8003CBBE50020B6E100179A
      BA000E7B9300086073000E75970064BCD20000000000000000005595550053A8
      620069BE790065BF75005EB46E0078A77B0000000000A1BEA10053A8620068C4
      7A005FB86D0066B3720054975800F6F6F6000000000000000000000000000000
      00008B8BCC004B4BBD004B4BBD009090C2000000000000000000000000008B8B
      CC002F2FB6002F2FB6002F2FB600B4B4E500000000000000000000000000DDDD
      F1001415C6000808CE004343C40000000000582D0F00A27F5F00BE987500BF9B
      7A00C7A27F00CCA68300CFAA8600CFAA8600CFAA8600CFAA8600CFAA8600CFAA
      8600CCA68300C69F7C00BF9B7A00BF9B7A00A9846300A76F4A00EAD7CA000000
      0000054E600021ABDE004ABDE70051BFE8005AC4EB005AC4EB0065CCEE006BC7
      EE006BC7EE006BC7EE006BC7EE0062C7ED0062C7ED0058C2E90051BFE80051BF
      E80029B3E0002D9EBB00C7E5EC00000000000000000000000000B5D6B50051A0
      550076C1800076C180005C9F5F00E7EEE700000000000000000074AA75006ABA
      750077C4810075BD7D005CA7610074AA75000000000000000000000000000000
      0000ABABDE005858C0005858C0007A79B90000000000000000009696CF003F3F
      B7003B3BB7003B3BB700B4B4E50000000000000000000000000000000000BFBF
      E6001010C4000808CE005453C6000000000059290900AE8E6F00CDAD8C00CDAD
      8C00D5B59300D5B59300DDBB9800D2AE8C00D2AE8C00D2AE8C00D2AE8C00D2AE
      8C00CCA68300CCA68300C5A88800B68B6800C08F6D00F5E9E000000000000000
      0000034C5C0039B4E2006BC7EE006BC7EE0074CBEF007BCBF0007BCBF00074CB
      EF006BC7EE006BC7EE006BC7EE006BC7EE0063BFEA0063BFEA0063BFEA003CBB
      E50050C0DC00DFF1F6000000000000000000000000000000000000000000AECD
      AE0062AF650062AF6500CADDC900000000000000000000000000EFF1EF005FA6
      5F0082C7890082C789008CC78E0046994800B1C9B10000000000000000000000
      0000E3E3F5006C6BC9005A59C5005857B500F5F5F900A3A3D7005252BD005252
      BD004B4BBD00B4B4E50000000000000000000000000000000000000000007575
      CC001010C4000808CE008484CF00000000008D6A5200AF907700A5816200A984
      6300A58162009B795C00A0816300D1B18F00D5B59300D5B59300D5B59300D1B1
      8F00D1B18F00D1B89800B6876400CBA28900FCF9F60000000000000000000000
      00001FA3BF0042BDDE0029B3E00029B3E00029B3E00020A8D50021ABDE0074CB
      EF007BCBF00074CBEF0074CBEF0074CBEF0074CBEF0079C6EE0034BDE5007BCA
      D900F9FAFA000000000000000000000000000000000000000000000000000000
      0000AECDAE00B5D6B5000000000000000000000000000000000000000000BDD8
      BD0056A8570097D3990093CF940093CF940050A35000B5D6B500000000000000
      0000000000009797D9005A59C5005A59C5006969B5005A59C5005858C0005858
      C000BFBFE6000000000000000000000000000000000000000000E7E7E7002727
      BA001B1BC7001415C600CFCFE60000000000F8F6F400D8CBC300C2ADA200C5B2
      A700C1B1A700C0B3AF00725C4C00C5A88800DCC3A300D9BE9C00D9BE9C00DCC3
      A300D4B99900B6805A00D3B8B100000000000000000000000000000000000000
      0000EFFAFC00B0E2EB00A6BEC200A3C2C800A6BEC200AFBFC000436E7A0063BF
      EA008DD1F40082CBF10082CBF1008BCFF20082CBF1002ABFE500A7D7DD000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00008CC78E006CBF6C00A8E1A800AFE5AF007BC47B005BA95B00000000000000
      000000000000DDDDF1006666CC005A59C5005F5EC8005F5EC8006666CC00C7C7
      EE000000000000000000000000000000000000000000EFEFEF004B4BBD002929
      C3002322C8005453C60000000000000000000000000000000000000000000000
      00000000000000000000A4908200C9AD8E00E5CFAE00E5CFAE00E8D2B200D1B1
      8F00B6876400E6D0C90000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000073A7B3006BC7
      EE0099D4F60093D1F400A3D6F6006BC7EE003DBBDA00C9E5E600000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000062AF65009BDF9B00A5E6A5005BA95B00E7EEE700000000000000
      00000000000000000000A5A4DF005F5EC8005F5EC8005F5EC8007877BE00EFEF
      EF0000000000000000000000000000000000BCBCD6004949B2002F2FBE002929
      C3002929C300D6D6EC0000000000000000000000000000000000000000000000
      00000000000000000000AC918000D4B99900F4E1C000F4E1C000C69F7C00B78B
      7100F0E8E8000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000006DAFBE007BCB
      F000B7DEFA00B7DEFA0055C2EA005FB5C700E8F0EE0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000EFF1EF006CBF6C0076C47600DBDEDB0000000000000000000000
      00000000000000000000000000009797D9005F5EC8005A59C5005A59C5005454
      B3007171B6008383BB007878BA005454B3003B3BB7003B3BB7002F2FBE002F2F
      BE00B4B4E5000000000000000000000000000000000000000000000000000000
      00000000000000000000B4917D00E5CFAE00F7E6C800B6876400BF9A87000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000006AB9C70099D4
      F600C1E2FC0034BDE50084B8C100000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000C0DFC000B3DAB3000000000000000000000000000000
      000000000000000000000000000000000000ABABDE006969CC005858C0005858
      C0005858C0004B4BBD004B4BBD003D3DBA003D3DBA003D3DBA004C4CC500C6C6
      E900000000000000000000000000000000000000000000000000000000000000
      00000000000000000000CFB09E00E0CAB400C08F6D00D3B8B100000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000007EDDEE00A0DB
      F30041C7E800B1D3D30000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000E3E3F500A5A4DF007575
      CC006161C0005252BD004B4BBD005252BD006C6BC900ABABDE00F5F5F9000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000F9F3EE00DDC1B100E2CBBE0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000E9F8FC0099E5
      F200BCDDE3000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000EFEF
      F800C6C6E900A5A4DF00ABABDE00D0D0EC000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000050000000280000000100010000000000E00100000000000000000000
      000000000000000000000000FFFFFF00FFFFF0000000000000000000FFFFF000
      0000000000000000C00030000000000000000000C00030000000000000000000
      C00030000000000000000000C00030000000000000000000E000700000000000
      00000000E00070000000000000000000F000F0000000000000000000F000F000
      0000000000000000F801F0000000000000000000FC03F0000000000000000000
      FC03F0000000000000000000FE07F0000000000000000000FE07F00000000000
      00000000FF0FF0000000000000000000FF0FF0000000000000000000FF9FF000
      0000000000000000FFFFF0000000000000000000FFFFF0000000000000000000
      FC7FFFC7FFFFFFFFFFFF0000FC3FFFC3FFFFFFFFC03F0000FC1FFFC1FFFF3FFF
      001F0000FC0FFFC0FFFE3FFE00070000FC03FFC03FFC1FFC000700000001F000
      1FF80FF81F0300000000F0000FF807F87E0100000000300003F007F07C010000
      0000100001E003F0F82100000000000000C001F0F06100000000000000C080F0
      E0E100000000100001C0C0F0C1E100000000300003E1C07003E1000000007000
      07F3E03807C100000001F0001FFFF0380F830000FC03FFC03FFFF83C0F030000
      FC07FFC07FFFF87E00070000FC1FFFC1FFFFFCFF000F0000FC3FFFC3FFFFFFFF
      801F0000FC7FFFC7FFFFFFFFE0FF000000000000000000000000000000000000
      000000000000}
  end
  object PopupMenu1: TPopupMenu
    Left = 452
    Top = 524
    object GerarEFD: TMenuItem
      Caption = 'Gerar'
      ShortCut = 113
      OnClick = GerarEFDClick
    end
    object Sair1: TMenuItem
      Caption = 'Sair'
      ShortCut = 27
      OnClick = Sair1Click
    end
  end
  object ClientSocket1: TClientSocket
    Active = False
    ClientType = ctNonBlocking
    Host = 'SERVIDOR'
    Port = 298
    OnConnecting = ClientSocket1Connecting
    OnConnect = ClientSocket1Connect
    OnDisconnect = ClientSocket1Disconnect
    OnRead = ClientSocket1Read
    OnError = ClientSocket1Error
    Left = 160
    Top = 524
  end
  object ServerSocket1: TServerSocket
    Active = True
    Port = 297
    ServerType = stNonBlocking
    OnClientConnect = ServerSocket1ClientConnect
    OnClientRead = ServerSocket1ClientRead
    Left = 234
    Top = 515
  end
end
