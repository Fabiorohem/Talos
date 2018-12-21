object Fprincipal: TFprincipal
  Left = 288
  Top = 183
  BorderIcons = [biMinimize]
  BorderStyle = bsNone
  ClientHeight = 479
  ClientWidth = 800
  Color = 4432722
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PopupMenu = PopupMenu2
  Position = poDesktopCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object LBMSG: TLabel
    Left = 0
    Top = 454
    Width = 800
    Height = 25
    Align = alBottom
    Alignment = taCenter
    Color = 4432722
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
    ExplicitWidth = 6
  end
  object PageView1: TPageView
    Left = 8
    Top = 110
    Width = 650
    Height = 362
    ActivePage = PageSheet1
    ActivePageIndex = 0
    AdaptiveColors = True
    BackgroundColor = 13230308
    BackgroundKind = bkSolid
    Indent = 2
    Margin = 0
    Options = [pgBoldActiveTab, pgTopBorder]
    ShowTabs = False
    Spacing = 0
    TabHeight = 17
    TabOrder = 0
    TabStyle = tsWhidbey
    TopIndent = 3
    object PageSheet1: TPageSheet
      Left = 0
      Top = 0
      Width = 650
      Height = 362
      Caption = 'Agendamentos'
      DisplayMode = tdGlyph
      ImageIndex = 0
      Margin = 0
      PageIndex = 0
      TabColor = clWindow
      TabWidth = 0
      TransparentColor = clNone
      object DBGrid2: TDBGrid
        Left = 0
        Top = 137
        Width = 650
        Height = 183
        Align = alClient
        DataSource = ds_agendamento
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'DIA'
            Title.Caption = 'Agendado para'
            Width = 64
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'HORARIO'
            Title.Caption = 'Hor'#225'rio'
            Width = 65
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'IP'
            Title.Caption = 'IP do Servidor'
            Width = 100
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'BASEDADOS'
            Title.Caption = 'Base de dados'
            Width = 184
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ARQUIVOSALVO'
            Title.Caption = 'Destino'
            Visible = True
          end>
      end
      object ListBox1: TListBox
        Left = 0
        Top = 137
        Width = 650
        Height = 183
        Align = alClient
        Color = 8454143
        Ctl3D = False
        ItemHeight = 13
        ParentCtl3D = False
        TabOrder = 1
        Visible = False
      end
      object GroupBox2: TGroupBox
        Left = 0
        Top = 0
        Width = 650
        Height = 137
        Align = alTop
        Caption = 'Configura'#231#245'es'
        Color = clWhite
        ParentBackground = False
        ParentColor = False
        TabOrder = 2
        Visible = False
        object Label4: TLabel
          Left = 10
          Top = 50
          Width = 160
          Height = 13
          Caption = 'Banco de dados a ser restaurado:'
        end
        object Label8: TLabel
          Left = 10
          Top = 90
          Width = 127
          Height = 13
          Caption = 'Caminho para restaura'#231#227'o:'
        end
        object CBDesativarIndices: TCheckBox
          Left = 8
          Top = 20
          Width = 97
          Height = 17
          Caption = 'Desativar '#237'ndices'
          TabOrder = 0
        end
        object CBSemValidar: TCheckBox
          Left = 216
          Top = 20
          Width = 81
          Height = 17
          Caption = 'Sem validar'
          TabOrder = 1
        end
        object CBSemShadow: TCheckBox
          Left = 120
          Top = 20
          Width = 89
          Height = 17
          Caption = 'Sem shadow'
          TabOrder = 2
        end
        object CBDetalhes: TCheckBox
          Left = 568
          Top = 20
          Width = 65
          Height = 17
          Caption = 'Detalhes'
          Checked = True
          State = cbChecked
          TabOrder = 3
        end
        object CBUmaTabela: TCheckBox
          Left = 304
          Top = 20
          Width = 121
          Height = 17
          Caption = 'Uma tabela por vez'
          TabOrder = 4
        end
        object CBSubstituir: TCheckBox
          Left = 432
          Top = 20
          Width = 121
          Height = 17
          Caption = 'Substituir base antiga'
          TabOrder = 5
        end
        object AdvGlowButton1: TAdvGlowButton
          Left = 482
          Top = 37
          Width = 80
          Height = 44
          Caption = 'Vai'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ImageIndex = 49
          FocusType = ftHot
          NotesFont.Charset = DEFAULT_CHARSET
          NotesFont.Color = clWindowText
          NotesFont.Height = -11
          NotesFont.Name = 'Tahoma'
          NotesFont.Style = []
          ParentFont = False
          Picture.Data = {
            89504E470D0A1A0A0000000D49484452000000280000002808060000008CFEB8
            6D000000097048597300000EC300000EC301C76FA864000000206348524D0000
            7A25000080830000F9FF000080E8000052080001155800003A970000176FD75A
            1F90000009044944415478DAC4D96B6C5BE51907F047424C62D2A409A67D18A0
            016293766F29D0965C9CA654B425717C2EB613C7495A28A399639FE3C4094993
            36B752185BE98A60052AF161EA10DFF671D2C6D0DAD12690A64D4A69689A92E6
            E2F89ED024767CDEF7D8FF7D70DAC4A99D4B5BC487BF746C593EBFF33CEF7BCE
            EBD784D6564A4B5B27250FB4105345D2EB4A49AFB391AE8A94A8B7115745E21E
            2B71B744CC25FC822982832BE2075C91FEC35CC2287309D3A99826B8229FE28A
            78822B82872BE23AAE0AC4548974C594FA5E4F19E9B532F13A0B31A584922DAF
            10DA0FD2520FAD1AD86027DD2DDECF54A98929E2007309588809E9AF05306749
            FAFB8AF83553C45775C5F488EE2923BDDE76378065A47BCA4957857BB9DBF23A
            53846F983303664D3171AECAEFEA759607F43AF3DDA8607931731A873467C91D
            C21657D704E62C99E4AA7997BE32B03D3D6D8708AD6DC4DD66E24A4947D616DE
            15A800AE98DE668A40C903CD848ED76EF1105AF7A7A7AD9DB0BF9998229D6035
            C5DF1E2E7DACFE3BD9D24068EFB8C54368AD988F9DD0594568A924CD29FEFD5B
            45658856239C4C3657103A77A52CF32E427B7D2A1D8D84CE7AD2EBA476CDB173
            ED275124B0BD3BC15EDE0EA6886B073A8AC0DDA60FD15E4BE86CBAE92234ED22
            3455115AF650A2E1C502ADC6B4B6B6AA32D81F8AC0CD4F80BDBC03CC610497E7
            8F55792DB31B9AA30409CFEE5D687929656ADA45A9837D2F121AACF7B09AEDA1
            146E151550A5144C5E0F5E910BED6833A2C35710F579113F7E08FC85ADE0E2EF
            525555A5D5431DDB817ACB03687E91D0544584E66AC20117E99E8AD7B59AE2D5
            B5D2510C6ED9005E9E03ED7003A2037D9801D212BD7605F177DAC1AB0CE0D23A
            B0EAD541B59A62E8B5F68FB0DF4568A9264A78044AD495DCC75C46BE6CE55429
            D53ECB06F0D28DD0DE6C4474A0FF2668564B60361A4F658E2F408707117FF720
            78653EB8BC7E1EBA5CEB45683546246A8DBF4A780422BDA19478ADDCA4657B42
            DC80999F00B73E05ED683362177B17C19229544C4B4F348ED9B8BE001D1A40FC
            BD57C1EDB9E0E26FC1AA9FCF5E51A709DC2D1FD31B4A89B85B26A68863193FE8
            36437FA11089B24DD08E3421D6D7BD006359602B41072F227EAC03D86D005E7A
            169ADB9CAD9AD7B95BBE97B82A3F96ADDC7CCF36C41BCA31DBD78D1880D9C5AD
            5C0996093AC71103A003B83E7809D39E72247FBF2DF358740AE0AA6424DD2D2A
            CC991998B03E89EB1F1CC60880F02CC36C348E394D476C8EAD093713D330A7E9
            482481584CC348600AA76780CB1D8DE0E23A24EB325791ABE271E2AA7822DB0A
            2561DB849963073132078CFAC2F0FA23084FCD6076FE842B4167E62F28910462
            718E116F1067FB2FE3D4E75FE07F5703B8DAA22258F03862D5C5487A6E457245
            F82F31C57C926559A9246C9B30F3D74E8CC6016F7012E3BE1046BD0178FD6144
            E6A1714D47740974269ABA802480589C61643C80DE0B8338D5DD8F33672FA2E7
            C220BAAE85317CC08D50C1E39890F310AB2E063C96F435A6220D127309E3D9C6
            E052A0D71F86D71F5E044DAF68748EA52A06201AD330E20DE2DC85419CEAEAC3
            999E8BE8E9FB2A9545C0C8D69F6342CEBB895CD2EE303197105B2BF05668AAA2
            B13847748E616C2284DE0B8338D9D597AAD80D5816A0BFD48009390F5E397729
            72F68E808BA163BE107CC108FABE1CC2C9335960D9805603FCD68CC859622E93
            EF4E815E7F18BEE02446BC0174F75EC267E706B2E39601DE40A6DA6D44D2639E
            24AE584EAF7692AC041CF38570B6FFF21D011790B988561BAF1257A48F96BDCD
            7C07C01B63D267C9FF94B82ABC92F546FD5D016F42F3FF46BA5BFE65D63158B6
            1133EF1DC22807BC81C8DD03F65F46D7E82486DB3C8814FE2C2B306C33941157
            25622E219C0D38FD4E07AE01F02600AF2F0CAF2F74FBC0F303E8397F09DDD7C2
            38350B0CB7D62252F87836200B9619BE4F7A7D2971B7FCA74CCB2DEE2802779A
            103ED286912F2E621C8057470AB504BA2C701ED6351CC4A7611DBD9F9DC7D5D7
            5AE0B7E423206DBE05E7B318102C357C38596E204AB88D94508B7EC49CC65B97
            FAAA0CDD518C84F01B84A54D187B633F262E7D09EF8D8A2E8266049E1F40CFF9
            01740D87F06998E35CD7595CF9732702720EA6721E4240D8049FAD30C3043120
            6C313C3D55662042E31EC2BEBDA4D7DA8E675BF2EB751624AA772292F310BCDB
            7E0DDFD14E4C5CFE2A05E580D71F812F105900F65E424FDF00BA8783381D88A3
            B7FB1CAE1C3984A0B01153390F2268DC005FD9968CADF54A06842A0DFF8ABB0C
            A4D51888B0EF65428B83D060FF81E6D8A965FB45A7BB25243C5684E5CD18DFF0
            63F89F5F0FDFD18398B832042F005F02189B08E2ECF9019C1E0AE074600EBD3D
            FD183ADC89A0E9694CE53E8CA0F149F8B3C0FC56037C5603BC620EA2BB373FCA
            1DCF10DBFB0C111A2D844633A1D946098FAD54739464D9AD9A47D6CA08576EC3
            F88E75086C7E10FEA20DF01D6E85FFEBAB18057026A2E3F3CFFA31F4462B02C2
            264CE6FD7445582AF9F05A0C08563DDFF4CD6E234DD98B68AAA28808ED75A974
            D413DA6B49774BEF6B8EA2AC7B29BA5B42C22D236C7F16E3521EFCC62711D8F8
            1304C5CDF01E3F822BC7FE02BF390F53790F2368DC007FE916F8AD052BE00CF0
            CACF2064C9F944575F20DD5343DCBD97B87B2F115A2B17D2B18BD05C4E5A8DF1
            E3E5367C16905B312EE6C05F569882E63D8248C163ABAC587AC6CCF903317BFE
            3DA8CA21542E84D0DAB428FB086DFB29D9DC404C913E61CEE2E591B58B906BC0
            A43D77CD39F059F2BE9CAB73FE3079A085B0CF43685A08A1B573513A08EDAF13
            DA3A88BB65E28AF144B6C7E0CD8973DBC87CF82CF908580DFF0C966DF95E627F
            33E18F6F123A0FA525FB06A65B24BDCE4ABCD6B687398D2CE38A67692585D521
            7DE65CF8CCB908946F6B9CACD849A1D202628D1EC2C143B7B1C3EAB193AE0A8F
            72B7E5839BBBA32B8DC96C304B3E7C963C046D5BFF3165DFB12E5CB98322953B
            286835DC2ED04A7A5D39E9AA94DA4457C5A7982ABDC514D1BFB8F59AD3948E94
            72E0B7E4CF83F26F00A70396FCE3A18A67B77CF352094D571829647F8E2215DB
            EF0670C9DF10AA781F7709C55C11DF662EE163A68803CC290475B7349D70CBD3
            61FBD6B0CF62180C96169C0CD8B6BC1FB41596866D85F7874B0B2852F51C4DED
            31D2757BD1AA80FF1F0053BF1E4A5A34F99B0000000049454E44AE426082}
          Transparent = True
          TabOrder = 6
          OnClick = AdvGlowButton1Click
          Appearance.BorderColor = 14727579
          Appearance.BorderColorHot = 10079963
          Appearance.BorderColorDown = 4548219
          Appearance.BorderColorChecked = clBlack
          Appearance.Color = 15653832
          Appearance.ColorTo = 16178633
          Appearance.ColorChecked = 7915518
          Appearance.ColorCheckedTo = 11918331
          Appearance.ColorDisabled = 15921906
          Appearance.ColorDisabledTo = 15921906
          Appearance.ColorDown = 7778289
          Appearance.ColorDownTo = 4296947
          Appearance.ColorHot = 15465983
          Appearance.ColorHotTo = 11332863
          Appearance.ColorMirror = 15586496
          Appearance.ColorMirrorTo = 16245200
          Appearance.ColorMirrorHot = 5888767
          Appearance.ColorMirrorHotTo = 10807807
          Appearance.ColorMirrorDown = 946929
          Appearance.ColorMirrorDownTo = 5021693
          Appearance.ColorMirrorChecked = 10480637
          Appearance.ColorMirrorCheckedTo = 5682430
          Appearance.ColorMirrorDisabled = 11974326
          Appearance.ColorMirrorDisabledTo = 15921906
          Appearance.GradientHot = ggVertical
          Appearance.GradientMirrorHot = ggVertical
          Appearance.GradientDown = ggVertical
          Appearance.GradientMirrorDown = ggVertical
          Appearance.GradientChecked = ggVertical
        end
        object AdvGlowButton2: TAdvGlowButton
          Left = 563
          Top = 37
          Width = 80
          Height = 44
          Caption = 'Voltar'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ImageIndex = 49
          FocusType = ftHot
          NotesFont.Charset = DEFAULT_CHARSET
          NotesFont.Color = clWindowText
          NotesFont.Height = -11
          NotesFont.Name = 'Tahoma'
          NotesFont.Style = []
          ParentFont = False
          Picture.Data = {
            89504E470D0A1A0A0000000D49484452000000280000002808060000008CFEB8
            6D0000001974455874536F6674776172650041646F626520496D616765526561
            647971C9653C0000036669545874584D4C3A636F6D2E61646F62652E786D7000
            000000003C3F787061636B657420626567696E3D22EFBBBF222069643D225735
            4D304D7043656869487A7265537A4E54637A6B633964223F3E203C783A786D70
            6D65746120786D6C6E733A783D2261646F62653A6E733A6D6574612F2220783A
            786D70746B3D2241646F626520584D5020436F726520352E332D633031312036
            362E3134353636312C20323031322F30322F30362D31343A35363A3237202020
            2020202020223E203C7264663A52444620786D6C6E733A7264663D2268747470
            3A2F2F7777772E77332E6F72672F313939392F30322F32322D7264662D73796E
            7461782D6E7323223E203C7264663A4465736372697074696F6E207264663A61
            626F75743D222220786D6C6E733A786D704D4D3D22687474703A2F2F6E732E61
            646F62652E636F6D2F7861702F312E302F6D6D2F2220786D6C6E733A73745265
            663D22687474703A2F2F6E732E61646F62652E636F6D2F7861702F312E302F73
            547970652F5265736F75726365526566232220786D6C6E733A786D703D226874
            74703A2F2F6E732E61646F62652E636F6D2F7861702F312E302F2220786D704D
            4D3A4F726967696E616C446F63756D656E7449443D22786D702E6469643A3444
            3538324345333046463345343131383932454130343642353242383133372220
            786D704D4D3A446F63756D656E7449443D22786D702E6469643A344630443444
            30454633313031314534424642424641374346433745394646362220786D704D
            4D3A496E7374616E636549443D22786D702E6969643A34463044344430444633
            313031314534424642424641374346433745394646362220786D703A43726561
            746F72546F6F6C3D2241646F62652050686F746F73686F702043533620285769
            6E646F777329223E203C786D704D4D3A4465726976656446726F6D2073745265
            663A696E7374616E636549443D22786D702E6969643A34443538324345333046
            46334534313138393245413034364235324238313337222073745265663A646F
            63756D656E7449443D22786D702E6469643A3444353832434533304646334534
            313138393245413034364235324238313337222F3E203C2F7264663A44657363
            72697074696F6E3E203C2F7264663A5244463E203C2F783A786D706D6574613E
            203C3F787061636B657420656E643D2272223F3E257E78A1000004A549444154
            78DAC4986D685B5518C7FFC9BD3749D32EB5ADB176E91ABA545132379D38E82A
            DA69073ADC14416513DF612A3886FAC517141461C2AC0E54C4B70F633050C7F0
            8511266CDAB139FD601D165B95D1B5139BCE6DA52F499B26B989FF939CD46EA6
            BDF7A677CD03BF7E48CF7DCEFF9CE739CF7971DCB2A70F25582559465693EBC8
            D5A48ED4CAFF8F90F3E44FD2434E90D32466B523D562FB20E920F79175C465F2
            BB34F99E7C4EBE2583760BBC8C3C4E9E262D25CCB82A0726E8271F904FC8A8D1
            874E13CEEF2447486789E22EB6E564A7F479D74205BE42F6C93CB3DB84CF2FC8
            ABA50854C847E475E2C5A5330F794D865BB59283E28347B178F604D1C8236666
            F08D451657B087C90E2381F79297513E7B4196B0A2021BE4EA2AB7BD4502C504
            6E9725A0DCD624B55C2030B490BCD314071C4EDBF331345BE003A4DEF2F6E074
            A04275E0F0440A5DC4A53AED125A2F35E504D694327B42DC949EC5C1339378EC
            4A2F3A57D4617C5AC7743A6B67E9A975CA8A7E95A5EACA909EA598E3E726F154
            A806EFDE11C4C66B6AD1CBDFE2142D422E06301716B6C455A250B79AFD4284CF
            C3309E184BE24C3C85CE350D78766D031CECF3AFD109C4C6A7D0E3D1B034A520
            398F9F168F0A2FFDA43386B3DDAACA339DA990BA996F9173091E9E32F8ACA309
            F7AFA8FBAF81E84BE11F45E4A513EE39FA169AC6F40C2A3553C97AA36AE684E2
            A038314B91681C359CA1839B96E3A6C6AA0BDAAC59B604BD0FAD84C6764EC71C
            6174E4057EDA3D8CF7FAC7B1DAAB19751D52CDAEDE43E713B8FD0A2F766F6846
            A0FAFFE7D42AB7826BDD8AA95409FB2B11EB1B85EECD9F4AE631BF6AE654DC35
            91C4B6503576AE0FE6C2BC509B4AEBE64EA22CB186CDF4DC813D83E66AB72DE2
            0A7968D2B2860245086EF6B9F0DCAF67F1E691BF6D11285630B2A60B07FE316A
            E5A6C3EB2B34BCF86314CF1C3885C964664102C7137A6EC198C8D81155DEB0C2
            F3B54AB0F8D67301B42FADC2FB7D231888A5B06B7D135A6A3D336DBA87E2D871
            3C0A9FA6C0AB149F2051AAF46C16BF8C4CA3D567EA423828048A8BF106A330C7
            988762DF6D0F54E1C0701C27BFECC787EB02B8B5B93AD7663896C4BE936310EA
            148AD48B665436573057321A7E0E38A51BC6B94F083C4A9E37938B53DC67DD4C
            8ADBFC5E1CE66ED21E19C0DEB60036AFBA1C4D5C4458A221EC51E07729C8185C
            844C8813764C08EC16519417184391E94C7EDBE8A871E1776E775B0E9DCE15F1
            469F8666CE8AE6305EE926335868FA49081C22BBC99356123DC9D90C576A6864
            38371F1B42B84245D0AB328A596432B62CF63D429B533E4BEC2DC5438C227D2C
            A56D149A10C54DB7EDA805A9295DA883220FF75BF5A0C815AE7175063DF9BCCB
            DA337B5FC99787990D47B87DA7E49D6126376DB35D85549DBD931C9537AA72DB
            DBF225ACE8BD58DC89BF2BA33821ECA5F92EEEE220FC20F9AD0CE27AC916326D
            F4F411952F0C3D8B28AE47F61935FBBA259E6E37CECE854B6862B56E227F587D
            1F1C940F8C1F178E85369B2E7D8B73C080D5F7C182C5C956399B762E9E2EE973
            ABEC03A50A2C58448EF46E59444BB56FC83DD257C4D46DD28273B1797F8DFC2B
            BDB8ECB791B5E40679C9BE78B062DF3B457E263F8893895C0C092B23FA578001
            006FBA3CE8FDF36C410000000049454E44AE426082}
          Transparent = True
          TabOrder = 7
          OnClick = AdvGlowButton2Click
          Appearance.BorderColor = 14727579
          Appearance.BorderColorHot = 10079963
          Appearance.BorderColorDown = 4548219
          Appearance.BorderColorChecked = clBlack
          Appearance.Color = 15653832
          Appearance.ColorTo = 16178633
          Appearance.ColorChecked = 7915518
          Appearance.ColorCheckedTo = 11918331
          Appearance.ColorDisabled = 15921906
          Appearance.ColorDisabledTo = 15921906
          Appearance.ColorDown = 7778289
          Appearance.ColorDownTo = 4296947
          Appearance.ColorHot = 15465983
          Appearance.ColorHotTo = 11332863
          Appearance.ColorMirror = 15586496
          Appearance.ColorMirrorTo = 16245200
          Appearance.ColorMirrorHot = 5888767
          Appearance.ColorMirrorHotTo = 10807807
          Appearance.ColorMirrorDown = 946929
          Appearance.ColorMirrorDownTo = 5021693
          Appearance.ColorMirrorChecked = 10480637
          Appearance.ColorMirrorCheckedTo = 5682430
          Appearance.ColorMirrorDisabled = 11974326
          Appearance.ColorMirrorDisabledTo = 15921906
          Appearance.GradientHot = ggVertical
          Appearance.GradientMirrorHot = ggVertical
          Appearance.GradientDown = ggVertical
          Appearance.GradientMirrorDown = ggVertical
          Appearance.GradientChecked = ggVertical
        end
        object eorigem: TEdit
          Left = 8
          Top = 64
          Width = 353
          Height = 19
          Color = 15916445
          Ctl3D = False
          ParentCtl3D = False
          TabOrder = 8
        end
        object BitBtn6: TBitBtn
          Left = 363
          Top = 63
          Width = 25
          Height = 23
          Glyph.Data = {
            36030000424D3603000000000000360000002800000010000000100000000100
            18000000000000030000C40E0000C40E00000000000000000000FFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFCFDFEE7EEF4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAFBFD6494BA2166
            9C80A8C5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFAFCFD6E9BC1548CBB88B4DC175E96FFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFCFD7AA3C96396C49CC0E36598
            C63070A4FFFFFFFFFFFFFFFFFFFFFFFFFFFEFEE8CEB9DAB292D2A57FCFA07BD1
            A684ADA09874A1CBAACAE775A3CD3F7AAEDEE8F1FFFFFFFFFFFFFFFFFFFFFEFE
            E8C9AFE7C8ADF4E0CCF6E4D2F6E4D0F2DCC7DEB99BC6A79085ADD44F86BAE1EA
            F3FFFFFFFFFFFFFFFFFFFFFFFFF1DBC7ECCFB6F7E7D8F4DDC7F2D7BCF2D5BAF3
            DAC1F6E3D1DEBA9C9F9694E3ECF5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEDCDB1
            F6E6D6F5E0CBF3DAC1F3D9BFF2D7BCF2D6BAF3DAC1F2DDC8D1A787FFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFEFCDAEF8EBDEF4DEC7F4DCC5F3DBC2F3D9C0F2
            D8BDF2D6BCF7E5D2D2A57FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3D2B4
            F8ECE0F5E0CBF4DEC8F4DDC6F3DBC3F3DAC1F3D9BFF7E6D5D6AA86FFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFF7DBC0F8EADDF6E6D5F5E0CBF4DFC9F4DDC7F4
            DCC4F5E0CAF4E1CFDEB898FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBE9D7
            F7E1CBF9EDE2F6E6D5F5E1CDF5E0CAF5E2CFF8E9DCEBCEB4EBD3BEFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFAE3CDF8E1CCF9EBDDF8EDE1F8ECE1F7
            E8D9EFD4BCECCFB6FFFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFBEAD9F9DCC2F5D5B8F3D2B4F2D3B7F4E0CDFFFFFEFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
          TabOrder = 9
          OnClick = BitBtn6Click
        end
        object edestino: TEdit
          Left = 8
          Top = 104
          Width = 353
          Height = 19
          Color = 15916445
          Ctl3D = False
          ParentCtl3D = False
          TabOrder = 10
        end
        object BitBtn7: TBitBtn
          Left = 363
          Top = 103
          Width = 25
          Height = 23
          Glyph.Data = {
            36030000424D3603000000000000360000002800000010000000100000000100
            18000000000000030000C40E0000C40E00000000000000000000FFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFCFDFEE7EEF4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAFBFD6494BA2166
            9C80A8C5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFAFCFD6E9BC1548CBB88B4DC175E96FFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFCFD7AA3C96396C49CC0E36598
            C63070A4FFFFFFFFFFFFFFFFFFFFFFFFFFFEFEE8CEB9DAB292D2A57FCFA07BD1
            A684ADA09874A1CBAACAE775A3CD3F7AAEDEE8F1FFFFFFFFFFFFFFFFFFFFFEFE
            E8C9AFE7C8ADF4E0CCF6E4D2F6E4D0F2DCC7DEB99BC6A79085ADD44F86BAE1EA
            F3FFFFFFFFFFFFFFFFFFFFFFFFF1DBC7ECCFB6F7E7D8F4DDC7F2D7BCF2D5BAF3
            DAC1F6E3D1DEBA9C9F9694E3ECF5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEDCDB1
            F6E6D6F5E0CBF3DAC1F3D9BFF2D7BCF2D6BAF3DAC1F2DDC8D1A787FFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFEFCDAEF8EBDEF4DEC7F4DCC5F3DBC2F3D9C0F2
            D8BDF2D6BCF7E5D2D2A57FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3D2B4
            F8ECE0F5E0CBF4DEC8F4DDC6F3DBC3F3DAC1F3D9BFF7E6D5D6AA86FFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFF7DBC0F8EADDF6E6D5F5E0CBF4DFC9F4DDC7F4
            DCC4F5E0CAF4E1CFDEB898FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBE9D7
            F7E1CBF9EDE2F6E6D5F5E1CDF5E0CAF5E2CFF8E9DCEBCEB4EBD3BEFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFAE3CDF8E1CCF9EBDDF8EDE1F8ECE1F7
            E8D9EFD4BCECCFB6FFFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFBEAD9F9DCC2F5D5B8F3D2B4F2D3B7F4E0CDFFFFFEFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
          TabOrder = 11
          OnClick = BitBtn7Click
        end
      end
      object pbackup: TPanel
        Left = 0
        Top = 320
        Width = 650
        Height = 42
        Align = alBottom
        BevelOuter = bvNone
        Color = clWhite
        ParentBackground = False
        TabOrder = 3
        object MEMORECEBER: TMemo
          Left = 592
          Top = 4
          Width = 53
          Height = 22
          TabStop = False
          Color = 15916445
          Ctl3D = False
          ParentCtl3D = False
          TabOrder = 0
          Visible = False
        end
      end
    end
    object PageSheet2: TPageSheet
      Left = 0
      Top = 0
      Width = 650
      Height = 362
      Caption = 'Configura'#231#245'es'
      DisplayMode = tdGlyph
      ImageIndex = 0
      Margin = 0
      PageIndex = 1
      TabColor = clWindow
      TabWidth = 0
      TransparentColor = clNone
      object DBGrid1: TDBGrid
        Left = 0
        Top = 0
        Width = 332
        Height = 313
        TabStop = False
        Color = 15916445
        Ctl3D = False
        DataSource = ds_agendamento
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 0
        TitleFont.Charset = ANSI_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        OnCellClick = DBGrid1CellClick
        Columns = <
          item
            Expanded = False
            FieldName = 'DESCRICAO'
            Title.Caption = 'Descri'#231#227'o'
            Width = 64
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'HORARIO'
            Title.Caption = 'Hor'#225'rio'
            Width = 70
            Visible = True
          end>
      end
      object Panel1: TPanel
        Left = 332
        Top = 0
        Width = 318
        Height = 313
        BevelOuter = bvNone
        Color = clWhite
        ParentBackground = False
        TabOrder = 1
        object pConfig: TPanel
          Left = 9
          Top = 28
          Width = 300
          Height = 269
          BevelOuter = bvNone
          Color = clWhite
          ParentBackground = False
          TabOrder = 0
          object Label3: TLabel
            Left = 13
            Top = 181
            Width = 142
            Height = 13
            Caption = 'Caminho da pasta de Backup:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label2: TLabel
            Left = 13
            Top = 137
            Width = 140
            Height = 13
            Caption = 'Caminho do Banco de Dados:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label1: TLabel
            Left = 13
            Top = 94
            Width = 72
            Height = 13
            Caption = 'IP do Servidor:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label7: TLabel
            Left = 164
            Top = 50
            Width = 35
            Height = 13
            Caption = 'Hor'#225'rio'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label6: TLabel
            Left = 13
            Top = 51
            Width = 67
            Height = 13
            Caption = 'Agendamento'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label5: TLabel
            Left = 13
            Top = 6
            Width = 46
            Height = 13
            Caption = 'Descri'#231#227'o'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label9: TLabel
            Left = 13
            Top = 223
            Width = 46
            Height = 13
            Caption = 'Login FTP'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label10: TLabel
            Left = 165
            Top = 223
            Width = 51
            Height = 13
            Caption = 'Senha FTP'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object DBEdit1: TDBEdit
            Left = 13
            Top = 109
            Width = 145
            Height = 19
            Color = 15916445
            Ctl3D = False
            DataField = 'IP'
            DataSource = ds_agendamento
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentCtl3D = False
            ParentFont = False
            TabOrder = 3
            OnEnter = DBEdit5Enter
            OnExit = DBEdit1Exit
            OnKeyPress = DBEdit5KeyPress
          end
          object DBEdit6: TDBEdit
            Left = 165
            Top = 65
            Width = 121
            Height = 19
            Color = 15916445
            Ctl3D = False
            DataField = 'HORARIO'
            DataSource = ds_agendamento
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentCtl3D = False
            ParentFont = False
            TabOrder = 2
            OnEnter = DBEdit5Enter
            OnExit = DBEdit5Exit
            OnKeyPress = DBEdit5KeyPress
          end
          object cbtipo: TDBComboBox
            Left = 13
            Top = 66
            Width = 145
            Height = 21
            Color = 15916445
            Ctl3D = False
            DataField = 'DIA'
            DataSource = ds_agendamento
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            Items.Strings = (
              'Diariamente'
              'Segunda'
              'Ter'#231'a'
              'Quarta'
              'Quinta'
              'Sexta'
              'S'#225'bado'
              'Domingo')
            ParentCtl3D = False
            ParentFont = False
            TabOrder = 1
            OnEnter = DBEdit5Enter
            OnExit = DBEdit5Exit
            OnKeyPress = DBEdit5KeyPress
          end
          object DBEdit5: TDBEdit
            Left = 13
            Top = 22
            Width = 273
            Height = 19
            Color = 15916445
            Ctl3D = False
            DataField = 'DESCRICAO'
            DataSource = ds_agendamento
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentCtl3D = False
            ParentFont = False
            TabOrder = 0
            OnEnter = DBEdit5Enter
            OnExit = DBEdit5Exit
            OnKeyPress = DBEdit5KeyPress
          end
          object DBEdit3: TJvDirectoryEdit
            Left = 13
            Top = 198
            Width = 273
            Height = 19
            DialogKind = dkWin32
            Flat = True
            ParentFlat = False
            CharCase = ecUpperCase
            Color = 15916445
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 5
            Text = ''
            OnEnter = DBEdit5Enter
            OnExit = DBEdit5Exit
          end
          object DBEdit2: TRzDBButtonEdit
            Left = 13
            Top = 153
            Width = 273
            Height = 19
            DataSource = ds_agendamento
            DataField = 'BASEDADOS'
            Color = 15916445
            Ctl3D = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            FocusColor = 11075583
            ParentCtl3D = False
            ParentFont = False
            TabOrder = 4
            OnEnter = DBEdit5Enter
            OnExit = DBEdit5Exit
            ButtonGlyph.Data = {
              36030000424D3603000000000000360000002800000010000000100000000100
              18000000000000030000C40E0000C40E00000000000000000000FFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFCFDFEE7EEF4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAFBFD6494BA2166
              9C80A8C5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFAFCFD6E9BC1548CBB88B4DC175E96FFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFCFD7AA3C96396C49CC0E36598
              C63070A4FFFFFFFFFFFFFFFFFFFFFFFFFFFEFEE8CEB9DAB292D2A57FCFA07BD1
              A684ADA09874A1CBAACAE775A3CD3F7AAEDEE8F1FFFFFFFFFFFFFFFFFFFFFEFE
              E8C9AFE7C8ADF4E0CCF6E4D2F6E4D0F2DCC7DEB99BC6A79085ADD44F86BAE1EA
              F3FFFFFFFFFFFFFFFFFFFFFFFFF1DBC7ECCFB6F7E7D8F4DDC7F2D7BCF2D5BAF3
              DAC1F6E3D1DEBA9C9F9694E3ECF5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEDCDB1
              F6E6D6F5E0CBF3DAC1F3D9BFF2D7BCF2D6BAF3DAC1F2DDC8D1A787FFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFEFCDAEF8EBDEF4DEC7F4DCC5F3DBC2F3D9C0F2
              D8BDF2D6BCF7E5D2D2A57FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3D2B4
              F8ECE0F5E0CBF4DEC8F4DDC6F3DBC3F3DAC1F3D9BFF7E6D5D6AA86FFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFF7DBC0F8EADDF6E6D5F5E0CBF4DFC9F4DDC7F4
              DCC4F5E0CAF4E1CFDEB898FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBE9D7
              F7E1CBF9EDE2F6E6D5F5E1CDF5E0CAF5E2CFF8E9DCEBCEB4EBD3BEFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFAE3CDF8E1CCF9EBDDF8EDE1F8ECE1F7
              E8D9EFD4BCECCFB6FFFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFBEAD9F9DCC2F5D5B8F3D2B4F2D3B7F4E0CDFFFFFEFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
            ButtonNumGlyphs = 1
            ButtonKind = bkCustom
            ButtonShortCut = 117
            AltBtnWidth = 15
            ButtonWidth = 24
            OnButtonClick = DBEdit2ButtonClick
          end
          object DBEdit4: TDBEdit
            Left = 14
            Top = 242
            Width = 145
            Height = 19
            Color = 15916445
            Ctl3D = False
            DataField = 'LOGINFTP'
            DataSource = ds_agendamento
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentCtl3D = False
            ParentFont = False
            TabOrder = 6
            OnEnter = DBEdit5Enter
            OnExit = DBEdit1Exit
            OnKeyPress = DBEdit5KeyPress
          end
          object DBEdit7: TDBEdit
            Left = 165
            Top = 242
            Width = 124
            Height = 19
            Color = 15916445
            Ctl3D = False
            DataField = 'SENHAFTP'
            DataSource = ds_agendamento
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentCtl3D = False
            ParentFont = False
            PasswordChar = '*'
            TabOrder = 7
            OnEnter = DBEdit5Enter
            OnExit = DBEdit1Exit
            OnKeyPress = DBEdit5KeyPress
          end
        end
      end
      object FlatPanel1: TPanel
        Left = 0
        Top = 311
        Width = 650
        Height = 51
        Align = alBottom
        BevelOuter = bvNone
        Color = 12223546
        ParentBackground = False
        TabOrder = 2
        object BitBtn1: TAdvGlowButton
          Left = 4
          Top = 3
          Width = 100
          Height = 44
          Caption = 'Incluir'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ImageIndex = 49
          FocusType = ftHot
          NotesFont.Charset = DEFAULT_CHARSET
          NotesFont.Color = clWindowText
          NotesFont.Height = -11
          NotesFont.Name = 'Tahoma'
          NotesFont.Style = []
          ParentFont = False
          Picture.Data = {
            89504E470D0A1A0A0000000D49484452000000280000002808060000008CFEB8
            6D000000097048597300000EC300000EC301C76FA864000000206348524D0000
            7A25000080830000F9FF000080E8000052080001155800003A970000176FD75A
            1F90000008114944415478DAC4996B6C93E715C78F5475D22A4D9AC6A47EDB56
            50271589065448207142B817125FE25C80006D40A0B5ABD0A441C7C23A41416C
            48D3BE4C95360DA9ADB8A4B939972A0112B29CC749C6AA96EE46E25B204460BF
            EF6BBF6F9CC431F12597FF3ED8E4E2C4C44E53EDC34FB22C3D8F7E7ACE73CE79
            7C4CE71834970F19749E41A5AC52296B54CE4364642F1DE0009958A352F65311
            FBC8C8CA6B46A1BC6712CAC745C2FB37A3501E1B851288214B66E1ED3209EF75
            A3504E9B58596F622F15B1970CAC52190F53190F5309AB54CA2AE959A1333C41
            97125CCE318852152CE7312AE2A15545C25769125EBB5128788661CEE767E885
            3CEF7B93F00E988472C9C0EA4FF6F308EDE7916F2E58C61A1D663F19D8F76289
            D02E1B8577C420E40532E96010CA4491F0FDA584875795B2B67CC13256A99487
            A85C0CE90B84FC402F2418BFA1DCACA40CBD90FD25C25751CADAF3053F8C4B3D
            13BB18A79C87A8502817629BAE8C58A2646C5FEF474656E82C4FD1E5392ECFA0
            F371B1F37304CF31A854F8AEEF159E45EFD74A52286418847CE73447E922837E
            9B0055306638CEA0631CA562A1DC48E7AEE9594161027A4E57D6633DCCE37494
            41871974240E9D66D069069D61D0FB0C3209FF85DDE249CA1B1759156CEF90A1
            6B93A06B8F91D326615B870C73972FE57DF60A370C42ABFA25832AE32EEFC74E
            30406F73804E70908E89917C8390520EAB8115E4DF91F169FF28FEED1FC75D39
            88BB7210FF1A0AA1A67F183BDBDD3074A9A94742785021FC1527788C2A384015
            1C203AC2213ACA212AE3A72FEC161ED5206498D2086DD66D09FF51C70100989E
            8C01E0911AC0EBD536ECE99050DC93AAA48CDDC28D121E5B75944374844344C7
            394A3FE7093A24462EEF13EEB4EE8D9E1564B749604F10C02482E31104C72300
            A6F0B51CC0BAAA5E64D6DA61603965C902E146B9F0579FE4497A9727898E7184
            CA39F4DD02214FA45B4E96125C5F63C7C61A1B741647CA9226A1A0504830F0F0
            5A130788DE62950E08F5AC7E19B52E15C1AC7A07B2EBEC69491A8404B3F0FD79
            3F0F13195826BD90DDCBA961A90AE636381324B554F61F35B3EF4532B1B67AB9
            45361DC1859229DC49560D6414DE5FA45284F58B50D019CBE2CE4504EFC901AC
            ABB663639D03D91627B22D4EE4589CC8AAB5614BBD03059D324CDDEA12F7D17B
            858A84F7BAE1394538FF8E8C2DB73DC86E9316B0F9B684D5CD6EDC7E32962038
            8D2F3CA378F993FBF8F1B55EBC7AA36F869FDEE8C39AABF7B1E65A2F36DF74C3
            DCA32E5AD60C42419150049985D7BA5882E845AC437CDA3F827FF8C6C19EE002
            3ADD41DC7E3C8627A3218423D119C170240A653484D6877EDC1AF0A3EDD1F002
            3A07FD687069305B15ECB3FA92087A5D6414CAA20952C80AB6B449700EC58B30
            269332158922F034322318781A46341C8DAF9B4E02301D8E6047930B5BDBDCC9
            124723A350C69309EADA25DC9583C0F46CF8560A4C4E421A1947BEC5818C6A5B
            B2C409FEDF057734B9B0AEAA37597607C920143979883DB0FB43F1504D25611A
            939128024FC3F3421C0947E78473B175C054248A9D4D2E64D4D89395203F9508
            DFDF174D1256B0AD43464DBF1F7D6A00FF94C7F0B51C58C0179E5128A32184C2
            B349120A47A18D85F19514C03D29B0E83A9BF614DD8F47B0BDC985376A171673
            738F0F45C2FB90CCC25B9DEC716AEEF26167BB07199FD9F07A551F36D4DAB1BE
            669675D576BCFCC97DB43EF403989E5707BF94025873BD0F6B3FB3CD5B33970D
            B576E4363891172FE47325F52CA3B447EB21A350CE3CB72F76A9D8D32121B336
            D6F8B3EA1D336CAC73E047577B716B607881E03D2980D7AA6CD810EF268964D6
            39E67599DC44C906270A3BA4AB64626DED522DA7B847858165E82CB1C63FB391
            C589576FF4A1EDD142C1C55A5DAAE4353A915D6F477EA3EB2099D94746A168E9
            4AE6357E7B82F1B047F39BFB5FA2FDEC27B350FF601012D295CC6EF89604EB1D
            D035BAAA725B1F10E9D94F05ECFF61618A4FFDE21E6D4632ABD6B6E282790D2E
            6CB1D89073CB9199DBEE223ACE117A872374400C5D2948F1C9FFEC24B7D43BB0
            E6EA7F575430ABAE0FBB9B07DB2BAC1A1DB66A44277882DEE5092AE7D0F7DE14
            5224D5DFC3C53D2A0A3A65ACBED60BEBA03FDEAE27630070694164D4D8919986
            A0CEE2C4A6FAFB286D1B7CE59D4E858EDE9189CA78984A79980EF1281D14DA01
            7D1AD30453B78ACD37DD687069180D45208D86208D8C231089A2EBC90836D4D8
            B1390DC1CDB536EC6975571677FB482F24D20B89E8144FD0299EA05FF1049DE2
            29328BA12BFB8427E557B5B95B85D9AA60579313F916077634BBB0ABD985ED4D
            AEB4429B596F435E93834F8A009DB28ED3498E416F316638C6A0431CA602F1A4
            23D5509B44EC3DB7B5CD8D8C6A1BD655F521A3C68E376AEDF33AC4526CAAB3DB
            4DED032FFCAC7B80DEE6075411872AE3A3864A069D65D0073C4D67384A25C2D7
            99CE49262BE64B915D6F478EC5D1F75E7BF0FBE744947E23A254C9911966C66D
            17197481419718F4BBF8F8AD40C8D7D3996EA523A96B7042677140D7E8B895D7
            ECFACE079D93F4C7AE98C35CA7E70E304B78880E8AA1E305428EEAD3C8EEC48E
            932897637120C7E2C0B6A687BFDEDD3A40799FBBE8F49D30FDDEBAFC11F02B25
            42FD7876F0B8BC93D4599CD0353890DFD8DFB8A7E5C1FA3DAD83B4ABE511E536
            3B972798384437B1B6A948F8FE64125E65A921BAB94785BE538E85B2DE81BC06
            6740D7E0BC92DFE2DAB6F7D62015B60ED0AE9601DAD932B03282097F43BC6464
            456F14CA4726A174C4A7FEBED9BF2114CD241457498F662DECF0FC5567711ED8
            DAE4FC415E938BF26FF6D39B371FD1BE96872909FE6F008F83EB725A3ED50800
            00000049454E44AE426082}
          Transparent = True
          TabOrder = 0
          OnClick = BitBtn1Click
          Appearance.BorderColor = 14727579
          Appearance.BorderColorHot = 10079963
          Appearance.BorderColorDown = 4548219
          Appearance.BorderColorChecked = clBlack
          Appearance.Color = 15653832
          Appearance.ColorTo = 16178633
          Appearance.ColorChecked = 7915518
          Appearance.ColorCheckedTo = 11918331
          Appearance.ColorDisabled = 15921906
          Appearance.ColorDisabledTo = 15921906
          Appearance.ColorDown = 7778289
          Appearance.ColorDownTo = 4296947
          Appearance.ColorHot = 15465983
          Appearance.ColorHotTo = 11332863
          Appearance.ColorMirror = 15586496
          Appearance.ColorMirrorTo = 16245200
          Appearance.ColorMirrorHot = 5888767
          Appearance.ColorMirrorHotTo = 10807807
          Appearance.ColorMirrorDown = 946929
          Appearance.ColorMirrorDownTo = 5021693
          Appearance.ColorMirrorChecked = 10480637
          Appearance.ColorMirrorCheckedTo = 5682430
          Appearance.ColorMirrorDisabled = 11974326
          Appearance.ColorMirrorDisabledTo = 15921906
          Appearance.GradientHot = ggVertical
          Appearance.GradientMirrorHot = ggVertical
          Appearance.GradientDown = ggVertical
          Appearance.GradientMirrorDown = ggVertical
          Appearance.GradientChecked = ggVertical
        end
        object BitBtn4: TAdvGlowButton
          Left = 108
          Top = 3
          Width = 100
          Height = 44
          Caption = 'Alterar'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ImageIndex = 49
          FocusType = ftHot
          NotesFont.Charset = DEFAULT_CHARSET
          NotesFont.Color = clWindowText
          NotesFont.Height = -11
          NotesFont.Name = 'Tahoma'
          NotesFont.Style = []
          ParentFont = False
          Picture.Data = {
            89504E470D0A1A0A0000000D49484452000000280000002808060000008CFEB8
            6D000000097048597300000EC300000EC301C76FA864000000206348524D0000
            7A25000080830000F9FF000080E8000052080001155800003A970000176FD75A
            1F900000080B4944415478DACCD97D6C13E71D07F09F5475121D952A5A69FFAC
            D3289D265835A125B109797142C8DDD94E020DB4B0499B52606BA5ADDBA4B132
            A4556AB796A24E9BAA092DB11D423A12C0F6DDD971DEB0EF9CB3F3421A62DFD9
            0E792D813681F212C668422821C0777FD87971088C12A3ED8FEF1F7792ED8F7E
            CFFD9EE7B9C7648042F3938B20196EFB89D30432F679881D70934915A864A081
            8A232E2A39554F464D244EE557731AFF4B5613AAD888E067557E8455F97156E5
            C7D930FF0513155A594DA8E1547E37A7896B8D9A40A68848C5AA48E65E0F15F5
            7AC81C13C974AA8E8C61810C37A4F86F2FF0D0C302370D355249C4B5C21415F7
            729AD0CFAA3C66137622E95AE5C1869C60C373D79C269CE134E1FD6255FCAEB9
            AF9E8AFBEA5300ECF7103B5847665578D2D4E3DE6F54F96BCC6298870CA33AC1
            85F969362A5614F7D43D6BEE7191A9770940535F3D3103EE6263B7E334137282
            7944583292071376820D39AF7231A1CCDCEB79303007CA6CB2A150365AC90085
            D89848A690F06EFC0B970EBB27E138D6A80A07385520C32D3F65A395B2E77972
            A010E5DF519262B81324C3949FD88850C37539929EA3C7926E07D89053CA9B94
            C87027788F87760C2BB3F9C5676DB46D58A202D559FBB8404C220BEF6F083B82
            5B3FF5D2EB9FB72599A8683240E644364FB6D2A698E75DA6F358CA61C6308F8D
            1A8F1F0CD991DEE78069C1C8309FD851A2BA8EBC3C1E24F36490CC93012A9A0C
            10157DE68967B4810A46EAF20AC20E70E1D4E372634EBC346447D5D166FC5EF2
            E0C5E1633086797033D35098C7C690031BCEBACB8A461B665D543AECA5D23312
            BDD2D7F484A9C33EC6849D60B514E25401B99A1DABFA6B61713601BF3E819BEF
            04B1ED1311DF3F6D4F42322A0F63C7316CE96D7C76CB59894A87BD44259764DA
            7459216EC8B39FE9B2A7B672AA80DCB01DAB066B61B33701BF6AC1B57D41E08F
            ADF8EA9D20B6758A5873DA0E5358981BEA2E3B98C1BA639B2EB5D0A64B32D1AB
            917A7A55F32C3386F8E9422DF5B817BBAA50712E0A0C4F60E2BD202EEF6EC2C5
            0F03B8FB761078BB0DBF531A90363837F9331A0FF6A4035B55F79A6DD17AA22D
            BD8D648EBAF716861D29C399540772C34EAC8CCAA8383B088C7D852BD33731FA
            C518C6DE5770717723A6FFDC0EECE9C09BF65AAC39550B738F7BF6F38561274C
            51B17C4B6F2351912612A70AA34CCA2AE7408EE6C10BAA07555D1F00572630F6
            6F60F4FC059CBB3D8991F397817D9DC05B4194B90F6345EB47D07B2D60424E98
            6373484E15BE2CD2C427C918115E60538C5BD9D381EAF6B700D70A4CB5EFC4E7
            5781D1ABC0C8B98B980270F7F435BC565385E5ED1F41275B917EBC1C19BE38D2
            944032AA139C269410A709BF792CB8A63598F66663D2FD6D8CB7EDC4C8D5BBB8
            3901DC1D9BC0CF340F962B7F85CE67815EB24227DB90B60892D3041B7111B166
            A9CBD9BDB8D5B8E5CDC2B8AF00D77DF9B8E17E1E38F173E05F17F0D32E1F9EAE
            FB003AC91AC7CD4BBAB7228174C01C7381D58400B15131C8869C4B6A8838AE7D
            1637EDCDC6B86F03AEFBF231EEDB08F87440D32A94491F627973353216C1CD22
            672AD9ED80F954DD10B12A7F6EE9954BE01A17E20AE2385F067649EFC571BE8A
            FBE2663233DC8521C7156255FE466A8775212E1DBBA47D784A72252A6779206E
            3E522759AF3F127031DCE2958BE39649AE459FB9FF960C9FE53AB161FEC2D759
            7B1FA5728F824BE42A313D6207DBED4C5143CCE1764AFBF04D49FC5AC39A1C0B
            7472E530B151F1D8C374F1C33744BC72719CED117171A05EB6B513A70A7BFED7
            0DB1E8F32759B14EB6FE938C1171CDFF43432C06CCF457FE988C9A40ACCA5FB9
            1F70A32A6275A405D5ED7B1E77432CCC2DBDDFF61495F6369029EAFACBFDB65B
            2FC55AF0B7CE3F01F5DFC3B4370B1389E52BB50DB1707AB1422F5B8F64B65412
            6D0DBBA934243EC79D74C6378BF37085AA801F6A3EF485DF0094745C6BCA7D4C
            0D313F366448E558EF2FD765B758898ACE1DA7E2F33E62FADD36E664F2963F5F
            75214BF5E074E40D2062C64D85C1974D06C09791D286485A8B7DE558277FECCB
            0F8894A7F0449BCFCBB4F9BC422F7F7AFC69AED33135FFEC255BF5A05015705B
            DD0EC4F2811E33D096061C4FC38E143644F2F01E40764BF5CADC80937294A344
            A57D2EDAD2E7A2D2C13A6207C4ED05A1B9D7CE2CD583ADEA510C7495A1ABB30C
            8D5DBFC5D1136FE235793F9EF139528E4BF75520D35FBB373FE02483524B06E5
            0891695C8E6742A6E289162A8AD559D9C4DB1DA30A2889F2C8E9A8C1F38D87F0
            ADE6C378CE6BC777A45A644A96940D6B7C5A29875EAA500C8A87F2142F199426
            32284D443BCE0467F3FA483BFD64C8471B4FDA6536F1BECA6802F2A30DC8EAA8
            C5DAE672A4FB52875A50BDFE6CFFC1273604AAC8A054CE860AA794B9DC0AD086
            A900E55D97888D082DECC9F8E111A70930F7B861E8A8415A737CAF963A5C0574
            92A537C7DFF08C41F19341F19141F1CE86B2A02C482BE522406C8F48A66EA186
            09C7CF05E7237FD4FC8F14222B9AF592F51B86163FE52B9D6450DA9272FF03CC
            8848E6DE7A62FADDBBB86EC72D26E404AB0930C7968ECC902CD04916AC93ABFE
            B04E3E483AA982725ABC94A7B491415192F2E013D6FE7A6287EAC81C16561A63
            AEAA9943C7A5212DD04B95AE4CB972ED7A7F35E9E5434B00F6D5133B9838E51F
            6AA4624DCC3046C4BF7311F1E20C32EDBEC87BEE8DEB24AB2D53B6E667F93FA6
            F5721565FA0F915EAE4A1170A0818A23E2CCDF10CB8C9A506CEEA93B90DB7158
            4EF759FA7592F5720231AE93AC57F4926D482FD9827AD96AD5C9B6ED3AC9B642
            2F592953B65196BF9A32E5830F05FCCF00AAD5CA2D4DE4BAAB0000000049454E
            44AE426082}
          Transparent = True
          TabOrder = 1
          OnClick = BitBtn4Click
          Appearance.BorderColor = 14727579
          Appearance.BorderColorHot = 10079963
          Appearance.BorderColorDown = 4548219
          Appearance.BorderColorChecked = clBlack
          Appearance.Color = 15653832
          Appearance.ColorTo = 16178633
          Appearance.ColorChecked = 7915518
          Appearance.ColorCheckedTo = 11918331
          Appearance.ColorDisabled = 15921906
          Appearance.ColorDisabledTo = 15921906
          Appearance.ColorDown = 7778289
          Appearance.ColorDownTo = 4296947
          Appearance.ColorHot = 15465983
          Appearance.ColorHotTo = 11332863
          Appearance.ColorMirror = 15586496
          Appearance.ColorMirrorTo = 16245200
          Appearance.ColorMirrorHot = 5888767
          Appearance.ColorMirrorHotTo = 10807807
          Appearance.ColorMirrorDown = 946929
          Appearance.ColorMirrorDownTo = 5021693
          Appearance.ColorMirrorChecked = 10480637
          Appearance.ColorMirrorCheckedTo = 5682430
          Appearance.ColorMirrorDisabled = 11974326
          Appearance.ColorMirrorDisabledTo = 15921906
          Appearance.GradientHot = ggVertical
          Appearance.GradientMirrorHot = ggVertical
          Appearance.GradientDown = ggVertical
          Appearance.GradientMirrorDown = ggVertical
          Appearance.GradientChecked = ggVertical
        end
        object BitBtn5: TAdvGlowButton
          Left = 212
          Top = 3
          Width = 100
          Height = 44
          Caption = 'Excluir'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ImageIndex = 49
          FocusType = ftHot
          NotesFont.Charset = DEFAULT_CHARSET
          NotesFont.Color = clWindowText
          NotesFont.Height = -11
          NotesFont.Name = 'Tahoma'
          NotesFont.Style = []
          ParentFont = False
          Picture.Data = {
            89504E470D0A1A0A0000000D49484452000000280000002808060000008CFEB8
            6D000000097048597300000EC300000EC301C76FA864000000206348524D0000
            7A25000080830000F9FF000080E8000052080001155800003A970000176FD75A
            1F90000009AC4944415478DABC99FB6F5BE519C71F093189494813EC0F80FD30
            0DD05426B631DAAE491B274DDDE6E6E3737C5CE79E1CDB8993A6494ADB946449
            53CA65FB6597A24D306063058198D46DD286C6B81746D7D116145AFB388993C6
            3EBE9DF31EDBC7CED549BFFBC169523769D2A6B01F3E3F1CEB7DE58F9FC7CFF3
            3E7E4DE8EFA73C068FD2425F1F31DE49C6DE364AD67988092ECAD47552426C25
            436C279D7793C64B0F68BCD3C304E74B4C70BEABF1D284C64BC6226126BA3E62
            82F3A4C63B0FE8BCF361C6BB48E7DDC4C4164AD5B693B1B79D747B2BA5440F31
            CE49D9C33D842707E97A1FBA59C1C9866E4A889E7B74C1DDC378A757E3255C45
            B536E3DA678D97A072CDD0ACCBCF8C7706182F1D67B696FB8CBA7D9476ECFB0A
            041D6D94AC6F2326B8EF4CDA5B9FD104673227B352E8665073FBB2BAE8FA5DCA
            DE76AFEEF0DC6E04DB2959EB298B73CD232AD7B461B195D16D826A6DD6D95E77
            BD616F27C6B9D6103CDA9FCFF141C2403FE9363731CE35A8F11234EB5723964F
            2E13CCEA3AC178172D3CD14B78FAD80A1F425F7F3E034769E1482F319BF364DC
            D298F73DFA3A588CE6BFB2078F10060757F8106AFA7354F713EA9EA46C6D0FA9
            42E3AB5FA7D46AC4F9860F676B0E12EA8FE75C16BD08DD03391E3F4A38708C0C
            5BDBD158453DFEDF82B1CA7A24B996D7D03948383448E8EE27740F1019CE2E32
            9C5D94F63C4E29574761DC7A0B69159CD00409ACA00AEC2766B02D65391E3543
            373BC01C9E9B97B44A88730D484A6DF586E7E09217CD361EA259A987A66A0EDC
            112B6F54556BD3F2269B0BAAD901B558805A625BC9760EAA4940F4B99711FEF3
            DF1179E5CD1C7F790BCAFE3EC41F2901DB695F7D6FB10DEA4EFBF2075D2CC668
            790326ABBBEE9D958ED06CE321A2F9F65E9AEF1C20A3AEFD9958E575A9E59AC0
            EA3BC0A40360CDDD2B7178C01A3A1166498400288B44008CBEF1575CDE6C46C2
            F9F8EA7BA503604D5DD06D2EB0BC54372055EB797D7E7F3FCDB7F71219622719
            B6FD776956299BD7E72C8D508BAC303E3D8FC9F97964D2532B3116999C417A6A
            16996B4867A6914AA69136A656DD3B959D47321845886B845E560B76358ABC84
            38D78494B0EF4143EC224A3B3A2921B4F4C4AF4D2D2F41AB6A805A50897454C3
            34B02633D905CCCC6431333B8F99D9794CCF64310360668D3D590053002E950A
            B8BCAD1C297BCB92A46A6D822EB87F9BDEDB49C4ECADC4046770C529C1354133
            3B907CEE0F489DBD003D330D3D3D053D95B96D1273F3601786107DF975C83B79
            7CF95829826535482E4AAAD66630C19962F6D63B89D95CDFB96165896E683F28
            429C97105475047503C170FCF68831285700B9B1034377DF07B9C8025FB11517
            0B2B102CBF4ED2E62A2726B83AD63A6359A91D5A751B94893042E96928516D89
            489C41896A082D3E87630CE158FE6B57D75C259C4C4361290C3BDCF06E2A846C
            E2209B38F88A2CF992B9EA7E8198E83AB9E6595B590F56568BF0B92184B20B79
            6FB611C2D373080D8F432EB5C1F7D8AE25C13CC9B21A24C516E8A2EB0362A2EB
            43955B43906B02DBC121F2F6E95C2B896A8869098C4D4471E6FC250C8F2988B3
            2494A8860B5F0EE3FCD03094A886384B623810C299CF2E62784C414CCBAD0967
            AF2074E122E4C20AF8B6EEC9135C92DC5E81E09E6A188E563F69BC145ABBC337
            831554217AEA9F7982A3E3617CF0E9E7904783D0120694A886FF5CF0E2CCB94B
            50A21AB48401DFC804DEFFE43CE4D120D445C10880E0E9B3F03D5A02B9A06285
            E0B264258265351A69BC34B5DE31C4369721FAEAA93CC1C0E5083E3E3B047F20
            04554F41896AF8EC0B19FFFDDC0725AA41D553904783387DE60BF80321C4AF11
            9CF8C77BF06D2A84BCA36A55C1AB92DE1D55999B13DC5286D8AF7E9F138CB1DB
            16BCFCC6DFE07D682BE422CB0D0517C990669522EB0A1654217EE4698466B250
            D4C46D0B8EBFF81ABCDF7D743D39C8264E27DDEEFE64CD22E125B0222BD48E3E
            28893414DDD8B8608C21022070FC97EB0AFA4C160C9BF851D245D7EBEB0AEE14
            A14ADD50222A945466E3825A12E1B9798CB41DCEA5784D410EC3C5D68F49135C
            87D6FD31B4DB01CDD18A70208850667AC382E1441AE1441AC3F5EDF03D5CB86E
            8AFDC5DC2BA48BEE07D71D26CB6BA1714D087F2923349BDDB8A0310925A2C1CF
            37C1F743D3FA112CB1DA4913DDA4F192B6A660550398B91A91B39F23B4808D0B
            CE6411F28D422EE1E1DB6C5E2F8273FE12EE9B64D8F7534270FF62C5B8B5EA69
            F21142D8B86004C0C4FBFFCE45AFB0F2C6723B2C904BACAF8D94D98812C23E4A
            F06DDF5EB75036EF41EC8F6FDEB6E0E5536FC1FBFD9FDEB049FB8BACB864AA84
            B7DCFA6399138966DA7A68767F2F256B3D2FC42A1BD616FCCD8B080188B32446
            C7C378FF930BF08D2C1F7567CE5DC2A79F5D5C3AEABCC31378F7F439F8468250
            592AD703FFF426BC0F6CBE6193BE545481F122C7DB5A590769E5ED440BEE23B4
            E0E9A3D9868377C72B1B67D51B4C366C6B39E2CF9E40E80A1051139850E2F00E
            5FC6782886A8AA43896AF00742F0074250A21AA2AA8EF160145E7F6E4D24AE23
            0260ECB9976FDC038B2C18329563BCB2FEFE68958722952E22BDA683F4EA0E4A
            3674915ED72AC6B9D5A3C8B65522DEFB2C942B80624C22924C43CD4C2392CC20
            A4A7A0240CC4D35388A7A7A0240C84F414A2A9CCD21A2561200A20F0F313AB0B
            1673B85458855091A3276E69A030574D614B0D51B6B33747771F2D74F553CAE6
            793E56B552929588509BBB11D29250E6E6114E666E8DF414A200469F780ADEEF
            3DB66A6ABDBB2CEF19E51D34653E4053E64E9A327712A1F6E8220384FAE334E7
            384C314BFD3B2B04ADCDD0050913CD5DF036EEC37063C7ADD1B41F235237E4DD
            76C8852BC72C6F41857794B7DF1170D7D348432D8D34E620F4F42F736480AEF4
            0E50F6600F319BF33DD5D298778BC07809BA4940E01113861EDA0AEFA642F836
            15C27B5314E4AA775B19E49DC2B25851157C26CBC54C61E7B7E676FC8CE64A8E
            D06C71CF128463FDCB0CF6139E1A240C1ECD5DBF59A493D7178D6E7321696FC1
            D82E3B2E1656DCCC44B2E6CCE72BB1BC259770DF982FEC256C7D96B06590B0E5
            D8126B5C60BAC8B0B753A2B6B539CE35CFE52E30AF9114DD1B96F41559E03359
            306A120E8F9A45F2957234537088B0ED4942417F1EEB5F0137B411135CF727C4
            9697AEFEA856F966E8361712A21B63E65B902CCA8D517E93706AD86C7B78AC54
            A440A948BE9D960D0AEE6DA3449D8798CD4D93F55D94105B7FA40BAE5F33DE19
            CD493A7392BB445CDC5EB1629EBB4E30259BB8176433BF7DCC5C4B813D7B2950
            6AA3D152DB572078EDDF10B676D279F75D1A2F9569BCF3846E73BD93B4B778C7
            CCF6B8774795219B384336719ADF64F5FB4DD60FE562EE797FB15594775AEF91
            4BACE4DF2DD098B9864677DB6F4AF07F0300CBC7E9D9495EFE5F000000004945
            4E44AE426082}
          Transparent = True
          TabOrder = 2
          OnClick = BitBtn5Click
          Appearance.BorderColor = 14727579
          Appearance.BorderColorHot = 10079963
          Appearance.BorderColorDown = 4548219
          Appearance.BorderColorChecked = clBlack
          Appearance.Color = 15653832
          Appearance.ColorTo = 16178633
          Appearance.ColorChecked = 7915518
          Appearance.ColorCheckedTo = 11918331
          Appearance.ColorDisabled = 15921906
          Appearance.ColorDisabledTo = 15921906
          Appearance.ColorDown = 7778289
          Appearance.ColorDownTo = 4296947
          Appearance.ColorHot = 15465983
          Appearance.ColorHotTo = 11332863
          Appearance.ColorMirror = 15586496
          Appearance.ColorMirrorTo = 16245200
          Appearance.ColorMirrorHot = 5888767
          Appearance.ColorMirrorHotTo = 10807807
          Appearance.ColorMirrorDown = 946929
          Appearance.ColorMirrorDownTo = 5021693
          Appearance.ColorMirrorChecked = 10480637
          Appearance.ColorMirrorCheckedTo = 5682430
          Appearance.ColorMirrorDisabled = 11974326
          Appearance.ColorMirrorDisabledTo = 15921906
          Appearance.GradientHot = ggVertical
          Appearance.GradientMirrorHot = ggVertical
          Appearance.GradientDown = ggVertical
          Appearance.GradientMirrorDown = ggVertical
          Appearance.GradientChecked = ggVertical
        end
        object pgravar2: TPanel
          Left = -5
          Top = 4
          Width = 660
          Height = 49
          BevelOuter = bvNone
          Color = 12223546
          ParentBackground = False
          TabOrder = 3
          Visible = False
          object BitBtn2: TAdvGlowButton
            Left = 216
            Top = 0
            Width = 108
            Height = 42
            Caption = 'Gravar'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWhite
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ImageIndex = 49
            FocusType = ftHot
            NotesFont.Charset = DEFAULT_CHARSET
            NotesFont.Color = clWindowText
            NotesFont.Height = -11
            NotesFont.Name = 'Tahoma'
            NotesFont.Style = []
            ParentFont = False
            Picture.Data = {
              89504E470D0A1A0A0000000D49484452000000280000002808060000008CFEB8
              6D000000097048597300000EC300000EC301C76FA864000000206348524D0000
              7A25000080830000F9FF000080E8000052080001155800003A970000176FD75A
              1F90000008864944415478DABC99EB5353F919C79F999DEDCC76A6339DDDFE01
              DDBEEBBEA9BB9D6D5F75A69D76775D47EE8B8ABA8EAE407272218AE215E4A695
              AB562E2AB99C9344C05557AD1740856C88E2B22C2190730E49B4C072B1545DA4
              482040027EFB2201091709227DF19D49CE9CCCEF73BECFEF79F27B9E4366A4D3
              6CDD45269926D388131832B89454D9A1249D2023635732B10E2571ED2AE24419
              B1A2F4B79C2095B322C37222636205692F2B488759413AACE3A5FD7A87EC2E27
              32E51C2FDDCB8AD235ACC810C7CB886D5790B15345FA072A323AE464702A48C7
              337467EC30DD4316CDE5A15001CF75EF25D6A17C9713E407599171B28214D3D2
              F12F3FCF5CB34B82AF894C17C733C7D876C5AFCF75ED22C3C35D6F06F07C6712
              E904D9DB7AA732871599219697CC83095D12E804A94FEF909D655DAAF7CE3915
              2B047C9044951DCA30AD5DD2A1B3278215560217ECAE96970C1A9DCC76836B09
              400BD283743F7093C12127AD9DC99A7EF2370136D7CD80A3259CC0509D2F8DBE
              43F63C1E324DA507A97E2A936ABD69A46F67CA356D890BEEAF3729AD5D021D2F
              A9BDE5394477A7B2E6F190B6337D46BA1F8F92A1EB10E94549C5EAB8B6B8F442
              82C5D8798074DD478398E8A63B836EBA33A8C69D493746B248D79E9455D612FF
              7F85630529D4B678687845E5B5E79954E3CEA29BEE74BAE9CE20BAD29F4C97FB
              93E9DA9314BADAAFFA33CBAF7E58174C1C5E0A9D3D0197FB92B65F7F924297FB
              93E94A7F325179EF7EAAEC3B485CE7DEB7CE5A137E5A591959A17809CE5AE3C1
              75EC79AFB2EF1095F7EE27FAE6592A5D194CA78A4E558EC6B6DAA1952C591134
              B6785474247D7DE5D911FA66309548E3DA431AE7EE77B4BCD4C7AD5A6230E044
              198A5B37A0C8F6053881012B300BDECB095268ED89D038541F685C7B880C8EDD
              A4171407593E71F5E00406F9D6B5A8ED52C3D2538E82E6B5D0099200E842BF49
              0427C8CF181CBB89F4A2823881E95B4DB802EB5A5C72650093000054779C425E
              F3A7D00989AF80649E73A2E26D6245C56F5613AED0BA0E975C1998F2022FBC80
              6F02C02450DD598402EBBA57EE574E9487132730AAD500E40419F29BD7E2A22B
              1D535E003E6078741CC3A3E3989C003005343CAAC4197E0B748BEC7D4E906A48
              2F32E52C1FDA826AFB0E94D9B7831365AFBE579421AFF9335C741D81CFFB02F0
              01EED1718C7826E01E1D8767CC1F6B6BF71DE47DB70E06A77CB128D493DE21B3
              CC3BBBCDFD1B12E538D3F62534FC4E68F80494B6C6412F2A1609AB0CF9B3E126
              FDCE4DC38D8F4F01009ABA6FE240F5C7385ABB16EAD69D38E74A9A57B8399179
              48AC207DB4145C695B1C4EB644A267D08127EE1E9C6EDB82225BCC1CC8E96CFD
              3CC8B9D9706301B81F7AAA9052F53B64D77D8A7C7334724C1128B37D85732EE5
              DCF5078815A49EA5E122E0FAA91178E1CFC2DE21178A5B37A2B835167A511E94
              10175C6998F4629E73D370CD3D3548A95A83ECBA4F516889457E7D3472BF8D9C
              81343A8320475E09A8E177E274DB66389F36020046C77C707B26801740DFD043
              14D96251D2BA1106518902EBE7B8E04CF5C3CD736E3200571D80FB64066E5A7E
              C8F0B99023A4E3A5FF592CCD4F58D743786C01008C78BC707BFC8B8E7ABC7EC8
              FF3E40716B2C321BFF888BAE54F82626170D6B734F35F6557D88AC05E016820C
              ECC941323865F7B58B24C999B6ADB8E83A8CA1D1416012708F4EF817F64C60D4
              E3035E00AEA74DB8F4E00846C7BCC161F5CC76AE06FBAA3E4476DDDF16859B0B
              79B665072A1EAA3A49DFCE7CAD5BE404A317E538D112069DC060D833044CCD86
              1CC788C7EBAF693E7F010E726ECCEF9CB5F73652AAD620ABF69325E15E424620
              C71481B3B61D0DC4F1D2FD4B65F14BC8E741902301273D635333DF673BD7D27B
              27E05CE8703390E608E49BA38CC48A8A0F963C8E8B729C6809072B3070CF7172
              B6DC9E5945B8F776C8615D4879F55138716F631C71829C58413AB01CC8859C9C
              1DD696DEDBD857F511B26A5F0FCEAF18EFC9868D3F2743FB2EE204797E28C72D
              BD28C7096B580072DAC9F1A052E20FEB47C8AAFDEB6BC3E59A2351608EA92CAA
              8F23D23854A46E57FE4A6B97800BA5FB12E528B4AE072728E0F63C072601CF98
              0F00D0FAA8CE5F4A5600576089C1F1BA089C34C7FCA1D4BC89E8D2B30374F9D9
              612AEF506AB4211EF9F5A21C852DEBC10972B83D6E0080ADAF16FBAB7FBFC2B0
              46E3D89D7094366DB973BD4345573B1444E71F1FA20B8FD3C8D0B3EF1765B6C4
              89509B26BD28C7496B38FED9F17734765F415ACD9F9055B732B83C7314B26F85
              A1CCB5FDFDF3FF5690B14F4254D9A9A28A4E155DEC4EA60B5DF24D3A7B0274A1
              36DBA21C65FC3614FE108E1CF37AE49AA25E1B2EBF3E1A397591286DDA7A5063
              FF8A4A6D5BE974CB97445543A95435944AB786D2E8C6F323A415151AF5321A77
              1D2F81C121F79F64EAA371BC2E7CF97096681CBB15863C4B94F9EA4012553FDB
              43D70676D1F5815D445C4FE64BF51D2363D721E2F8843A9D5D02560CBD9D343A
              FD47AFFCFA68E498C2971DDA9CDA28A7BA7DDB5B158F7792BE773B19025A7078
              54E74D238343F6ADA63561593DEFEB40E69822916B8A6CBF3194F2CB86A96C32
              4DA50569DEB8EB1E32E81EB2A8A243496A9BA47CB9BD88C11122A4390A79E648
              E49AA36B0A2C1B7E56EB4DA5EF719C2CC80CD2BC81A10519548F74323E5010E7
              5052C5BF94F15ABBC4EB1F6086E6E434648165E13D996B8A448E2912A7EE6F38
              50DCB499F2EBBFA0EA91FD741F47979EB0CE00BA1464702AE97C978AB482EC7D
              BD53C14ECF4F42019D1DEE69C8BCFA28E499A370B221F6EAA9A6B835254D9BA9
              A4298EF2CC31AF07A87728A9B223C93F44FF712FB10EE5C79C202B6245E67168
              D9AD804E90A0C012833C73D470BE3946F38F860D7F51B76DA392D6AD54D4B889
              8ABFDFF466008D9DC9A47324055E43C8DF6145691827484B5881A9E3FC53FFA7
              D3AF2158413AC089CC4356905ACA5D496A755BFCA67C73F4BB85E6582A6ADC48
              6ADB562A6AD91C12E0FF0600783C0BEA8110C4080000000049454E44AE426082}
            Transparent = True
            TabOrder = 0
            OnClick = BitBtn2Click
            Appearance.BorderColor = 14727579
            Appearance.BorderColorHot = 10079963
            Appearance.BorderColorDown = 4548219
            Appearance.BorderColorChecked = clBlack
            Appearance.Color = 15653832
            Appearance.ColorTo = 16178633
            Appearance.ColorChecked = 7915518
            Appearance.ColorCheckedTo = 11918331
            Appearance.ColorDisabled = 15921906
            Appearance.ColorDisabledTo = 15921906
            Appearance.ColorDown = 7778289
            Appearance.ColorDownTo = 4296947
            Appearance.ColorHot = 15465983
            Appearance.ColorHotTo = 11332863
            Appearance.ColorMirror = 15586496
            Appearance.ColorMirrorTo = 16245200
            Appearance.ColorMirrorHot = 5888767
            Appearance.ColorMirrorHotTo = 10807807
            Appearance.ColorMirrorDown = 946929
            Appearance.ColorMirrorDownTo = 5021693
            Appearance.ColorMirrorChecked = 10480637
            Appearance.ColorMirrorCheckedTo = 5682430
            Appearance.ColorMirrorDisabled = 11974326
            Appearance.ColorMirrorDisabledTo = 15921906
            Appearance.GradientHot = ggVertical
            Appearance.GradientMirrorHot = ggVertical
            Appearance.GradientDown = ggVertical
            Appearance.GradientMirrorDown = ggVertical
            Appearance.GradientChecked = ggVertical
          end
          object BitBtn3: TAdvGlowButton
            Left = 325
            Top = 0
            Width = 114
            Height = 42
            Caption = 'Cancelar'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWhite
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ImageIndex = 49
            FocusType = ftHot
            NotesFont.Charset = DEFAULT_CHARSET
            NotesFont.Color = clWindowText
            NotesFont.Height = -11
            NotesFont.Name = 'Tahoma'
            NotesFont.Style = []
            ParentFont = False
            Picture.Data = {
              89504E470D0A1A0A0000000D49484452000000280000002808060000008CFEB8
              6D000000097048597300000EC300000EC301C76FA864000000206348524D0000
              7A25000080830000F9FF000080E8000052080001155800003A970000176FD75A
              1F90000009564944415478DAB4996B6C5BE51DC6FF12621293264DB02FDB00D1
              7DD844B742B9AF6D1A9A9B9DA4F812DBE7E2A471EC243E766E6D9396B409C99C
              A494316DD2C6C404B41B1250AA6E6C65373469C03676D13498B6412EBEC44D5B
              484BE3738EEF766227E9B30FC776E2DA4E5C281F9E0FB6FCFAFDF9F9BFEFFBFC
              CF6B82CB45799A18A7D5D15192190745CDBD146EEB21997550BCAD9F427C3745
              F93E921927494CE7DD122B74CBACF0A2CC0A6F4B8CFD4389B14733BA2CF38EBF
              CAAC704A6485C33263DF2E330E0A324E92F92E8A58FA28DADC4741733745F81E
              928D022D1F1D223C3941D7F250B98009DB210AF13DB70659E790CC086E89B123
              2BD1D489F5AF25C60ED1D80969DDFB32239C9319FB7199EBBA2BDAB69F622DFB
              6F10A0B59764D67973D8DCFDB4C40A6105A610A81C89CAB8E520EF783E62EEBD
              2DD8D2F329019B7B296CE9D1048C9D7ED1D8F189C10ADDED8068EA0CCACD4E6B
              D4DC47B2D1B101E0B82B5FC72708632E0A724E928DC2B8C4D8F34A75E3A45442
              36399E951907AD3E3142F8EEB1021EC2A82B5F63E3B43A3C4232279C0A18DA21
              99EC9F015C819B6F2E0F0E1326260A7808AD2E45FB5C84B62769D9324422DBFE
              EA6709554C01C6F64EAA7590603DAEB064B80887C6143D3E4E387C8CA25CEFF8
              82CE5AFACB3E4DB93718BBA0B7226CEC3A8DFE09C29109C22117E1D018515418
              A0A83040B19EC729E238B027602A5156B31392C68240851662630B247357F960
              E58C35D91130DA10B6F75AA33D83392E4AB51FA1947D8892AD876F5AD0B68BA2
              A9A37030EF8458C340D2DB10F9F96F205B0F42ACD02A136F06773D634D9DB8A2
              B521B16FE0B6947D9852ED478856FA4668A57F8CA26D7D4F2FE8AD25263041AC
              D022FAAFFF620940CC7F01A28A8758A9DF18F2138C5DD0DB10B1F49C5939E8A2
              95BE11A228DF4F51EEE02D92C9BE5C70CEB102C4C61688554644DF7D1F4900F1
              A5652401C4CE7D08692348B31362B50962850ED1F73EC81FEBBF08A9B119929A
              87C4390A378CB1031176FFD6283F40146BE9A710DB351428565A9D15928A43CC
              7D4E9960318D786209F1645A799D85ACD0E6AF2BB31362B511E26E1DA2EFFE2F
              07174F2C219E48611140321C47D0D00E5963C926CCBAE8EC4090753E176BEE27
              92CDDD24B3C2474553A2A91D929A47E4B5DF2B935C456E922C64CC7F0162BD19
              E22E8D0299756EB77E9DEB991F96584262E52AD2003E7EE32DCC566A21EBAD08
              F18515905921229BBB6F2699737CADE41A6205484D3604EEAB45F88553480248
              603D644A819C3D0FA9DE0CF1D126886A5E296B9E73A93CB82BA7CF62EA8E7B30
              F9880AFE061E41CE5104B21332E7D092CC3A0E6C98B19C0392CE8AC0BDD508BF
              F08A0279B508E4DC4588155A04EEAD46F4DF1F143A975EC532802BAF9EC5E4ED
              F7C0B3B3113E358BE93D3AF8D5AC02C939AF75F124C9BCE3D4A687EF7AC8E75F
              C92F7772ADDCD177DF47E4CDBF153AB79C813BF54B4CDEB91DEE1D0DF0AA1978
              6B8DF0D61A31BD4787D96B214D76C89CF0179279C73BA2B18C74C8426EAF29EE
              6422854476092453796B4E71EE5798BAEB3EB81F51C3AB66737039C82A1DFC2A
              26576ED1D40999137C2431F6F9B213817340D2B521705F4D092753882FA67280
              6B70673175E7F69270EB9DBC06522289B127AF2B4F3390E2032A849EF929E2B1
              04E2E99535C08C12A96524928BB8FCFC4B98DA723F3C3B1A3684CB8354E720E3
              D70FC8D821357743DCAD43607B0D62B317D6CABA4E8B0062F31F637A5B25A6B6
              DC0FDF5EF3A670F94EB208728E384926FBC7D705973DE72AF588FEF33F0ADC62
              BA0030BEA8408627DD703FACC2F4D60AF8EAB9F221ABF4F0ABD92005CDCE7F94
              B549CA4888447A1589F46A6ED3C417D3480388F8E630F3601DA6EFDE015F4379
              909E1A03BC75C67314E41D67CA02DC2C21D2AB5804B00820B17215B1B8F27E0E
              D27B4E71F21BE5417A6A0CF0A999BF93C43A8E6CFA30946999364B884BCF9CC4
              87A34F2305289F59178B6900118F1FEE87324E6E526E4F8D017E15FB320579E7
              D6CDE1322DD37BEF974E88D36731F9E56FE283DBBE8E4B3F3A81740652715259
              97D972BB1FACC5F4D65D1B42BA6B0DB8A0E6CD24714E9218BB54328B1B5B2056
              E7B75BA512C2B3AB11DE2A3D26BFF22D5CFAE10B39C8DC39B96E4DBA1F5163E6
              815A78554C29C8F45C3DF7798A9A0F5288757EBF68BBA5B742AC630BDBAD8D12
              42C5C053A9C1E457B7613E0B79158865CA1D4BA4B00C20168CC053A9817B6743
              6179AB9AE0A9674ECF36351385D8FD14627ABF5474A318DA21AA7944CEFC3617
              6DB1F81212AB9B24848A8167B70693B76FCB73323B360D407CE36D782AF6C2B3
              5B930F586782FB513DCED7310F5F7CCC4CB4D43B44A9832314B6F49C5CD0DB4A
              B65BA19FBC84446622A5657A5DE94A4A254416729D934BD9B12FBFA68CDDB5B7
              A0C453953A5CD4B5FC31D9758092F65EA255E730ADF68C52CA36F88580BE3D55
              7011C43920E96D4A2773E2552C01B8F28BDF61EA8E7BE0D999DF951485ACD428
              6BF2D99F6105C09533BFC6E4EDDB8AC2796B8C98DCA5C105B675CBA5AE2E9AEF
              B013055B0F5070DF010ADB0628D8D6CD078CB622F92B40D2DB1054F1081C1EC7
              D48E06CC7C5B0D5F19D99A859CB9BF1AE7BB1E8767D75E78763616DD1C338FEA
              30DF641B0AB4F6D16556A0CBAC40B4DC3FA2E8D028AD0EB828C2F59C58682A01
              69EC845C6DC27C3D8F995A8372DA97135D2A06DE2A3DA6B755C253A929EAFA4C
              A50E9E3AC39FA307FB29797498920383943C344804CB78466304EB714AB71CA5
              0583F5AD52E7A2CC08089BBB704967C17495AE7CC84DE4AED4BBE74CCD37CDD9
              ADE46FDD477E8B22C2906B4DC3637475648C96078748E6843F050C1DC5215901
              1173F70D8174EF6982A7DA301DDF3FF0C5B4EB3B941E1EA6D4D0504E8463AE35
              4DB8084F4D1026C628C8394836D84F89251E07644640E4533AE9A936C0536BF8
              834F65FADCCA13A3841F7C4FB9E13A762CA792179841C64131732F852CDD9D01
              63675AB9C0BC314E7AAA9BE0A932E05C037B744ECB914F65A4A5C347094F3D79
              1D37AC2681A22D7D14B6F591CC3AB684F8AE17B30FD585905927F51B43D618E1
              AD31C05FCFBE3EFB18BFFDBCD64CE7B51C79EB0C9F10B0B997426DBD24734E4A
              580728C4773F14641D3F9619E1CAB5576AD98D339385CC6A0D30E2A9359E9C53
              3355F3060BF99B5A68EE319EE634370270DDDF1031AE8F828CF31689B16B2446
              78566285B7645670CBAC108898BBA297B496A8BBA649F2A94C3E5F9DE91D6F9D
              F184AFCEC4FBD4A65B3D6A135D6860E9A3A6569AD5359705F8FF0100B9934224
              A87C8EDD0000000049454E44AE426082}
            Transparent = True
            TabOrder = 1
            OnClick = BitBtn3Click
            Appearance.BorderColor = 14727579
            Appearance.BorderColorHot = 10079963
            Appearance.BorderColorDown = 4548219
            Appearance.BorderColorChecked = clBlack
            Appearance.Color = 15653832
            Appearance.ColorTo = 16178633
            Appearance.ColorChecked = 7915518
            Appearance.ColorCheckedTo = 11918331
            Appearance.ColorDisabled = 15921906
            Appearance.ColorDisabledTo = 15921906
            Appearance.ColorDown = 7778289
            Appearance.ColorDownTo = 4296947
            Appearance.ColorHot = 15465983
            Appearance.ColorHotTo = 11332863
            Appearance.ColorMirror = 15586496
            Appearance.ColorMirrorTo = 16245200
            Appearance.ColorMirrorHot = 5888767
            Appearance.ColorMirrorHotTo = 10807807
            Appearance.ColorMirrorDown = 946929
            Appearance.ColorMirrorDownTo = 5021693
            Appearance.ColorMirrorChecked = 10480637
            Appearance.ColorMirrorCheckedTo = 5682430
            Appearance.ColorMirrorDisabled = 11974326
            Appearance.ColorMirrorDisabledTo = 15921906
            Appearance.GradientHot = ggVertical
            Appearance.GradientMirrorHot = ggVertical
            Appearance.GradientDown = ggVertical
            Appearance.GradientMirrorDown = ggVertical
            Appearance.GradientChecked = ggVertical
          end
        end
      end
    end
  end
  object pgravar: TPanel
    Left = 877
    Top = 446
    Width = 880
    Height = 33
    BevelOuter = bvNone
    Color = 15830313
    TabOrder = 1
    object bvoltar: TAdvGlowButton
      Left = 768
      Top = 0
      Width = 103
      Height = 31
      Caption = 'ESC | Voltar'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ImageIndex = 49
      FocusType = ftHot
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      ParentFont = False
      Picture.Data = {
        89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
        F4000000097048597300000EC400000EC401952B0E1B00000301494441545885
        C5974F4814511CC73F539AA6D22590028DCE6145BE25B083844126B985428851
        46A8F497A27FD2A55342450405425150A1972450E8691481124282BEDDB47FD8
        C54382907490D25A5B753A4C23B33B6F76677705BFA79937EFBDEF677EEFDFEF
        19A669B292CA5A51F7540042C1402EB01FA8044A8122A0008800DF810F401FD0
        2DA4FAE1B75F23D9108482817CE012700E58EFA3CF39A01DB82EA49AC8082014
        0CEC011E039B7C18C76B06681152DD4F0B20140C9C05EE02ABD33077EA09D02C
        A45AF00D100A064E036D8091A1B9AD0EE09890CA65E69A84A160A01CB8B78CE6
        00478151E04EFC8798088482813CE033B059DB8D6140FAFBC65F608790EA8BB3
        303E02E7BDCC0B0F1EA6B8E922E1DA32CC6854EB20A462AAF739130F6EE93EAF
        016E02079C854B11080503D9C0376083CEBCA8F10286618D8A0E4248B5F49C00
        C204B608A9C6740055C04B5713C340BC1876153B219CE6B6DE1F2A6731F25B07
        D12AA4BA66BF388760AFAE36A649B8A68CD2EEC198E2D2AE41C2B5BB28ED7AE7
        6A32525FE1656EFB2C013823F01628F76A656465BB20741AA9AF6061E667A22A
        11205F48B508B11148B8DB99F3516D24523407C8C59A6793F10005C95A9AF351
        CFB07F68D8E7C7DC56BEFDE00488F869A93307D8D6FE8A704D19E6BC7E89C669
        4E07308975C47A4A37DB63E0BA07FD402C601DDF2E808FC0CE54CC471B2AD9DE
        FE3A5588AF422A6D04FA8046BFE6F684D32ED1C410FDCE1727400F308B6382D8
        9AEAE9A4B0BACE650EFAD5313D34A033B6D5E97C893F8CDA8033BA56C527AE50
        585DE7B9D4EC7D627A6880F11B2D5E7F1F16528944001B8131609DAEF5AADCB5
        2C46FE78FD194656368097B909540AA9DE7802FC8768061E7ABAA4AFA742AAE3
        F1855E19D123A06919CD8781DD422AD701E195969F0472B032994CA5802A9D39
        244E4A0DE032D08A954CA4A30EE094906AD6AB829F7BC156E036D631EA374FFC
        045C1552F526AB9814C00152021CC1BA1995103B7C26308EB5993D03FA751970
        460071303958E7461E56B23929A4FA957247E9022CA756FC76FC0F0CFD55EC93
        8F30340000000049454E44AE426082}
      Transparent = True
      TabOrder = 0
      OnClick = bvoltarClick
      Appearance.BorderColor = 14727579
      Appearance.BorderColorHot = 10079963
      Appearance.BorderColorDown = 4548219
      Appearance.BorderColorChecked = clBlack
      Appearance.Color = 15653832
      Appearance.ColorTo = 16178633
      Appearance.ColorChecked = 7915518
      Appearance.ColorCheckedTo = 11918331
      Appearance.ColorDisabled = 15921906
      Appearance.ColorDisabledTo = 15921906
      Appearance.ColorDown = 7778289
      Appearance.ColorDownTo = 4296947
      Appearance.ColorHot = 15465983
      Appearance.ColorHotTo = 11332863
      Appearance.ColorMirror = 15586496
      Appearance.ColorMirrorTo = 16245200
      Appearance.ColorMirrorHot = 5888767
      Appearance.ColorMirrorHotTo = 10807807
      Appearance.ColorMirrorDown = 946929
      Appearance.ColorMirrorDownTo = 5021693
      Appearance.ColorMirrorChecked = 10480637
      Appearance.ColorMirrorCheckedTo = 5682430
      Appearance.ColorMirrorDisabled = 11974326
      Appearance.ColorMirrorDisabledTo = 15921906
      Appearance.GradientHot = ggVertical
      Appearance.GradientMirrorHot = ggVertical
      Appearance.GradientDown = ggVertical
      Appearance.GradientMirrorDown = ggVertical
      Appearance.GradientChecked = ggVertical
    end
  end
  object Panel2: TPanel
    Left = 659
    Top = 101
    Width = 161
    Height = 387
    BevelOuter = bvNone
    Color = 4432722
    ParentBackground = False
    TabOrder = 2
    object Button1: TAdvGlowButton
      Left = 15
      Top = 40
      Width = 100
      Height = 70
      Caption = 'Efetuar Backup'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ImageIndex = 49
      FocusType = ftHot
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      ParentFont = False
      Picture.Data = {
        89504E470D0A1A0A0000000D49484452000000280000002808060000008CFEB8
        6D000000097048597300000EC300000EC301C76FA864000000206348524D0000
        7A25000080830000F9FF000080E8000052080001155800003A970000176FD75A
        1F90000008B54944415478DABCD97D50D3F71DC0F1CF5DAFBBEB76BBDBAEBBFD
        DDF66E7D5CC53EB9562BF00B562B1412925F484040B4480AA1536B9FB0DA07A7
        6BBBDD6EABBA6B4FAAB38A54FB20BAB620212052A13C24BF84200FA252F1A1AD
        ADB313020A94BCF747622C1210D08EBBF7E5920BF0CAF7FBFBFE7E5F7E08BC22
        235B23FCB04A029A2AB4A609ED1982A60A87170A1E8BD0620D3ED7D4BB029AD9
        8E66DE82C75C895B3D815BEDC1ADF6E052BFC26BA9C1632E0A68E667D1D4E978
        54097854C16D115A3384D654A1D92AB45825E0360AFD2F08AC952B3D3221A047
        158E2C12BCD69BF1980BD0D476DC2AE15C26463C77ABD0641CF9BAA676A1A9EB
        705B6EA12D53684BBB0EC0B6054247A6E0566FA425F50D34F37F236226934B1D
        C26B7D079FF5667CA9C2A1A9023DE1114CA421F9284DC66B835D39BA8DA67334
        5BB338942A016D5CE06B57B44EE01509F82C4293714DE8535F3FDCC8D104B7BA
        31A0A9C2E04B02AF8FF208C3ABAFE8556160A5E04D29A23E996B9ED2ABD56804
        97B102FFF3C2F09A511EE15846A874E1F842E158A6E036EFF849519147F30047
        3284EEACA025E412FA56847A4EE87F566836BF465D52E85831C3D164386D8013
        C953EF9401BA9219F770A9D383DB544CCF72A1EF85B04B389E13ECA45DE8B6C5
        E23205A75553A1C544DDCE34B66FC8A46453C694DBB63E93FA0FD2E07832349B
        22235DA6E0E2E9CACEE2A43DEC128E2D16BA96086D19377030F1BB30CEA3C251
        23B6FC6C7E71FF1FF9FDBCBC1F65E7EEC772B9232E873BE36CE376872E875B62
        72B93D2E9FB26D0BE06BC3D848B7090E26426BFACD7CB94438B65884334F0BDF
        2E173A33DFA05E7FF9CD1E153A8DAC5AB9987BE7E5313FD5162E61412E8FA564
        335B9F418C2173DC66EB339867594CB4298FDB7576F6BD970E670CE01D63BAEB
        F5D091B19333CB85334F8BE0B50A1ECB4D349986D0D451C0D52B1733EDF13CE2
        D36CE11E89B7B26CF59B541E7451525ACDEED2FDE13EFAB49292B26A0E36FAA8
        77B752DBD8C2CA756F312B218547939FE28E383BA5E32135151A8CA099EFA1D9
        2AC19371734AC1A8D3C938C0FBE29259F3B777E8ED1BA2EBC4198E757F13AEFB
        D4771CF9F22B76EDADE0BD0F3EE1FBF31728DCBE9B28454F62BA8D99865CEEBC
        84FC660CA4CB045EF3DBB4A689A05904B7F9E4A8A11E07F8E05C95975E5F4FD7
        8933B89A0FD3E4ED08D7DED94D6DA38F471252B96DC61CEAB556B614EFE1FE39
        46E2D36C24A5DB9865C8E5AE383BA55BD3E168E8778D3A1ECDE7D12C370A5EF5
        B688CB7E8AC0D6C3C7A96B6AE171EB121E986BA2C9DBCEBB3B4AC2C0F8341B89
        E936EE4BB033C7B484FEDA44E84801CD1CC99024012D65E9F504B6757653D7D4
        C21CF39344E9F4344600C6A7D978D49487BAF049CEFE3B06DCF1E04B1D8DD4CC
        8582C75214F172360E70BA2E99B57FDFC4C0209CFCEA3F9C387D36DCA9AFCFD1
        7DEA3BEADDAD7CDED0CCE0106CDAFE31D3629346FC8C59C63C2C8BB33957AA40
        E54C86EA1247225D26D052AA05AFE540C49DCA38C0687D3A392B5E6173F11E36
        6C7E9FF5EF16877BAB70071B36BFCFF68F3EA378F73EB67FF819F905EB989DB4
        2022F0FB321DEC9F4D4F59F448A4CB041E73A7E0564F4D668AE7A7E6F0447A2E
        4AF242A6EB0C3CF09869DCA2143DD1FA74123372999F9A131978209ADEF2587A
        4A670791CDD64B23795670ABFD13012666E431CF924D9462605AAC3EF8A8E889
        BA4AC1F718C2DFA733669194691F05F43B944848FF848131864C2C39CF50525A
        C5A715072829ADA4A4ACEAAAED29ABA2A4B4923D65557CE6AC21F7F935CC4C48
        8D081C85F4A5FA0597E9EB11579031800FCD55C95EB19A6BFD7A7DFDBBDC3D3B
        614C60185916CD60ED13E7049FB596C6AB2F9287E75BC85ABA92BE0B8300D4D4
        6B64E6BFC8B2D56FB0FCE537C7CC6A7B964F1C07180E040078F92F1B8952F4E3
        022F21FDE531C704AF65E74456F18F8101A0F570176F6FDDC5B60F3F61FB386D
        D85C4C53731B4343C39302FA1D0A7D8ED88382DBFCC2448EC12B816D47BEA4B0
        E82376EC2EA5B864ECDE79EF03DCBE0E867E981CB0D7A1D05FA1DB2678CC774F
        0578A8E3181BB714F3AF5D7BD8BA6BEF98FDA3B088466FEB9480179D4AAA0434
        B3E056CF4E16D871F4385BDE2F61E7DE7DECDA5B3E6685451FE33974782A533C
        D857A9FBB9702855F09AFF7AB5EDD6958BE40B978FFC82B5AC7A73032F8F93ED
        B95729AFAE6338B8462604EC7528F43994E20B95BAD076CB65FE0D8D46C6DBB0
        FE7F4F330A8395B133862A634438952F9C5E26B46714D2A01FFB44ADCFC06A5B
        4169D5412A6ABEA0B4F2E0A4DA57554BE5E7F5D85F5CCB23F1D631813DE50AFD
        158A83EA18A13A4684D34F09A7EDC29145BFA44E3F109EEA10F0A582C5DC33D7
        4EFC823CE6989710A533314D3112A5334DAA693A23F72A46628D8B4848B7F3B0
        C18EBA6849842B89C2509572EB70B522C3FB1511DA3284B674A17391D09E690D
        DE950A018F18797A5936BF9DB99419FA7C6624D9793031EF9A7A28C9CE0C7D3E
        BF9BBB9439D6A73857A6839A20F07CB98E01A75240758CB03F98D0B33C58EF0A
        A1F719C19BB2897A43E8EFE214DA4A8CECFBE77C6A363F41CD96EB5755612275
        5B13E82D57B8E08CA5A75CA1CFA1545D825D0676655EEE4496D0B940684876E2
        52C19502474C704807B57F808699D0380B1AAE434D33A17E167DA1E3EE7CB9AE
        7DB052B981EAE82B800305971B5C290CAE12FCCF0B1E73150D86E0BEACD9CA40
        CD7C7A4A67E32F8F8D78599A6ABDC15A872A637F15A81E397A41207FFA516B04
        FE2CF05AF0F65B63725168EBFDD3212B7465BD0EDDCF02FB83AB360270AC1B98
        E6E049BC2D3D9B86E4415CA630F2FC35227B438FFD15CA8BFD4E9DF43A74325C
        3559E0A55BC087170A2EF5567CD62D6866F05A2E23A708EC732825179CBAE917
        9D8A5C1B307C13DD2C7466099AE5219A53D6E3B37E3350339F9EB2E8E0484E6C
        34CFFB1D4AE14567AC32E054E4A2532717AE1B5053858ED0BF217C16C19B7213
        3E6BE2C5EAC737F696C73AFDCEB876BF43F9D6EF507A429DED73289D7E8772C0
        5FA16CF25728567F85F26B7F854E2E3A6365C0A9C8850902FF3700D01AECE474
        105CBE0000000049454E44AE426082}
      Transparent = True
      TabOrder = 0
      OnClick = Button1Click
      Appearance.BorderColor = 14727579
      Appearance.BorderColorHot = 10079963
      Appearance.BorderColorDown = 4548219
      Appearance.BorderColorChecked = clBlack
      Appearance.Color = 15653832
      Appearance.ColorTo = 16178633
      Appearance.ColorChecked = 7915518
      Appearance.ColorCheckedTo = 11918331
      Appearance.ColorDisabled = 15921906
      Appearance.ColorDisabledTo = 15921906
      Appearance.ColorDown = 7778289
      Appearance.ColorDownTo = 4296947
      Appearance.ColorHot = 15465983
      Appearance.ColorHotTo = 11332863
      Appearance.ColorMirror = 15586496
      Appearance.ColorMirrorTo = 16245200
      Appearance.ColorMirrorHot = 5888767
      Appearance.ColorMirrorHotTo = 10807807
      Appearance.ColorMirrorDown = 946929
      Appearance.ColorMirrorDownTo = 5021693
      Appearance.ColorMirrorChecked = 10480637
      Appearance.ColorMirrorCheckedTo = 5682430
      Appearance.ColorMirrorDisabled = 11974326
      Appearance.ColorMirrorDisabledTo = 15921906
      Appearance.GradientHot = ggVertical
      Appearance.GradientMirrorHot = ggVertical
      Appearance.GradientDown = ggVertical
      Appearance.GradientMirrorDown = ggVertical
      Appearance.GradientChecked = ggVertical
      Layout = blGlyphTop
    end
    object Button2: TAdvGlowButton
      Left = 15
      Top = 120
      Width = 100
      Height = 70
      Caption = 'Restaurar Backup'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ImageIndex = 49
      FocusType = ftHot
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      ParentFont = False
      Picture.Data = {
        89504E470D0A1A0A0000000D49484452000000280000002808060000008CFEB8
        6D000000097048597300000EC300000EC301C76FA864000000206348524D0000
        7A25000080830000F9FF000080E8000052080001155800003A970000176FD75A
        1F90000009684944415478DABC9959505BE715C7CF4C269D49673AD349FAD2B7
        A4933E34D3493DCDA4D3A449D3246E5A4F83D90DB6B3390174AF167008313601
        B37901816D6C706C23E95E49809D0D125C0C661192D88C378174B560B3C4408C
        ED048891C42209F8F781C50684C3E25433BF19CD9DFBF0D339DF77CEF93E911E
        A9743F0D4827DD640AF1024BDA6B323ADD25234E1093B6279E38BB8C785B1CF1
        56317156E60FBCC048382BCBF15656C7094C1F27304E4E609C2A0B33A0B68B1B
        782B5BCC5B9804CECA6CE0AC2CF1163171362969BBE248DD11475ABB84340E29
        A92C2CD58C7F428DC8A0C53EB452C1A21B09C4D9658FF382640F67651D9CC060
        0E95E5DEF7F96766D1C26756B687B7B0FB399BF4C9A2EE9DA4B9B6F321085E97
        D199EE585209E247D50E59166765EF7216D112999523824A607C6ABBF824D711
        FB44518774FD112CE9920528CDA22E9539069CB01EB985D1555A44C35A07FB9E
        A6E327048D485D40F3EC4B1ABB8494662663EE973F0CB1C5D19C8D68012FB054
        E74BA116642EF121DD54EA028C53E954EB4D21B58D2D56B4C7F85D5F0F13A559
        049545547B7E2C891AA63296F890B23B751ED5B799A4ED49228D5554F2F3446D
        79D442B451DBBD9B5437F62D70A20A571A55B8D2A8CA954EFF756790CA169B5E
        7835EAFF2AC7090C0A4D515058A4A7CB47D2A9CA954115AE54AA70A511950DC4
        53E9403C95DFF998BE1E88FB076779F869555B2538697E1727CDEF406D95F8DF
        3816062A73344AFB63DF3B7BE7632A1D88A7B28178A2E2BE443ADDBF87F8EE84
        474E5E89FE617D65C43F0ACBFBF8A223056A418682B6886525398B0827AF4481
        EFFAE889D3FD4954DC9748F4D55032950DA75249775C96C2F4F3A4F6C8D54034
        F57F865BCE5E14B445A0A06DCBB2920A53144ABA623F2B1BDA4B5F0D2713293A
        E249E1F8F031A585F1F18B36066F15E378DB56E45D0DC13153D89A49BFF0024A
        AF650000FA7EECC05153D8B291E405064A730C14F6B867141D1F1169EC1F925A
        90EEE12C314BEA94D21285AFAEA5A1A22B07E59DD96BE68C3D118DFD6730E59D
        0600F40EDB70D414FA8048C68017242734F69D44BC554ABCC0F62FA94F9668E4
        B76D41EFF035601AF079D6CEA407F04C00AE510F46C7BCC034F0ED900D85C20E
        28841DCB2C0D76446D953E4ABC55FA3BBF05D4128D82B62DE819B20293C0F8F8
        D43A98C6D8F824DC631EB8C626E01AF50200BA06DB91670A026FF3D7AD44E0AD
        92CDA416D8B8E50523D03568067C806B7402EE310F3093A5D57FA600E7E8049C
        A313C034E0F54E437D71170E18FE058D5D02B5CDEF7A54106F658B39CB4F0B8E
        8F4FC23D3681AB7D7568EE29C3C51B152BA6A1EB0BD8065AE199980400F87C53
        38D112835DE73620AB2E1079CD91D0D8A550DBC48B22C91A486D171B97CC6E7E
        04273D806B741C07F501883BFB7B249DFFEB8A1195FE16A75AC50080C9C9699C
        681161D7B90DD857F706B2EA0390A50BC491A6885949C9CC106161C05BD9EBC4
        09CC772B49F1A407800F38D5CA22B5E6EF901B82574CE2B9E750693F81A929A0
        F082041F9FFB1352AA5F467ED30E7CDAF201B2EA0370B02E0079CD0B25398119
        244E60C61E24D839D80ECC6406D7EFB461BF6E130ED4FF0739869015935EFB1A
        BE6CDF87CFDB329158F967ECAE7A1ECA8B3B31E8BC83C2561699751B916308B9
        4F726E4D8ADC0F14CC6FDB32134100DD3F08D85BF332526B5E41B63E10B986D0
        150B1E328663BF6E13326A376277E57338DAF0367C935398F601B9C650ECAB7B
        63FEDD45917493CAC2DC5A56D0140EB7670CB7EF7E8794F32F21A5FA2564D6FD
        13B9C630E4AC42708ED49A5770BCF97DB8C7DD0080EF47BEC7E186880582F74B
        AA6D9261D238C4CD4A3F9B44658981D62E85BEAB0887F5DB907CFE05249C7B16
        177ACAA1EF2C4672F58BAB92CBAA7F13E9B5AFE1E670EF4CD5F10283CE41BF82
        3986101CA80DC0B10B5BBB496D633F532D33C11439E270B83504C9557F4342C5
        B3A8B0150000AA3B14907EF324326A5F5F31C9552F20BDE655DCFE71009804A6
        7C0F1694EB839163086922DEC2242E3785F0020BCE1683CCC657502E1C99AFB9
        E71DA79059B711F94DEFAE98230D9138DAB81D37877B31BD42C1430DE15AE2AC
        D267963D7D09221CBAFA260C7D1A0080D70B8C8E79E01C1DC35DB70B236EF72A
        9879DF3536D391562278B829722BF18284388119F477EACA3305A3F5BB320073
        CD7E02AE510F262666D6906F154CCE323AEE836B05823986106F5E63C42F496D
        DB49BC20C9F1376EE5B785437743094CCD08CDF5D229DF6CAEA7D70100AF0738
        DC1089CCDA8D0BE4B2F541C8D5879D2E306C2352D8E3A8D026FB8DD22C02EF67
        0DE65ED984F2EB72C0074CFB80F1091F6E0EF7C271EB323AEF98D74CDF901DB6
        810B3864DC8203BA4DF372B9C6501CAC0D445E53D85F3E6DDD4AF4E5D06E2A1D
        FA844ABA640AE5A2919F1758700203F9E53750DE299FEF28A5962CC4963FBDAA
        5DBC98F4DAD79131DB41EE2FFAFBAB37E3F8E5ED356707E2A8EC9694E8CCED24
        FAFC760A697A77FDEA9429C6B3F4D0744FF26C672E004077AD0809157F44967E
        F3DAA90F40967EF3A28D1182CCCA3771CAFEF653676EB2A4ED8F263ADD1D4725
        DD71F4C58D78FABC4712A9324743B574BA052730C8B9FC6FB4DCFC1255F65348
        AE7A71D59DE4278B79CD661C37EDD8A3E892D171470C7D6A8F21AA1C49A6CA91
        64AA1E49A10AE75E52D9648585A6687F23383881C109F3769C30BD0B797D30B2
        EB03D7D4F2FC71A06633721B82F5DFDC8DA72A77129D75EEA2B3CE5D44CA9EF4
        795437F613D7B987B8F6A83AFF571F2C549618A8ED2C146DD1C8AE0F9C955C9F
        9C5C1F8283D5818E93C2F647B437DF23AEE7AD79A8DA937A0F6F1AE93C69747E
        3489782B53AF688F59F6ACAB75C850D816852CDDFA24B3744190D707DBBE198C
        FFB5DEB3976ABC4954EDD9330F352275012DC82023D248639790A29D297ED081
        7C4EF25E2457916E7D08E4FA20C8F52155878CE1BFA8F325D32564530332A811
        99F32C7F81691593BA23964A3A65514AB3C83B7381F9702299AD0B42B62E0879
        2D91BBF32F6DA35C431855BA13A919FB567FC37AA627969482F829B543CACDDD
        9FAC3592724330E4FA601C690AFFFAE8C5C80D0557DEA6824BDB28471FBA3641
        4DC7CC25BA4A1053D1B709C4D965CFF382F81867656F3F58320872FD8C4C8E7E
        462CC710EACCD1872AF29AB6BC5AD8FE0E1D376DA76397B653FEC5AD0F4750DB
        1D4F2A7BECECDF1092C7382B13C00B4C0127B0759C95717002F3BDD6217316B6
        7DE094EB8307738DA1D7731BC28CB9C6D0C2430DE191871BC21F3FA40FA76317
        22A8D0F416E55FD9B622C1FF0D00827E35A922DC9C280000000049454E44AE42
        6082}
      Transparent = True
      TabOrder = 1
      OnClick = Button2Click
      Appearance.BorderColor = 14727579
      Appearance.BorderColorHot = 10079963
      Appearance.BorderColorDown = 4548219
      Appearance.Color = 15653832
      Appearance.ColorTo = 16178633
      Appearance.ColorChecked = 7915518
      Appearance.ColorCheckedTo = 11918331
      Appearance.ColorDisabled = 15921906
      Appearance.ColorDisabledTo = 15921906
      Appearance.ColorDown = 7778289
      Appearance.ColorDownTo = 4296947
      Appearance.ColorHot = 15465983
      Appearance.ColorHotTo = 11332863
      Appearance.ColorMirror = 15586496
      Appearance.ColorMirrorTo = 16245200
      Appearance.ColorMirrorHot = 5888767
      Appearance.ColorMirrorHotTo = 10807807
      Appearance.ColorMirrorDown = 946929
      Appearance.ColorMirrorDownTo = 5021693
      Appearance.ColorMirrorChecked = 10480637
      Appearance.ColorMirrorCheckedTo = 5682430
      Appearance.ColorMirrorDisabled = 11974326
      Appearance.ColorMirrorDisabledTo = 15921906
      Appearance.GradientHot = ggVertical
      Appearance.GradientMirrorHot = ggVertical
      Appearance.GradientDown = ggVertical
      Appearance.GradientMirrorDown = ggVertical
      Appearance.GradientChecked = ggVertical
      Layout = blGlyphTop
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 0
    Width = 800
    Height = 49
    Align = alTop
    Alignment = taLeftJustify
    BevelOuter = bvNone
    Caption = ' TALOS 1.0.1.0 - Backup'
    Color = 12223546
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -21
    Font.Name = 'Verdana'
    Font.Style = [fsBold]
    ParentBackground = False
    ParentFont = False
    TabOrder = 3
    object AdvMetroButton2: TAdvMetroButton
      Left = 749
      Top = 0
      Width = 51
      Height = 49
      Align = alRight
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
      TabOrder = 0
      Version = '1.1.1.0'
      OnClick = bvoltarClick
    end
  end
  object Panel4: TPanel
    Left = -9
    Top = 49
    Width = 914
    Height = 6
    BevelOuter = bvNone
    Color = 16235068
    ParentBackground = False
    TabOrder = 4
  end
  object Panel5: TPanel
    Left = -16
    Top = 55
    Width = 896
    Height = 53
    BevelOuter = bvNone
    Color = 4432722
    ParentBackground = False
    TabOrder = 5
    object bck0001: TAdvGlowButton
      Left = 32
      Top = 4
      Width = 136
      Height = 45
      Caption = 'Agendamento'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      ParentFont = False
      Picture.Data = {
        89504E470D0A1A0A0000000D49484452000000280000002808060000008CFEB8
        6D000000097048597300000EC300000EC301C76FA864000000206348524D0000
        7A25000080830000F9FF000080E8000052080001155800003A970000176FD75A
        1F9000000B024944415478DAB49979701BF515C7DF0C4367E8B4332D74FA1705
        72D0D84E4280028963CBEBC4894F5D7B48BBBA6C39BE242C6B57470E1FC1761C
        68685ACA702425698149038433ED5068873B9D5ED376FA079D109A064202BE8D
        EDC447A4DD95BEFD43B66C27969CB45433DF19ED6F7EBBBF8FDE7BBFF77BFB44
        E8ECA405EAEAA1E4031DA42A1CE91191F4888B7485A3C47627690A475A54242D
        C4931A647355996DD664EE694DE6DF5583EC7935C85E4CC9DAA7C9C2EF35993B
        AAC96C5493B93B35852555E14997ADA44724D2A30ED2C30269113BA9B295921D
        3B09DD7BE9721EBA6AC01D6ED243DC8DAAC2B7AA32774A0DB29893150BAF59A8
        2D9685E332F7A92A730FEAB2F5363DEA207DBBF3AB0094488FBA4957D8EBB590
        7D9F2AB3E36ACB2230D724ABA629C2CFF488FD263D62FB4A2C68525BCC67E22D
        96FF116CBE75AD505B2CA39A2278F588B81460F742753D44E8EC222D2490265B
        F66474E15702CA4293D9275499A3E403ED843D3FBC8287D0B97BA1BABA09BBDB
        4995F9A36AC0F4FF835B18AB6F273B7610BAF75CC143E8F4CCC84DE8A9217454
        53BC857BEE5A17D2832C1233D2832CB46BBC3F1E604F24DB3D841E6F8A65868B
        D0BD3DA53DBB083DDB498FF0DDF1E6CAAB7A28642B10320161131032038A25A5
        903935163601F2D5C56EBCD9082D647D1EDD61424F6B9A8BD0EA25B4D6103AEA
        29B1A3AE381EB066756B7C162C6C04642B4EF8243C55E7C183B55EB4796BD1EA
        AD454FAD1707EA3C78ABC98158904DCD552C8867DFDD88375B9088D67AD1D190
        626AF552EA4B5B1D6187789D1A281F4EC171191EC2A52DF56AA3136E4F03D649
        CD58CE35E1D62A2FBE57EAC2CDA52EDC5A5983656C23D6880108EE261C697023
        A95881B06969D7379703DBED37A1BD8ED05A4384763FE18120E951CFBE78C094
        F1462DC802611386831CEA3CF55829C9C8B56C434E6115365639C0D5B6C01B6C
        43ADDC0E5BBD02C6E2466E6115728DD55829C9B0B99B7026202C09190F98A087
        DDC7B03B48E8F01325A22C2522961BD4A059CB6AB9B0096703023639EFC72A7B
        006B19338AAD1EFCF8C033F8C73F4F6164F402A6632A2EC5348C8E4FE0E4BF3E
        C1C1678FA1D45E8FD58595586DF3E31E47007FF58B40C494D54BF1800989B039
        2F116589F41D1269615B6B3CC309110FB240C88C2F831C3639EFC76A9B1F79F9
        E508B63D84B3E77BB1D467706414BB1F7E1C79F9E558C3D5E31E47001FF97920
        62CE0CD9628516120EEA3B24222D24902A739F67327942B60221339AAAEBB14A
        0C202FBF1C9DFB0FA401A62EA988AB1AFE7DF60B3C73EC387EFEDC6B3879FA2C
        E2AA8E89E9787ADE93CFBE88754546E4D8FCB048F5B8E4AB04226CB68D73410B
        09D793A608CBB3C79D116F36BAB05C0A622D6346A0756F7AD18B53314CCE40FC
        FA771FE0DBDFBF0FDFB8ED2E1C79F97500C0E4741C17A76248CECCEFFEC941E4
        6DACC0EDAE107E6AE381A62D48446C8B7BAE8585A6F066D2439CACB664CE7349
        D90A8FA711B9966D30985D18181E5B00370BF8F689BFE0AE12166B8A4C78EDCD
        77D38093D3714C4CC5000097E21AB8DA16ACAE72A35C6AC4E7BC01F05520195D
        1C5253B8C3A429DCD14C150A4226FCD927619DD48C55055578E4A9230080E998
        965E7C3EE0DD5B38AC65CC5700CE9F77F4D5DFE0F60DE5B8D3ADE025BB09E0EF
        C594CF0444ED5702CAEC07A4CAB6136A864A0561130ED779B09CF3616395840F
        4F9D01004CCCB3DED5024E4CA5E69DF9AC1725BC172B043FBA1C4E40588F3EBE
        10533EE3659056A8327F9AD420FB45A6B31521331EACF5E2D6CA1A08750AC62E
        4C66B4CC2C605E61153EF8D3DF533FE4B2798999606C8A766159B90B7EA71713
        92012342017A85146472614C8E901A64A717DDBD4116502C68F3D6E2E652176A
        E5765C8A6B486605E471F7160EFB0F3C834BB1B91D3C1DD3303115434C4D0000
        A25DFBB1B2C406C1D980F3623126A542F40986C5202797046C9D0554DA7129AE
        67043CFEE67BF86E5E01B6D8B661438504ABB7054FBFF01ABEE81F4A83A601BB
        F763658900DED980CFC44D98140B312032E8B319D0CB1762DA679ADD3893A406
        ADFDD95CDC53EBC52D9535B03784307E716A51176B7A0267CE7E8E60FB43585F
        2E22B7B00A790623F20C466CB16DC3AEBD8FE0D373BD48CEB8D8BF730F969539
        D1E8F4625C2CC29868C080C8CC410AB331691B254DB6FF31DB263958578D656C
        138A2C6E7CFCC9B94537C9C5993402001F7E741A8F1E3A820A4723566DACC02D
        776DC28AF5A538752675EFF9BE219489F558C137A1C3E102C47C0CCEC0A52105
        037AF9024CF9CC9F90A6F0C732A699B009EF3739B0460C20A7A012877EF94AFA
        F4B8DC8AF3630C0006864771F495D7512AD663F7BEC7D2E3AFBEF10E56E597E3
        0E978CE71C5640DCB0006EBE25FBEC457F205D6177664BD4719985CDDD881C63
        35B6DAB6617C62FA8A447D793A999C56D34093D3710C8F5E485F7B9A7722B74C
        C256971F9F8A9B11130B16051C10190C4ACC11D215212FEB511731E1E5063796
        4B3256175662F7C34F000012C9CC90F36193F30A87C77FF10272F2CB90E30963
        AFC301881BAE70EFACFAED0C469CC50ED2149ED4203B92A992492A16688A15A2
        BB1179363FF2F2CB70E0D917D38B4E64819C98179B2FBFFE16D61519B1466842
        A9EB7E0C8A0C626201FA33000E888C3AE42CFE3AE9DB25D242C2FE7896177284
        4DF82C20E0078E00D6B0F558575485CEFD4F62727A0E404FA6D2484C4D409B0B
        452493C0A3878E601D63C23A8B176B3D617C205502E27AF489C58BC79F9DC190
        C43C3FE662881221332514E377D496CCF5D96C35FD37BF1DF73A02C811FCC82B
        A800BF4DC6B3C78EE3E3339F419D47A527804FCFF5E285E36FA03AB00BB9F965
        582B3461AD278C5F4926405C8F419159DC7A12833E81C19776E6BE710743845D
        F584361FE961E7E14C257F7C5E3C9EF4F33089F5B8DD15C2EA2A37566DACC066
        AE0675A10E843B1F46A4EB47688C76A2CC5E879C824AE49649C87187B1D5E5C7
        FB5225605F8F61B128A36B7B790623D5CC5BB12043B1004384B6264247336187
        FB9BF1E6CA78A637BAD9C2121133545F25F6DB78944B8DB8D32D6385E0C7F20A
        37566EB16165890DCBCB5D58C137E10E978CAD2E3F7A1C0E0C8A4C76CBCD8CF7
        720598AACD5FA6356F24D5B79108BBEC845D3642BB931251A7146FB62CD14DE0
        800807F8B6E21C6FC04B7623BA9C4EF81D35B0391BC03B1BD0E0F4A2C3E1C2F3
        0E2B3E913603E206C4C502F48AC5593645117AED0C866AAA5AC76BCD34E636D2
        98C74884EE484A7BB613BAC3A487F843F166E3922FDAC9880DF05500FCBD8070
        1F264403CE8B9B704EDC8471D10088F980B80131B120ABD5D2AE150C18B617BD
        AF2BF5A44715D242CDA4859A89D0593DA71E2FA1DD45F166F33B57D30D48466C
        98F219D12714625828C0A4588849B110A3A221637ECBA4CF6DC5A7A6DDC5D7A1
        C640A89E13A1B3754E5D6D84AEDD946CDF41AACCBFA7B698966E7F44ED98F219
        D1CBA74AA6816B04EBB731E8B733272F45986F251F60086D4584D639113A7BE6
        690FA17B1FA16B0F69211B69B2F9E8D5342CD3904221FA6C570FD96F6730602F
        FEEDA054FCB5E46E86F03043E859A82C0D4C9EF4A8485AD851AFB69855758906
        66326AC3B4CF94B2E41290FD7606FD3603065D25BB463CA534241691B68B21EC
        65089D0BB54487D531DB025EA685EC4FA7BBA34BC464AF30E36E6931B8620C3A
        99E3A3CE923B47DCA534E229A341FB7F0D28911E7192AEF0A926BAC2DDAB2AFC
        63AACC0D646AA22F809C67C941B1F8E28068383C246DD934E6DD4CE39E2D34EC
        2AA56177E9570178D9DF100A77831A644DAACC3DA1CADC3B335DFFA1D9BF2110
        B58F4C35994EF7DB8A4E0C48CCA141919186A44D370E4A4534EC28A1B19ACD34
        E62EB92AC0FF0C009BE4FCBE8FF777030000000049454E44AE426082}
      Transparent = True
      TabOrder = 0
      OnClick = bck0001Click
      Appearance.BorderColor = 12631218
      Appearance.BorderColorHot = 10079963
      Appearance.BorderColorDown = 4548219
      Appearance.Color = 14671574
      Appearance.ColorTo = 15000283
      Appearance.ColorChecked = 7915518
      Appearance.ColorCheckedTo = 11918331
      Appearance.ColorDisabled = 15921906
      Appearance.ColorDisabledTo = 15921906
      Appearance.ColorDown = 7778289
      Appearance.ColorDownTo = 4296947
      Appearance.ColorHot = 15465983
      Appearance.ColorHotTo = 11332863
      Appearance.ColorMirror = 14144974
      Appearance.ColorMirrorTo = 15197664
      Appearance.ColorMirrorHot = 5888767
      Appearance.ColorMirrorHotTo = 10807807
      Appearance.ColorMirrorDown = 946929
      Appearance.ColorMirrorDownTo = 5021693
      Appearance.ColorMirrorChecked = 10480637
      Appearance.ColorMirrorCheckedTo = 5682430
      Appearance.ColorMirrorDisabled = 11974326
      Appearance.ColorMirrorDisabledTo = 15921906
      Appearance.GradientHot = ggVertical
      Appearance.GradientMirrorHot = ggVertical
      Appearance.GradientDown = ggVertical
      Appearance.GradientMirrorDown = ggVertical
      Appearance.GradientChecked = ggVertical
    end
    object bck0002: TAdvGlowButton
      Left = 172
      Top = 4
      Width = 136
      Height = 45
      Caption = 'Configura'#231#245'es'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      ParentFont = False
      Picture.Data = {
        89504E470D0A1A0A0000000D49484452000000280000002808060000008CFEB8
        6D000000097048597300000EC300000EC301C76FA864000000206348524D0000
        7A25000080830000F9FF000080E8000052080001155800003A970000176FD75A
        1F9000000ADC4944415478DAB4D9796C93F71907F047AA36A993264D2DAD364D
        EBDA4A934A27AD28942B601B5AC6115FAF9D90842325A5D04BEA26ADA52DD558
        C710C746ABB51B2D4720050A940412878442D2D03C3F2794B6ABA6AD81C4B189
        138EC47E0F1F8973FA08DFFD61E7242909747F3C4AF2CA7EF5F1F33CBFDFFBF8
        177A9B4123632B83FEC80324B142391CA0551C242B2BB492232471905670886C
        AC9295E5E95621BF2C09B9D02694CFAD42BE6E157224197E9F5D28B592508E5A
        85FC9AC4F20C8915B2B14216D6289BC394CD61CA628D56B0461696E90D8ED3B6
        3196B719449305AEE62EB271F03E9B503749427159858CC1B08CF87D30CCC23F
        EABA2414AF24E46D16D61ECEE10ECAE18EBB07E67280D67088ACACFE204B0476
        5A85D26111FE5B3053098B90E376A1EECDE2F0FD2B3840D97797C120AD1241B3
        49F89BCDC207EB5DE286917E98853F9425D4FCDB02B73046C57606FD994199AC
        9245C85B066FF87DC0C622531F78B795657A8B0768E718CB1606D166C6A8D8C2
        A0B778806C42399A217CE3F6D7F71926E18745F8AB5FE3186D1D63D9CC20CA63
        501E83D630682D839EE1185985EF98F5FF0CBB35DA9D79DC47CFA62C832EDAC8
        A08D0C7A9341AF33C82E425B9689B6716F6273CA58FAB91F0BAB7D78FABC1F46
        96214DB5B44E1996DA5BAF2F176DB008EDF81F18B42965DAC820CAE708ADE508
        6DE06E5A273A165A44FB846535B38CF55FAA78F64B152B6A152CA8F261E6B9E4
        EB6DCEDBE3CC176558EA64589D32CC17FD49288FDC9ADA912F42F91BB88BF239
        42F91C214AA6B58FB2B9E79E25A25DB308FFB859B10819E9553EBCD710063080
        EEFE18BE527AF0FABF0378F25C3B96D7F827463A6598BE9491794EC1EA431AD6
        1CD49053A2C07A4181B54E1981F4638968431677DDFF2CF7511EF711BDC4097A
        8513B44A8477664C50DAC130B21F73AB7C38D912017013C00080017CE80A23ED
        9C0F56A18C8B337EE5C78AB32AF23F0860ED3F35ACFD50C3BAF782C82A4A66D5
        563BFC3EA368C32A113AF10A27E8254E1049DC4916EEBCD72CE4B834CE7662E6
        313D58E3C7AFCFB4E1D0954E0009201E07308037BF519176CE079B531917F7EC
        0741E47DA822EF8086BC020DF9FB8258B947C6D3152D90BE5060AB55534F1C19
        26E18385C38F4B1C21CAE530650A6D9345F86EC1653A652CF8CC8785D53E643A
        87914B3EF7637A451B8E3677E2E6401C00F04D5B18331C5E58EB344829A4F16B
        3FB2CF6A786E6F18C66DCDB0BF7F1DEB8F7422EF8086E7F684B0FA808A39271B
        B0E88C17F63A6D0869113ED885BA2787C34499AC9124941BE365CEC4320A3D9D
        587751C5ECCAF621E48A5A05BF2CBB81CDFF090E6531D61F8574C68327CB5A90
        F98506D3D732B2CF6A58BF3704D3762F8CBBBC58B35F85FDFDEB78668F860D7B
        3BB0B4A815734F37625E71239EAA1846A61E0C9D76567F40126B8F8EDF6F32E6
        57F910EE8942EB89C150EDC3DC4A1FB26A65A49D6DC7E2F37EB445FA31908863
        A03F06C413C8AF6EC52387EBB1B0A605399501ACDF1B8669BB17197F6BC6BA43
        6198767961DAEEC5FABD1DC8387115B3CB1BA02B754357EAC6BCE2865B91AC59
        4812F2EF27DA526657FAC0EDDD00004FB80FFA6A3F7E517603192CA33ED00B20
        81EE9E283090405BB817734A9A30FD543D969D68C5867D1D30EF18C619777961
        DEE1C50B059D30165DC3ACF2CB5890C24D8494845C4036A11C9D68DF9B71B61D
        1FB83A52AB358186402F0ADC1D08F74493B8DE28BA7AA348C41390BBFBB1F453
        37A6EFF3E2E58311987778611C856BC10BFB2330165FC3ACF2865B70E321336B
        554176A138CD130C034B6B924F8DE6505F129988277B2E1643574F12D7DD1B45
        574F3F8004C2BD513C7F2888DF6CF4C0F2AE7754E65E2C88C0587CFD3B712391
        8B2ABCC8AAD33C641572DB44FB9EDD29636E6572755F0EF4A4F63EA4327A13C0
        4DF4F54511E91944DE4457771439BBAFC3B05386E5DD9664E60A2230164D0E37
        8C6CC45315DE005985DCFB5D9B73A653C1BC2A1F0C55ED78EFBF0A2EDC08A351
        EB46EDF50E545F4D3E5512B1F8086402FD092077F70D3CB1F10A5E3AD8395C56
        C7E4708331FF94ABFBB6C0C14C2E63054F54DCC0F44F1A9176A2018F1D6FC4B4
        83F53878490100C40680484F3FBA52FDD9D913C3F31F05317D5F33E69E699812
        6C44749345C8FEC94E22F63A0D269631FB941B738A1A30B3A811F7175DC5816F
        7D0080782C914226CB1D8EC6F054B91B3F3D548F450ECF9D00439425D42FCC53
        9898ED751A24A70C7D6913D2398C5987FE855FE92C38B6FF403293B1C4A89EEC
        E88FE1B7651EFCECD0A529229BA0735CF1925D2827A634D2B31FF65A0596CBC0
        A2E24B305B73B138ED493CF4CADFB1DFDB97CC6474644F021D7DC3C885659EA9
        002F9055C86F4C69F2651FA40640FAAC151669252C73D3B164C7513C511DC203
        475C3878490580D4C2E91F4276F6C5B0F8F4D432A977B88F90C481C7278DABF1
        416A04AC952D309AB3619E3B0F8B771E43BAB30B86335731B3A811D30AEB71E0
        B29A2AF7E84C768EC8E4A2496452EFF0AC243BAB641572E0BB4A6A653FAC5F77
        436A06AC67AFC068CE8669CE304E57D10A5D890B0B1D6ECC2C76615A613D0A52
        C87834766BB94F4F0A19D397797E44391C22BBD0768D376E0D95F4EBAEE41874
        EC228C99CF8CC695277183371E443E58588F03A972C7A2E367F2E787274096B8
        A12F731F377CDA4C64E610193934CD34DEA85FE383F4ED00AC55ADC8C8DD80E5
        4B2C302EB560F18EA348777661C118DC48645A910B0F7E548F824BEAF0C2E9EE
        474F5F2C898C26B0B8CC83C78E37C03072037778A03BD508BDC335DB70DA4DB4
        9EA3F422472957040B8C6347FEBA00A46F07607CEDAF58FE74064C197664E4BD
        8CF95532169C6D1B17378CF420ADD885070AEB87174E3C8150670F3CADEDC0CD
        181A03BD78FC9346CC39D534FCDE538DD09DBEFA99A12A4086CA00D1068ED34B
        1CA755DCF7E365C2171DDA729C0AA47AC0FCCE712C5BB40C264B0ECCCBAC58BC
        ED301654C9C94F7A9B265FE870232DD593830B2714EA4045F54574A9C9BF179F
        F66046D1880F5A7C09864FAF3E62382F93E1333F513687690587693577D24A11
        C8350F7EED742A90BE1D80F99D4F90314F87E56B7F8785851730BF5A83AEAC19
        BA92A6496D152317CEBE7A35356B44010045EE201EFDB801F34B52AF3FD9087D
        79DB2643B54A864A1F192A7D44AF729C5EE5386DE438BDCA03641781FD19A23D
        99C55A15B62F3B602CAC41FA897AA47F1E4E666E92B8B1C8473FBE8C3F7DD58E
        F3ED3DD85DAF22ADC88599C54DD00F96D6E162838890A1AE970CCE64D0338CA1
        58C7A055DC4F46D1767E6891D469B05D0296D4A89877E232164C113712995ED2
        84878F5CC6C3472EE3A1C39730EB64D3F02A3EE97219AABCF718EA5AC8C0CD43
        419B52470D9B18F4168336F34DDAC831B209A5C6983A3C929C0A322F04B0B4F2
        1AD24F36DE3172688C2A710FCF85252EE84A9A1A0C55DD3F31881819448C0C1C
        1D0ADA9A3A13DCCAA0BF306867EA6726AB6412F2D0D78191C879C5778F4CE29A
        A02F6D3AA777B87F68A84990A11664E0D131E101A68D15CAE620AD1481F526E1
        8F99850F9253FE7E90254D495C99F74DC3192FE91D4D64A8EE2783730AC0E411
        7090D670882CAC3E9229B4424BEAB420F38276E7C89226E81C1E87BEFCCA0C7D
        792BE9CFB490BED47567C01C0ED22A0E92C40AADE22E923838CBC6EA3F6C4E55
        1E424ED89363AE39DC9D3A87BB405FEA5E34042B6F217D85F7EE815656289723
        641BFE37C4BD9290CD591702BB979CBB767EC1A92697AED4ADEA4ADD91540474
        0E8F47E7F038F50EF77E7DA927575FE6BE4F57E626BDC343FAF2D6246C12C0FF
        0D008B1F5521D4A9D6030000000049454E44AE426082}
      Transparent = True
      TabOrder = 1
      OnClick = bck0002Click
      Appearance.BorderColor = 12631218
      Appearance.BorderColorHot = 10079963
      Appearance.BorderColorDown = 4548219
      Appearance.Color = 14671574
      Appearance.ColorTo = 15000283
      Appearance.ColorChecked = 7915518
      Appearance.ColorCheckedTo = 11918331
      Appearance.ColorDisabled = 15921906
      Appearance.ColorDisabledTo = 15921906
      Appearance.ColorDown = 7778289
      Appearance.ColorDownTo = 4296947
      Appearance.ColorHot = 15465983
      Appearance.ColorHotTo = 11332863
      Appearance.ColorMirror = 14144974
      Appearance.ColorMirrorTo = 15197664
      Appearance.ColorMirrorHot = 5888767
      Appearance.ColorMirrorHotTo = 10807807
      Appearance.ColorMirrorDown = 946929
      Appearance.ColorMirrorDownTo = 5021693
      Appearance.ColorMirrorChecked = 10480637
      Appearance.ColorMirrorCheckedTo = 5682430
      Appearance.ColorMirrorDisabled = 11974326
      Appearance.ColorMirrorDisabledTo = 15921906
      Appearance.GradientHot = ggVertical
      Appearance.GradientMirrorHot = ggVertical
      Appearance.GradientDown = ggVertical
      Appearance.GradientMirrorDown = ggVertical
      Appearance.GradientChecked = ggVertical
    end
  end
  object ds_agendamento: TDataSource
    DataSet = tbagenda
    Left = 319
    Top = 173
  end
  object Timer1: TTimer
    OnTimer = Timer1Timer
    Left = 351
    Top = 237
  end
  object PopupMenu1: TPopupMenu
    Left = 351
    Top = 205
    object C1: TMenuItem
      Caption = 'TALOS 1.0.0.0 - Backup'
      Enabled = False
    end
    object N1: TMenuItem
      Caption = '-'
    end
    object Opo11: TMenuItem
      Caption = 'Abrir Aplica'#231#227'o'
      OnClick = Opo11Click
    end
    object Sair1: TMenuItem
      Caption = 'Encerrar Aplica'#231#227'o'
      OnClick = Sair1Click
    end
  end
  object base: TZConnection
    ControlsCodePage = cCP_UTF16
    Catalog = ''
    TransactIsolationLevel = tiReadCommitted
    Connected = True
    HostName = 'localhost'
    Port = 0
    Database = 'C:\TALOS\Server\BD\BASE.FDB'
    User = 'sysdba'
    Password = 'masterkey'
    Protocol = 'firebird-2.5'
    Left = 351
    Top = 269
  end
  object tbagenda: TZQuery
    Connection = base
    SQL.Strings = (
      'select * from C000132')
    Params = <>
    Left = 351
    Top = 301
    object tbagendaID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object tbagendaDIA: TWideStringField
      FieldName = 'DIA'
    end
    object tbagendaHORARIO: TWideStringField
      FieldName = 'HORARIO'
      Size = 30
    end
    object tbagendaIP: TWideStringField
      FieldName = 'IP'
      Size = 30
    end
    object tbagendaBASEDADOS: TWideStringField
      FieldName = 'BASEDADOS'
      Size = 50
    end
    object tbagendaARQUIVOSALVO: TWideStringField
      FieldName = 'ARQUIVOSALVO'
      Size = 30
    end
    object tbagendaDESCRICAO: TWideStringField
      FieldName = 'DESCRICAO'
      Size = 50
    end
    object tbagendaDESTINO: TWideStringField
      FieldName = 'DESTINO'
      Size = 50
    end
    object tbagendaLOGINFTP: TWideStringField
      FieldName = 'LOGINFTP'
    end
    object tbagendaSENHAFTP: TWideStringField
      FieldName = 'SENHAFTP'
    end
  end
  object qragendado: TZQuery
    Connection = base
    SQL.Strings = (
      'select * from C000132')
    Params = <>
    Left = 383
    Top = 301
    object qragendadoID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object qragendadoDIA: TWideStringField
      FieldName = 'DIA'
    end
    object qragendadoHORARIO: TWideStringField
      FieldName = 'HORARIO'
      Size = 30
    end
    object qragendadoIP: TWideStringField
      FieldName = 'IP'
      Size = 30
    end
    object qragendadoBASEDADOS: TWideStringField
      FieldName = 'BASEDADOS'
      Size = 50
    end
    object qragendadoARQUIVOSALVO: TWideStringField
      FieldName = 'ARQUIVOSALVO'
      Size = 30
    end
    object qragendadoDESCRICAO: TWideStringField
      FieldName = 'DESCRICAO'
      Size = 50
    end
    object qragendadoDESTINO: TWideStringField
      FieldName = 'DESTINO'
      Size = 50
    end
  end
  object OpenDialog1: TOpenDialog
    Filter = 'Banco de Dados(*.fdb)|*.fdb|Todos os arquivos(*.*)|*.*'
    InitialDir = 'C:\TALOS\server\bd'
    Left = 447
    Top = 173
  end
  object PopupMenu2: TPopupMenu
    Left = 383
    Top = 205
    object EfetuarCpia1: TMenuItem
      Caption = 'Backup'
      ShortCut = 115
      OnClick = Button1Click
    end
    object Fechar1: TMenuItem
      Caption = 'Restaurar'
      ShortCut = 116
      OnClick = Button2Click
    end
    object Ini1: TMenuItem
      Caption = 'Incluir'
      ShortCut = 113
      OnClick = Ini1Click
    end
    object Alterar1: TMenuItem
      Caption = 'Alterar'
      ShortCut = 114
      OnClick = Alterar1Click
    end
    object Excluir1: TMenuItem
      Caption = 'Excluir'
      ShortCut = 46
      OnClick = BitBtn5Click
    end
    object Sair2: TMenuItem
      Caption = 'Sair'
      ShortCut = 27
      OnClick = Sair1Click
    end
  end
  object qrmestre: TZQuery
    Connection = base
    Params = <>
    Left = 415
    Top = 301
  end
  object Backup: TIBBackupService
    ServerName = 'localhost'
    Protocol = NamedPipe
    Params.Strings = (
      'User_Name=SYSDBA'
      'Password=masterkey')
    LoginPrompt = False
    TraceFlags = []
    ServerType = 'IBEmbedded'
    BufferSize = 32768
    Verbose = True
    BlockingFactor = 0
    DatabaseName = 'C:\TALOS\Server\BD\BASE.FDB'
    Options = [IgnoreLimbo]
    PreAllocate = 0
    Left = 351
    Top = 173
  end
  object IBRestoreService1: TIBRestoreService
    ServerName = 'LocalHost'
    Protocol = NamedPipe
    Params.Strings = (
      'User_Name=SYSDBA'
      'Password=masterkey')
    LoginPrompt = False
    TraceFlags = []
    ServerType = 'IBEmbedded'
    BufferSize = 32768
    PageSize = 16384
    PageBuffers = 0
    PreAllocate = 0
    ReadOnly = False
    Left = 383
    Top = 173
  end
  object SaveDialog1: TSaveDialog
    Filter = '*.BCK|*.BCK'
    Left = 319
    Top = 237
  end
  object OpenDialog2: TOpenDialog
    Filter = 'Backup do Firebird(*.fbk)|*.fbk|Todos os arquivos(*.*)|*.*'
    InitialDir = 'C:\TALOS\server\bd'
    Left = 415
    Top = 173
  end
  object PopupMenu3: TPopupMenu
    Left = 415
    Top = 205
    object MenuItem5: TMenuItem
      Caption = 'Cancelar'
      ShortCut = 27
      OnClick = BitBtn3Click
    end
    object MenuItem6: TMenuItem
      Caption = 'Gravar'
      ShortCut = 113
      OnClick = BitBtn2Click
    end
  end
  object OpenDialog3: TOpenDialog
    Filter = 'Backup do Firebird(*.fbk)|*.fbk|Todos os arquivos(*.*)|*.*'
    InitialDir = 'C:\TALOS\server\bd'
    Left = 319
    Top = 205
  end
  object SaveDialog2: TSaveDialog
    FileName = 'Base_nova.fdb'
    Left = 447
    Top = 205
  end
  object econexao: TZConnection
    ControlsCodePage = cCP_UTF16
    Catalog = ''
    TransactIsolationLevel = tiReadCommitted
    HostName = 'localhost'
    Port = 0
    Database = 'C:\TALOS\Server\BD\BASE.FDB'
    User = 'sysdba'
    Password = 'masterkey'
    Protocol = 'firebird-2.5'
    Left = 447
    Top = 237
  end
  object Timer2: TTimer
    OnTimer = Timer2Timer
    Left = 383
    Top = 237
  end
  object BASE3: TZConnection
    ControlsCodePage = cCP_UTF16
    Catalog = ''
    TransactIsolationLevel = tiReadCommitted
    HostName = 'localhost'
    Port = 0
    Database = 'C:\TALOS\Server\BD\BASE.FDB'
    User = 'sysdba'
    Password = 'masterkey'
    Protocol = 'firebird-2.5'
    Left = 319
    Top = 269
  end
  object timer3: TTimer
    Interval = 18000
    OnTimer = timer3Timer
    Left = 415
    Top = 237
  end
  object qrapoio2: TZQuery
    Connection = base
    Params = <>
    Left = 319
    Top = 301
  end
  object qrapoio3: TZQuery
    Connection = base
    Params = <>
    Left = 383
    Top = 269
  end
  object qremitente: TZQuery
    Connection = base
    SQL.Strings = (
      'select * from c999999')
    Params = <>
    Left = 447
    Top = 269
    object qremitenteCODIGO: TWideStringField
      FieldName = 'CODIGO'
      Required = True
      Size = 6
    end
    object qremitenteNOME: TWideStringField
      FieldName = 'NOME'
      Size = 80
    end
    object qremitenteFANTASIA: TWideStringField
      FieldName = 'FANTASIA'
      Size = 80
    end
    object qremitenteENDERECO: TWideStringField
      FieldName = 'ENDERECO'
      Size = 80
    end
    object qremitenteBAIRRO: TWideStringField
      FieldName = 'BAIRRO'
      Size = 30
    end
    object qremitenteCIDADE: TWideStringField
      FieldName = 'CIDADE'
      Size = 40
    end
    object qremitenteUF: TWideStringField
      FieldName = 'UF'
      Size = 2
    end
    object qremitenteCEP: TWideStringField
      FieldName = 'CEP'
      Size = 10
    end
    object qremitenteTELEFONE: TWideStringField
      FieldName = 'TELEFONE'
    end
    object qremitenteCNPJ: TWideStringField
      FieldName = 'CNPJ'
      Size = 25
    end
    object qremitenteIE: TWideStringField
      FieldName = 'IE'
    end
    object qremitenteEMAIL: TWideStringField
      FieldName = 'EMAIL'
      Size = 80
    end
    object qremitenteHOMEPAGE: TWideStringField
      FieldName = 'HOMEPAGE'
      Size = 80
    end
    object qremitenteRESPONSAVEL: TWideStringField
      FieldName = 'RESPONSAVEL'
      Size = 50
    end
    object qremitenteCELULAR: TWideStringField
      FieldName = 'CELULAR'
    end
    object qremitenteLOGO: TBlobField
      FieldName = 'LOGO'
    end
    object qremitenteFAX: TWideStringField
      FieldName = 'FAX'
    end
    object qremitenteNUMERO: TWideStringField
      FieldName = 'NUMERO'
      Size = 10
    end
    object qremitenteCOMPLEMENTO: TWideStringField
      FieldName = 'COMPLEMENTO'
      Size = 30
    end
    object qremitenteCONTRIBUINTE_IPI: TWideStringField
      FieldName = 'CONTRIBUINTE_IPI'
      Size = 4
    end
    object qremitenteSUBSTITUTO_TRIBUTARIO: TWideStringField
      FieldName = 'SUBSTITUTO_TRIBUTARIO'
      Size = 4
    end
    object qremitenteCOMENTARIOS: TWideStringField
      FieldName = 'COMENTARIOS'
      Size = 50
    end
    object qremitenteDATAHORA_INICIAL: TDateField
      FieldName = 'DATAHORA_INICIAL'
    end
    object qremitenteDATAHORA_FINAL: TDateField
      FieldName = 'DATAHORA_FINAL'
    end
    object qremitenteDATA_INVENTARIO: TDateField
      FieldName = 'DATA_INVENTARIO'
    end
    object qremitenteESTOQUE: TFloatField
      FieldName = 'ESTOQUE'
    end
    object qremitenteVALOR: TFloatField
      FieldName = 'VALOR'
    end
    object qremitenteCONHECIMENTO: TIntegerField
      FieldName = 'CONHECIMENTO'
    end
    object qremitenteCPF: TWideStringField
      FieldName = 'CPF'
    end
    object qremitenteRG: TWideStringField
      FieldName = 'RG'
    end
    object qremitenteDIA_VENCIMENTO_CHAVE: TWideStringField
      FieldName = 'DIA_VENCIMENTO_CHAVE'
      Size = 2
    end
    object qremitenteINSC_MUNICIPAL: TWideStringField
      FieldName = 'INSC_MUNICIPAL'
    end
    object qremitenteDATA_ABERTURA: TDateField
      FieldName = 'DATA_ABERTURA'
    end
    object qremitenteCOD_MUNICIPIO_IBGE: TWideStringField
      FieldName = 'COD_MUNICIPIO_IBGE'
      Size = 10
    end
    object qremitenteIBGE: TWideStringField
      FieldName = 'IBGE'
      Size = 10
    end
    object qremitenteEMAIL_FINANCEIRO: TWideStringField
      FieldName = 'EMAIL_FINANCEIRO'
      Size = 200
    end
  end
  object qrconfig: TZQuery
    Connection = base
    SQL.Strings = (
      'select * from c000001')
    Params = <>
    Left = 415
    Top = 269
    object qrconfigCODIGO: TWideStringField
      FieldName = 'CODIGO'
      Required = True
      Size = 6
    end
    object qrconfigULTIMO_BACKUP: TDateField
      FieldName = 'ULTIMO_BACKUP'
    end
    object qrconfigPAPEL_PAREDE: TWideStringField
      FieldName = 'PAPEL_PAREDE'
      Size = 150
    end
    object qrconfigAVISO_CONTAS_PAGAR: TIntegerField
      FieldName = 'AVISO_CONTAS_PAGAR'
    end
    object qrconfigAVISO_CHEQUE: TIntegerField
      FieldName = 'AVISO_CHEQUE'
    end
    object qrconfigESTOQUE_NEGATIVO: TIntegerField
      FieldName = 'ESTOQUE_NEGATIVO'
    end
    object qrconfigCASAS_DECIMAIS_QTDE: TIntegerField
      FieldName = 'CASAS_DECIMAIS_QTDE'
    end
    object qrconfigCASAS_DECIMAIS_VALOR: TIntegerField
      FieldName = 'CASAS_DECIMAIS_VALOR'
    end
    object qrconfigVENDA_CADASTRO_CHEQUE: TIntegerField
      FieldName = 'VENDA_CADASTRO_CHEQUE'
    end
    object qrconfigVENDA_CADASTRO_CARTAO: TIntegerField
      FieldName = 'VENDA_CADASTRO_CARTAO'
    end
    object qrconfigVENDA_TIPONOTA: TIntegerField
      FieldName = 'VENDA_TIPONOTA'
    end
    object qrconfigVENDA_QTDE_VIAS_NOTA: TIntegerField
      FieldName = 'VENDA_QTDE_VIAS_NOTA'
    end
    object qrconfigVENDA_PORTA_IMPRESSORA: TWideStringField
      FieldName = 'VENDA_PORTA_IMPRESSORA'
      Size = 100
    end
    object qrconfigVENDA_TIPO_IMPRESSORA: TIntegerField
      FieldName = 'VENDA_TIPO_IMPRESSORA'
    end
    object qrconfigVENDA_LIMITE_CLIENTE: TIntegerField
      FieldName = 'VENDA_LIMITE_CLIENTE'
    end
    object qrconfigOS_TIPONOTA: TIntegerField
      FieldName = 'OS_TIPONOTA'
    end
    object qrconfigOS_QTDE_VIAS_NOTA: TIntegerField
      FieldName = 'OS_QTDE_VIAS_NOTA'
    end
    object qrconfigOS_PORTA_IMPRESSORA: TWideStringField
      FieldName = 'OS_PORTA_IMPRESSORA'
      Size = 100
    end
    object qrconfigOS_TIPO_IMPRESSORA: TIntegerField
      FieldName = 'OS_TIPO_IMPRESSORA'
    end
    object qrconfigORCAMENTO_TIPONOTA: TIntegerField
      FieldName = 'ORCAMENTO_TIPONOTA'
    end
    object qrconfigORCAMENTO_QTDE_VIAS_NOTA: TIntegerField
      FieldName = 'ORCAMENTO_QTDE_VIAS_NOTA'
    end
    object qrconfigORCAMENTO_PORTA_IMPRESSORA: TWideStringField
      FieldName = 'ORCAMENTO_PORTA_IMPRESSORA'
      Size = 100
    end
    object qrconfigORCAMENTO_TIPO_IMPRESSORA: TIntegerField
      FieldName = 'ORCAMENTO_TIPO_IMPRESSORA'
    end
    object qrconfigCONTASRECEBER_CARENCIA: TIntegerField
      FieldName = 'CONTASRECEBER_CARENCIA'
    end
    object qrconfigCONTASRECEBER_TAXAJUROS: TFloatField
      FieldName = 'CONTASRECEBER_TAXAJUROS'
    end
    object qrconfigCONTASRECEBER_MULTA: TFloatField
      FieldName = 'CONTASRECEBER_MULTA'
    end
    object qrconfigCONTASRECEBER_DESCONTO_PERCENT: TFloatField
      FieldName = 'CONTASRECEBER_DESCONTO_PERCENT'
    end
    object qrconfigCONTASRECEBER_DESCONTO_PERMITIR: TIntegerField
      FieldName = 'CONTASRECEBER_DESCONTO_PERMITIR'
    end
    object qrconfigECF_MODELO: TWideStringField
      FieldName = 'ECF_MODELO'
      Size = 30
    end
    object qrconfigECF_PORTA: TWideStringField
      FieldName = 'ECF_PORTA'
      Size = 50
    end
    object qrconfigECF_TEF: TIntegerField
      FieldName = 'ECF_TEF'
    end
    object qrconfigECF_TIPO: TWideStringField
      FieldName = 'ECF_TIPO'
    end
    object qrconfigBALANCAPDV_MODELO: TWideStringField
      FieldName = 'BALANCAPDV_MODELO'
      Size = 50
    end
    object qrconfigBALANCAPDV_PORTA: TWideStringField
      FieldName = 'BALANCAPDV_PORTA'
      Size = 10
    end
    object qrconfigIMPRESSORACHEQUE_MODELO: TWideStringField
      FieldName = 'IMPRESSORACHEQUE_MODELO'
      Size = 50
    end
    object qrconfigIMPRESSORACHEQUE_PORTA: TWideStringField
      FieldName = 'IMPRESSORACHEQUE_PORTA'
      Size = 10
    end
    object qrconfigBALANCA_MODELO: TWideStringField
      FieldName = 'BALANCA_MODELO'
      Size = 50
    end
    object qrconfigIMPRESSORABARRAS_MODELO: TWideStringField
      FieldName = 'IMPRESSORABARRAS_MODELO'
      Size = 50
    end
    object qrconfigBALANCA_CAMINHO: TWideStringField
      FieldName = 'BALANCA_CAMINHO'
      Size = 100
    end
    object qrconfigCADASTRO_PRODUTO: TWideStringField
      FieldName = 'CADASTRO_PRODUTO'
    end
    object qrconfigRAMO_ATIVIDADE: TIntegerField
      FieldName = 'RAMO_ATIVIDADE'
    end
    object qrconfigEXTRATO_TIPONOTA: TIntegerField
      FieldName = 'EXTRATO_TIPONOTA'
    end
    object qrconfigBOBINA_SUBIRPAPEL: TIntegerField
      FieldName = 'BOBINA_SUBIRPAPEL'
    end
    object qrconfigCLASSIFICACAO: TWideStringField
      FieldName = 'CLASSIFICACAO'
      Size = 10
    end
    object qrconfigBOLETO_FORMAPGTO: TWideStringField
      FieldName = 'BOLETO_FORMAPGTO'
    end
    object qrconfigPLANO_VENDA_AV: TWideStringField
      FieldName = 'PLANO_VENDA_AV'
      Size = 30
    end
    object qrconfigPLANO_VENDA_AP: TWideStringField
      FieldName = 'PLANO_VENDA_AP'
      Size = 30
    end
    object qrconfigPLANO_OS_AV: TWideStringField
      FieldName = 'PLANO_OS_AV'
      Size = 30
    end
    object qrconfigPLANO_OS_AP: TWideStringField
      FieldName = 'PLANO_OS_AP'
      Size = 30
    end
    object qrconfigPLANO_OUTRAS_ENTRADAS: TWideStringField
      FieldName = 'PLANO_OUTRAS_ENTRADAS'
      Size = 30
    end
    object qrconfigPLANO_OUTRAS_SAIDAS: TWideStringField
      FieldName = 'PLANO_OUTRAS_SAIDAS'
      Size = 30
    end
    object qrconfigPLANO_RECEBTO_CREDIARIO: TWideStringField
      FieldName = 'PLANO_RECEBTO_CREDIARIO'
      Size = 30
    end
    object qrconfigNF_ITENS_PAGINA: TIntegerField
      FieldName = 'NF_ITENS_PAGINA'
    end
    object qrconfigNF_ITENS_TRANSPORTE: TIntegerField
      FieldName = 'NF_ITENS_TRANSPORTE'
    end
    object qrconfigNF_LINHA_TRANSPORTE: TIntegerField
      FieldName = 'NF_LINHA_TRANSPORTE'
    end
    object qrconfigNF_SALTO_PAGINA: TIntegerField
      FieldName = 'NF_SALTO_PAGINA'
    end
    object qrconfigNF_TIPO: TIntegerField
      FieldName = 'NF_TIPO'
    end
    object qrconfigNF_IMPRESSORA: TWideStringField
      FieldName = 'NF_IMPRESSORA'
      Size = 100
    end
    object qrconfigVENDA_FECHAMENTO_CAIXA: TIntegerField
      FieldName = 'VENDA_FECHAMENTO_CAIXA'
    end
    object qrconfigDESCONTO_AVISTA: TFloatField
      FieldName = 'DESCONTO_AVISTA'
    end
    object qrconfigDESCONTO_PRODUTO: TFloatField
      FieldName = 'DESCONTO_PRODUTO'
    end
    object qrconfigDESCONTO_TOTALNOTA: TFloatField
      FieldName = 'DESCONTO_TOTALNOTA'
    end
    object qrconfigTIPO_VENDA: TWideStringField
      FieldName = 'TIPO_VENDA'
    end
    object qrconfigVENDA_ALTERAR_PRECO: TIntegerField
      FieldName = 'VENDA_ALTERAR_PRECO'
    end
    object qrconfigNF_LINHA_SUBTOTAL: TIntegerField
      FieldName = 'NF_LINHA_SUBTOTAL'
    end
    object qrconfigNF_LINHA_TOTAL: TIntegerField
      FieldName = 'NF_LINHA_TOTAL'
    end
    object qrconfigECF_CAIXA: TWideStringField
      FieldName = 'ECF_CAIXA'
      Size = 3
    end
    object qrconfigECF_SERIAL: TWideStringField
      FieldName = 'ECF_SERIAL'
      Size = 30
    end
    object qrconfigFARMACIA_ENVIO: TWideStringField
      FieldName = 'FARMACIA_ENVIO'
      Size = 60
    end
    object qrconfigFARMACIA_RESPOSTA: TWideStringField
      FieldName = 'FARMACIA_RESPOSTA'
      Size = 60
    end
    object qrconfigFARMACIA_ENVIO_RESPOSTA: TWideStringField
      FieldName = 'FARMACIA_ENVIO_RESPOSTA'
      Size = 60
    end
    object qrconfigFARMACIA_LOGIN: TWideStringField
      FieldName = 'FARMACIA_LOGIN'
    end
    object qrconfigFARMACIA_SENHA: TWideStringField
      FieldName = 'FARMACIA_SENHA'
    end
    object qrconfigULTIMA_CARGA: TDateField
      FieldName = 'ULTIMA_CARGA'
    end
    object qrconfigIMPRIME_CUPOM_VINCULADO: TIntegerField
      FieldName = 'IMPRIME_CUPOM_VINCULADO'
    end
    object qrconfigIMPRIME_PRODUTOS_VINCULADOS: TIntegerField
      FieldName = 'IMPRIME_PRODUTOS_VINCULADOS'
    end
    object qrconfigIMPRIME_COMPROVANTE_DEBITO: TIntegerField
      FieldName = 'IMPRIME_COMPROVANTE_DEBITO'
    end
    object qrconfigIMPRIME_DUPLICATA: TIntegerField
      FieldName = 'IMPRIME_DUPLICATA'
    end
    object qrconfigCONTASRECEBER_BLOQUEIO: TIntegerField
      FieldName = 'CONTASRECEBER_BLOQUEIO'
    end
    object qrconfigRECIBO_TIPONOTA: TIntegerField
      FieldName = 'RECIBO_TIPONOTA'
    end
    object qrconfigNR_CONTROLE_ECF: TWideStringField
      FieldName = 'NR_CONTROLE_ECF'
      Size = 6
    end
    object qrconfigBALANCA_PROGRAMA: TWideStringField
      FieldName = 'BALANCA_PROGRAMA'
      Size = 150
    end
    object qrconfigTIPO_DUPLICATA: TWideStringField
      FieldName = 'TIPO_DUPLICATA'
    end
    object qrconfigCONCILIA_VENDA: TIntegerField
      FieldName = 'CONCILIA_VENDA'
    end
    object qrconfigCONTROLA_ENTREGA: TIntegerField
      FieldName = 'CONTROLA_ENTREGA'
    end
    object qrconfigENTREGA_IMPRESSAO: TIntegerField
      FieldName = 'ENTREGA_IMPRESSAO'
    end
    object qrconfigENTREGA_VIAS: TIntegerField
      FieldName = 'ENTREGA_VIAS'
    end
    object qrconfigCONDICIONAL: TIntegerField
      FieldName = 'CONDICIONAL'
    end
    object qrconfigCONDICIONAL_PRAZO: TIntegerField
      FieldName = 'CONDICIONAL_PRAZO'
    end
    object qrconfigVS_ATIVAR: TIntegerField
      FieldName = 'VS_ATIVAR'
    end
    object qrconfigVS_DINHEIRO: TIntegerField
      FieldName = 'VS_DINHEIRO'
    end
    object qrconfigVS_CHEQUEAV: TIntegerField
      FieldName = 'VS_CHEQUEAV'
    end
    object qrconfigVS_CHEQUEAP: TIntegerField
      FieldName = 'VS_CHEQUEAP'
    end
    object qrconfigVS_CARTRAOCRED: TIntegerField
      FieldName = 'VS_CARTRAOCRED'
    end
    object qrconfigVS_CARTAODEB: TIntegerField
      FieldName = 'VS_CARTAODEB'
    end
    object qrconfigVS_CREDIARIO: TIntegerField
      FieldName = 'VS_CREDIARIO'
    end
    object qrconfigVS_CLIENTE_VISTA: TWideStringField
      FieldName = 'VS_CLIENTE_VISTA'
      Size = 6
    end
    object qrconfigVS_CAIXA: TIntegerField
      FieldName = 'VS_CAIXA'
    end
    object qrconfigVS_RELATORIO: TIntegerField
      FieldName = 'VS_RELATORIO'
    end
    object qrconfigVS_VIAS: TIntegerField
      FieldName = 'VS_VIAS'
    end
    object qrconfigVS_VISUALIZAR: TIntegerField
      FieldName = 'VS_VISUALIZAR'
    end
    object qrconfigCONDICIONAL_MODELO: TIntegerField
      FieldName = 'CONDICIONAL_MODELO'
    end
    object qrconfigALTERAR_UNITARIO: TIntegerField
      FieldName = 'ALTERAR_UNITARIO'
    end
    object qrconfigCONTASRECEBER_VALORJUROS: TFloatField
      FieldName = 'CONTASRECEBER_VALORJUROS'
    end
    object qrconfigCONTASRECEBER_JUROS_DINHEIRO: TIntegerField
      FieldName = 'CONTASRECEBER_JUROS_DINHEIRO'
    end
    object qrconfigPLANO_DUPLICATA_NFE: TWideStringField
      FieldName = 'PLANO_DUPLICATA_NFE'
      Size = 30
    end
    object qrconfigVAREJO_ATACADO: TIntegerField
      FieldName = 'VAREJO_ATACADO'
    end
    object qrconfigVISUALIZA_MENSAGEM: TIntegerField
      FieldName = 'VISUALIZA_MENSAGEM'
    end
    object qrconfigSERIAL_REPETIDO: TIntegerField
      FieldName = 'SERIAL_REPETIDO'
    end
    object qrconfigOCULTAR_CUSTO: TIntegerField
      FieldName = 'OCULTAR_CUSTO'
    end
    object qrconfigOCULTAR_PRODUTO_INATIVO: TIntegerField
      FieldName = 'OCULTAR_PRODUTO_INATIVO'
    end
    object qrconfigOCULTAR_CLIENTE_INATIVO: TIntegerField
      FieldName = 'OCULTAR_CLIENTE_INATIVO'
    end
    object qrconfigOBS_FARMA: TIntegerField
      FieldName = 'OBS_FARMA'
    end
    object qrconfigOBS_FARMA_TEXTO: TWideStringField
      FieldName = 'OBS_FARMA_TEXTO'
      Size = 45
    end
    object qrconfigCUSTO_MAIOR_VENDA: TIntegerField
      FieldName = 'CUSTO_MAIOR_VENDA'
    end
    object qrconfigVENDER_ABAIXO_CUSTO: TIntegerField
      FieldName = 'VENDER_ABAIXO_CUSTO'
    end
    object qrconfigNF_GERAR_RECEBER: TIntegerField
      FieldName = 'NF_GERAR_RECEBER'
    end
    object qrconfigNF_CODIGOBARRA_NFE: TIntegerField
      FieldName = 'NF_CODIGOBARRA_NFE'
    end
    object qrconfigNF_GRADE_NFE: TIntegerField
      FieldName = 'NF_GRADE_NFE'
    end
    object qrconfigNF_SERIAL_NFE: TIntegerField
      FieldName = 'NF_SERIAL_NFE'
    end
    object qrconfigNF_REFERENCIA_NFE: TIntegerField
      FieldName = 'NF_REFERENCIA_NFE'
    end
    object qrconfigNF_GERAR_DUPLICATA: TIntegerField
      FieldName = 'NF_GERAR_DUPLICATA'
    end
    object qrconfigVALE_CAIXA: TIntegerField
      FieldName = 'VALE_CAIXA'
    end
    object qrconfigCONTAS_RECEBER_BLOQUEIO: TIntegerField
      FieldName = 'CONTAS_RECEBER_BLOQUEIO'
    end
    object qrconfigCUPOM_IMPRIMIR_CODIGO: TIntegerField
      FieldName = 'CUPOM_IMPRIMIR_CODIGO'
    end
    object qrconfigCLIENTE_PEDE_CPF: TIntegerField
      FieldName = 'CLIENTE_PEDE_CPF'
    end
    object qrconfigVERIFICA_COD_BARRA: TIntegerField
      FieldName = 'VERIFICA_COD_BARRA'
    end
    object qrconfigVERIFICA_NOME_PRODUTO: TIntegerField
      FieldName = 'VERIFICA_NOME_PRODUTO'
    end
    object qrconfigVS_FRETE: TIntegerField
      FieldName = 'VS_FRETE'
    end
    object qrconfigINVENTARIO_AUTOMATICO: TIntegerField
      FieldName = 'INVENTARIO_AUTOMATICO'
    end
    object qrconfigBAIXAR_ESTOQUE_NOTA_SAIDA: TIntegerField
      FieldName = 'BAIXAR_ESTOQUE_NOTA_SAIDA'
    end
    object qrconfigETIQUETA_07: TIntegerField
      FieldName = 'ETIQUETA_07'
    end
    object qrconfigETIQUETA_07_1: TIntegerField
      FieldName = 'ETIQUETA_07_1'
    end
    object qrconfigETIQUETA_07_2: TIntegerField
      FieldName = 'ETIQUETA_07_2'
    end
    object qrconfigEMAIL_SERVIDOR_SMTP: TWideStringField
      FieldName = 'EMAIL_SERVIDOR_SMTP'
      Size = 100
    end
    object qrconfigEMAIL_PORTA: TWideStringField
      FieldName = 'EMAIL_PORTA'
      Size = 10
    end
    object qrconfigEMAIL_USUARIO: TWideStringField
      FieldName = 'EMAIL_USUARIO'
      Size = 100
    end
    object qrconfigEMAIL_SENHA: TWideStringField
      FieldName = 'EMAIL_SENHA'
    end
    object qrconfigEMAIL_ASSUNTO: TWideStringField
      FieldName = 'EMAIL_ASSUNTO'
      Size = 100
    end
    object qrconfigEMAIL_EXIGE_CONEXAO: TIntegerField
      FieldName = 'EMAIL_EXIGE_CONEXAO'
    end
    object qrconfigEMAIL_MENSAGEM: TBlobField
      FieldName = 'EMAIL_MENSAGEM'
    end
    object qrconfigINESTRA: TIntegerField
      FieldName = 'INESTRA'
    end
    object qrconfigFARMACIA_INVENTARIO_FECHA: TIntegerField
      FieldName = 'FARMACIA_INVENTARIO_FECHA'
    end
    object qrconfigFARMACIA_ENVIO_NOVARTIS: TWideStringField
      FieldName = 'FARMACIA_ENVIO_NOVARTIS'
      Size = 60
    end
    object qrconfigFARMACIA_RESPOSTA_NOVARTIS: TWideStringField
      FieldName = 'FARMACIA_RESPOSTA_NOVARTIS'
      Size = 60
    end
    object qrconfigFARMACIA_INVENTARIO_CONFIRMA: TWideStringField
      FieldName = 'FARMACIA_INVENTARIO_CONFIRMA'
      Size = 1
    end
    object qrconfigFARMACIA_INVENTARIO_DATA: TDateField
      FieldName = 'FARMACIA_INVENTARIO_DATA'
    end
    object qrconfigCALCULA_ISENTAS_OUTRAS: TIntegerField
      FieldName = 'CALCULA_ISENTAS_OUTRAS'
    end
    object qrconfigUSA_RENTABILIDADE: TIntegerField
      FieldName = 'USA_RENTABILIDADE'
    end
    object qrconfigUSA_PRODUTOR_RURAL: TIntegerField
      FieldName = 'USA_PRODUTOR_RURAL'
    end
    object qrconfigIND_CLIE_ENTRADA: TWideStringField
      FieldName = 'IND_CLIE_ENTRADA'
      Size = 6
    end
    object qrconfigIND_CFOP_ENTRADA: TWideStringField
      FieldName = 'IND_CFOP_ENTRADA'
      Size = 5
    end
    object qrconfigIND_CLIE_SAIDA: TWideStringField
      FieldName = 'IND_CLIE_SAIDA'
      Size = 6
    end
    object qrconfigIND_CFOP_SAIDA: TWideStringField
      FieldName = 'IND_CFOP_SAIDA'
      Size = 5
    end
    object qrconfigIND_CLIE_PERDA: TWideStringField
      FieldName = 'IND_CLIE_PERDA'
      Size = 6
    end
    object qrconfigIND_CFOP_PERDA: TWideStringField
      FieldName = 'IND_CFOP_PERDA'
      Size = 5
    end
    object qrconfigIND_MOSTRA_COMPOSICAO: TIntegerField
      FieldName = 'IND_MOSTRA_COMPOSICAO'
    end
    object qrconfigCHECA_SERIAL_NOTA_SAIDA: TIntegerField
      FieldName = 'CHECA_SERIAL_NOTA_SAIDA'
    end
    object qrconfigCOR_COMERCIO: TWideStringField
      FieldName = 'COR_COMERCIO'
      Size = 10
    end
    object qrconfigLOGO_COMERCIO: TWideStringField
      FieldName = 'LOGO_COMERCIO'
      Size = 100
    end
    object qrconfigCOR_FARMACIA: TWideStringField
      FieldName = 'COR_FARMACIA'
      Size = 10
    end
    object qrconfigLOGO_FARMACIA: TWideStringField
      FieldName = 'LOGO_FARMACIA'
      Size = 100
    end
    object qrconfigCOR_PECAS: TWideStringField
      FieldName = 'COR_PECAS'
      Size = 10
    end
    object qrconfigLOGO_PECAS: TWideStringField
      FieldName = 'LOGO_PECAS'
      Size = 100
    end
    object qrconfigCOR_MERCADO: TWideStringField
      FieldName = 'COR_MERCADO'
      Size = 10
    end
    object qrconfigLOGO_MERCADO: TWideStringField
      FieldName = 'LOGO_MERCADO'
      Size = 100
    end
    object qrconfigCOR_POSTO: TWideStringField
      FieldName = 'COR_POSTO'
      Size = 10
    end
    object qrconfigLOGO_POSTO: TWideStringField
      FieldName = 'LOGO_POSTO'
      Size = 100
    end
    object qrconfigIND_CLIE_ENTRADA_DESC: TWideStringField
      FieldName = 'IND_CLIE_ENTRADA_DESC'
      Size = 30
    end
    object qrconfigIND_CFOP_ENTRADA_DESC: TWideStringField
      FieldName = 'IND_CFOP_ENTRADA_DESC'
      Size = 30
    end
    object qrconfigIND_CLIE_SAIDA_DESC: TWideStringField
      FieldName = 'IND_CLIE_SAIDA_DESC'
      Size = 30
    end
    object qrconfigIND_CFOP_SAIDA_DESC: TWideStringField
      FieldName = 'IND_CFOP_SAIDA_DESC'
      Size = 30
    end
    object qrconfigIND_CLIE_PERDA_DESC: TWideStringField
      FieldName = 'IND_CLIE_PERDA_DESC'
      Size = 30
    end
    object qrconfigIND_CFOP_PERDA_DESC: TWideStringField
      FieldName = 'IND_CFOP_PERDA_DESC'
      Size = 30
    end
    object qrconfigIND_CFOP_VENDA_DENTRO: TWideStringField
      FieldName = 'IND_CFOP_VENDA_DENTRO'
      Size = 6
    end
    object qrconfigIND_CFOP_VENDA_FORA: TWideStringField
      FieldName = 'IND_CFOP_VENDA_FORA'
      Size = 6
    end
    object qrconfigIND_CFOP_DEVOLUCAO_DENTRO: TWideStringField
      FieldName = 'IND_CFOP_DEVOLUCAO_DENTRO'
      Size = 6
    end
    object qrconfigIND_CFOP_DEVOLUCAO_FORA: TWideStringField
      FieldName = 'IND_CFOP_DEVOLUCAO_FORA'
      Size = 6
    end
    object qrconfigIND_CFOP_SERVICO_DENTRO: TWideStringField
      FieldName = 'IND_CFOP_SERVICO_DENTRO'
      Size = 6
    end
    object qrconfigIND_CFOP_SERVICO_FORA: TWideStringField
      FieldName = 'IND_CFOP_SERVICO_FORA'
      Size = 6
    end
    object qrconfigCFOP_VENDA_DENTRO_DESC: TWideStringField
      FieldName = 'CFOP_VENDA_DENTRO_DESC'
      Size = 30
    end
    object qrconfigCFOP_VENDA_FORA_DESC: TWideStringField
      FieldName = 'CFOP_VENDA_FORA_DESC'
      Size = 30
    end
    object qrconfigCFOP_DEVOLUCAO_DENTRO_DESC: TWideStringField
      FieldName = 'CFOP_DEVOLUCAO_DENTRO_DESC'
      Size = 30
    end
    object qrconfigCFOP_DEVOLUCAO_FORA_DESC: TWideStringField
      FieldName = 'CFOP_DEVOLUCAO_FORA_DESC'
      Size = 30
    end
    object qrconfigCFOP_SERVICO_DENTRO_DESC: TWideStringField
      FieldName = 'CFOP_SERVICO_DENTRO_DESC'
      Size = 30
    end
    object qrconfigCFOP_SERVICO_FORA_DESC: TWideStringField
      FieldName = 'CFOP_SERVICO_FORA_DESC'
      Size = 30
    end
    object qrconfigTIPO_NF: TIntegerField
      FieldName = 'TIPO_NF'
    end
    object qrconfigCOR_ESTOQUE_POSITIVO: TWideStringField
      FieldName = 'COR_ESTOQUE_POSITIVO'
      Size = 10
    end
    object qrconfigCOR_ESTOQUE_NEGATIVO: TWideStringField
      FieldName = 'COR_ESTOQUE_NEGATIVO'
      Size = 10
    end
    object qrconfigCOR_ESTOQUE_ZERADO: TWideStringField
      FieldName = 'COR_ESTOQUE_ZERADO'
      Size = 10
    end
    object qrconfigTIPO_PESQUISA: TIntegerField
      FieldName = 'TIPO_PESQUISA'
    end
    object qrconfigECF_CONCOMITANTE: TIntegerField
      FieldName = 'ECF_CONCOMITANTE'
    end
    object qrconfigPLANO_PAGTO_FORN: TWideStringField
      FieldName = 'PLANO_PAGTO_FORN'
      Size = 30
    end
    object qrconfigHAB_PREVENDA: TIntegerField
      FieldName = 'HAB_PREVENDA'
    end
    object qrconfigCODCLIENTEAV: TWideStringField
      FieldName = 'CODCLIENTEAV'
      Size = 6
    end
    object qrconfigCODCLIENTEMODELO: TWideStringField
      FieldName = 'CODCLIENTEMODELO'
      Size = 6
    end
    object qrconfigCODPRODUTOMODELO: TWideStringField
      FieldName = 'CODPRODUTOMODELO'
      Size = 6
    end
    object qrconfigCODFORNECEDORMODELO: TWideStringField
      FieldName = 'CODFORNECEDORMODELO'
      Size = 6
    end
    object qrconfigUSA_CAIXA_DIARIO: TIntegerField
      FieldName = 'USA_CAIXA_DIARIO'
    end
    object qrconfigIMPRIMI_ORCAMENTO_AUTO: TIntegerField
      FieldName = 'IMPRIMI_ORCAMENTO_AUTO'
    end
    object qrconfigFIXA_FORMA_PGTO_CLIENTE: TIntegerField
      FieldName = 'FIXA_FORMA_PGTO_CLIENTE'
    end
    object qrconfigVERSAOBD: TWideStringField
      FieldName = 'VERSAOBD'
      Size = 8
    end
    object qrconfigUSA_CAIXA_PADRAO_USUARIO: TIntegerField
      FieldName = 'USA_CAIXA_PADRAO_USUARIO'
    end
    object qrconfigTEXTO_PADRAO_VENDA: TWideStringField
      FieldName = 'TEXTO_PADRAO_VENDA'
      Size = 200
    end
    object qrconfigTEXTO_PADRAO_DEVOLUCAO: TWideStringField
      FieldName = 'TEXTO_PADRAO_DEVOLUCAO'
      Size = 200
    end
    object qrconfigTEXTO_PADRAO_GARANTIA: TWideStringField
      FieldName = 'TEXTO_PADRAO_GARANTIA'
      Size = 200
    end
    object qrconfigAVISA_ESTOQUE_MINIMO: TIntegerField
      FieldName = 'AVISA_ESTOQUE_MINIMO'
    end
  end
  object IdFTP1: TIdFTP
    IPVersion = Id_IPv4
    ConnectTimeout = 0
    NATKeepAlive.UseKeepAlive = False
    NATKeepAlive.IdleTimeMS = 0
    NATKeepAlive.IntervalMS = 0
    ProxySettings.ProxyType = fpcmNone
    ProxySettings.Port = 0
    Left = 448
    Top = 302
  end
end
