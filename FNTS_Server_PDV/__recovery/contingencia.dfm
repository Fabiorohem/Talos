object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Talos - Envio de Conting'#234'ncia'
  ClientHeight = 574
  ClientWidth = 961
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object grid: TJvDBGrid
    Left = 0
    Top = 96
    Width = 959
    Height = 369
    DataSource = ds_nfce
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleHotTrack]
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    AutoAppend = False
    ClearSelection = False
    SelectColumnsDialogStrings.Caption = 'Select columns'
    SelectColumnsDialogStrings.OK = '&OK'
    SelectColumnsDialogStrings.NoSelectionWarning = 'At least one column must be visible!'
    CanDelete = False
    EditControls = <>
    RowsHeight = 17
    TitleRowHeight = 17
    Columns = <
      item
        Expanded = False
        FieldName = 'DATA'
        ReadOnly = True
        Title.Caption = 'Data'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NUMERO'
        ReadOnly = True
        Title.Caption = 'N'#250'mero'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PDV'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'HORA'
        Title.Caption = 'Hora'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CLIENTE'
        ReadOnly = True
        Title.Caption = 'Cliente'
        Width = 250
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DES_SIT'
        Title.Caption = 'Situa'#231#227'o'
        Width = 68
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TOTAL'
        ReadOnly = True
        Title.Caption = 'Total'
        Width = 74
        Visible = True
      end
      item
        Expanded = False
        Title.Caption = 'Enviar?'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CHAVE'
        ReadOnly = True
        Title.Caption = 'Chave'
        Width = 277
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CONTINGENCIA'
        Title.Caption = 'Conting'#234'ncia'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ENVIADOCONTINGENCIA'
        Title.Caption = 'Resolvido'
        Visible = True
      end>
  end
  object PageView1: TPageView
    Left = 0
    Top = 0
    Width = 961
    Height = 574
    ActivePage = PageSheet1
    ActivePageIndex = 0
    AdaptiveColors = True
    Align = alClient
    BackgroundColor = clSilver
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
      Width = 961
      Height = 574
      Caption = 'Principal'
      Color = 12223546
      DisplayMode = tdGlyph
      ImageIndex = 0
      Margin = 0
      PageIndex = 0
      ParentColor = False
      TabColor = clWindow
      TabWidth = 0
      TransparentColor = clNone
      object Label1: TLabel
        Left = 19
        Top = 39
        Width = 112
        Height = 13
        Caption = 'Datas da Conting'#234'ncia:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label4: TLabel
        Left = 229
        Top = 39
        Width = 16
        Height = 13
        Caption = 'at'#233
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label5: TLabel
        Left = 19
        Top = 65
        Width = 116
        Height = 13
        Caption = 'Conting'#234'ncia Resolvida?'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label6: TLabel
        Left = 19
        Top = 96
        Width = 88
        Height = 13
        Caption = 'Pesquisa por PDV?'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label7: TLabel
        Left = 539
        Top = 20
        Width = 418
        Height = 13
        Caption = 
          '*Os PDV'#39's mostrados na tela s'#227'o os que est'#227'o com a comunica'#231#227'o f' +
          'uncionando (verde)'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label8: TLabel
        Left = 539
        Top = 39
        Width = 391
        Height = 13
        Caption = 
          '*O envio '#233' feito utilizando as configura'#231#245'es de PDV que est'#227'o ne' +
          'ste computador.'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Panel3: TPanel
        Left = 4
        Top = 4
        Width = 397
        Height = 29
        BevelOuter = bvNone
        Color = 12223546
        Enabled = False
        ParentBackground = False
        TabOrder = 0
        object Label3: TLabel
          Left = 187
          Top = 8
          Width = 4
          Height = 13
          Caption = ':'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label2: TLabel
          Left = 18
          Top = 8
          Width = 44
          Height = 13
          Caption = 'Servidor:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object ed_server: TEdit
          Left = 70
          Top = 4
          Width = 107
          Height = 19
          Color = 15916445
          Ctl3D = False
          ParentCtl3D = False
          ReadOnly = True
          TabOrder = 0
          Text = 'ed_server'
        end
        object ed_server_database: TEdit
          Left = 197
          Top = 4
          Width = 172
          Height = 19
          Color = 15916445
          Ctl3D = False
          ParentCtl3D = False
          ReadOnly = True
          TabOrder = 1
          Text = 'Edit1'
        end
      end
      object AdvGlowButton1: TAdvGlowButton
        Left = 379
        Top = 3
        Width = 104
        Height = 113
        Margins.Left = 1
        Margins.Top = 1
        Margins.Right = 1
        Margins.Bottom = 1
        BorderStyle = bsNone
        Caption = 'Pesquisar'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        NotesFont.Charset = DEFAULT_CHARSET
        NotesFont.Color = clWindowText
        NotesFont.Height = -11
        NotesFont.Name = 'Tahoma'
        NotesFont.Style = []
        ParentFont = False
        Picture.Data = {
          89504E470D0A1A0A0000000D4948445200000040000000400806000000AA6971
          DE0000000473424954080808087C0864880000000970485973000001BB000001
          BB013AECE3E20000001974455874536F667477617265007777772E696E6B7363
          6170652E6F72679BEE3C1A00000C1749444154789CDD5A7B7094D775FF9D7BEF
          B7FBAD1649463CF4C080ED420424E038B5078313276D5AD2C60EA9DDC1C6357D
          7812709ACE783A9364D269877A9CB69EFC957F92894D128F9BD42F7027019219
          C7CECB9D4080D4CEB8C496781A218404D22209D07EFB3DEEBDA77FAC76D95DAD
          A4D56A97017E7FEDDE73BF7BEEF9DDC739F7DC4BCC8C6AD1D5353447348A2708
          785092682542B3204AF891A6E14C7809C000807E221E60165D5262CFDDCBDBBB
          AB565807501504A82367525F972436C5A55C4C046206226B11198B401BA4238D
          299A3DC684DD92ED0BEB56DCFCFB59F5BE069811015DBDA9A75CA9BEEA488A1B
          6678A1463AD4088DAD46370378C990DC7E6F67EBA96A1AA8052A22E0BD9ED423
          AE92CFC494680E8DC5453F841F1954BF788A1032F0ACA3DCED6B97B55CAA4D93
          95635A02BA7B2F3C9374E41718C06826C458A827D449479CFEDDA03E3B9CB174
          3964C70B39AE249B064561535C98B6A474D62C544B158126D3C38C6EC976E3BA
          55379F98B55533C05404A86367867F9370E45D5EA431EC85B00575D3117B3F3F
          1D9EEDBDA8177A816E2E6D4649014180B60C6B19421037B96AE8430B9CB1F58B
          9CDB44792A868978D3FACE45BFAC8D79D3633202D4F1BEE15E57C9F64B4184D1
          4C98178416E1DEE3FE9953C3D1ADC65A01648D4DBA0A49D741CC1150521435C6
          0C6863E1051A693F82D1D65FBFC43DB7B6DDB9A58C6E0DC6967B5676ECAC9D99
          93A32C01C7CE0CFF36E1C8BB4632212E0751BEFC70CABCFFC6496F89D6560140
          22AE30AFC9851B9333526A9971712C84D166F0A19589648B4BC9922A3E883E76
          4F67FB5B3337696698404077EF8567E6C4D4174A8D7FAD273A71B8DF5BC60CC4
          1C89F94D2E1A5C55DC18004104068319D36E929619635E38F4278B1DB3A449B4
          9588CF46D6B9F313AB169CABDEBCE95144C07B3DA9471AE3EA252F32B8E005F9
          F297BB83D3A787FDA5003027E1A0756E0244D9452C0868500249259050D9755F
          88D030867C8DC04C4E4764ECC5F5AD34B4740E2D2B111DB86745C7470154E567
          2B41D16275957C26B28CE1CC15E35FEB894EE48C9FD7E4A2ADA50144D9EDBC25
          2EB1B43186850985A433D178008849424B7CEA25E248D1FCD6056ACC180C9688
          D6EDEFEE7FAC3AD32A439E80AEDED45331259A4733613E8A3B9C32EF1FEEF796
          0159E3E736C601004A10DA930E6E8ACBC9FD5AA1129ABE16335A5FEF43CA32FC
          2201E16B6FBF3DD050A94133458E00E54AF5D54C64E06B0320BBDBBF71D25BC2
          9C9DF639E3134AE0E6A4035756623A6019180D4C45753563D5C1141D2C29EEF0
          1BEC972A6AA00A0800387226F57547527CD4BFE2EEF61EF7CF686D55CC91689D
          9B00901DF9D6842A3BD50B611948471683198DDEB110695DF912EE4FF3DAB4A6
          E28D8FE82B07FAFA1215373203080090243685267B9801B241CEA9E1E8560098
          DFE4E637BC85D318EF1BC680A771FA7288F3198DB1C8C2CE3C5E4E1C18E2D268
          B0D18CD12767DC5205105D5D4373E2522EF60A42DC9F9F0ECF1A6B4522AEF2AE
          6E6E5C4E39ED470283FE74848CB6B33E238C06B83BB4182D2EA58DB36CB62C84
          68144F1081BCE80A01BD17F54220BBF10159FFDE3C49B0A399D19F8E3052E13A
          AF10AA670C5D8505047C66BC2B358520E04163197A7CAEA6234E7B816E5652E4
          233CB78C7FCF61D0D3F0A7F0F1D5E2D4252ED5D8F6EBA37DAB6BAD474812ADDA
          5ED9A47E37A8CF3203C982282FA9CA5B3F1298BA180F0097357DA0B44C5A5A5C
          6B3D8208CD51C14E359CB1040049D7C997352831E143DF70ADA77D29E61946A6
          A8844447AD9508419408F515432E87EC0040CCC91A4DC8BABF52D4D9780040DA
          505164C8E0F65AEB107EA4295DB0017A21C701E48FB4E5A238CB803F03DF5E2D
          C6222EF2049651F325A0C6B3B773F305924DE1799ECB38B55AB8BA4AE010F2EB
          30136A6863EFA8B50E816CEA3A8FA42382C2196F19138219EF2A8C3E002415E6
          E77EFBA106886B7E341600FA0B0B9AE2644C89C585A12C33E0E9AB31FE308902
          028CB520A6DE5A2B11445C34033AE628C7582ECAEB0FFB06639145465B9CCF68
          98595CA6540A49D44BE3A1BAC9B969C1276BAD47308BA2886BF57C798B12C2EA
          825CBF61C6604663C0D3576DFACF77F94C5EFFF88C34AC7F516B3D424AEC292A
          205073429DF78289E9EFAB89654DB829F73BD4064A8AF4A73FBCFC9D5AEB11E3
          7775C70A0BD7B43AE9B41F4DF249FD4140AA2D810FE6FE079181201CAA872E01
          004CD85D58B8B65D2DB3C67AF62AACF57258DE44DD0448203BFACC0CE5A867EB
          A12B9B0F60FB024A92B81FBFB561E0E25858F6A37A42107A56B7F0BADCFF4CA8
          2185F0FF74F59257EBA20F00C66F695F2A14DCB140FE01B31DB8DAB3E023F368
          88000564473FD2068E239FAE97BE7CC867486E075034E40F77BA4D6399A83453
          5B372C4AD29BB7CCE1BB72FFD37E04A5E4C8A76E5FFA6FF5D29927E0DECED653
          0C14ADB3E63825372C963632F662BD3A904383A243EB16F0C773FFBD2082B116
          52CA27EAA9B7E89CEB28773B338A5E70DCDC28DB3EDA8621229CAF57271A141D
          FAD422FE10C6333E6164E00511628EDCFF67B72F79A15E7A8132576307BAFA96
          59210E0168292CCF180CBEDE879466ACAA65071625E9CDF19127207B897AD1F3
          214864EEBFF3B639A8E3AD1030C9E5E86F8E9EFD63667A1DE39B510E96E11F4C
          D1C1FE34AF0530AB34B520F47C641E0D15AE796D2C2E8D5FC90D5EB88C98A017
          FF7AC3ED5B66A3673A4CFA3E607F77FFC320FC2700B75496D674EEC0109F180D
          70374A489A5621905ADE44DDAB5B781D157C1B44066399004484E1D13482F12C
          B5EBA897FE66C39A4767A26346FD99EA85C8FEA303778279378045E5E4A1C568
          CF18BA4E5D621ACFE1CD2B53CD48A2DEF92E9F59D6849BDA12F8602EC801B2C1
          472688E00511A41099F3A94B0953F2E6C88DA9976F7AE5A12F33E8EF84B43FFB
          CC778EFE6F35C696C3B44F64DEEC1A6A7344F44300EBA6AC08C03032698DA131
          8D1187E02415E62714E653C9669B431819A48310C632628EDCFFE777DC7AEF7F
          BDF17F3F882C3FEAC614824823D21692289CF793CFA728F43A0018106FFDEC77
          8F3C5F95C525A8F49598D8DFDDFF18085F0330ABC42433106A0D3FD4888C8552
          72444AF944E16EBF7BDF916D44F42C00F2FCE0BCFBDA3F418C9E6A9DDB48C804
          0C3F0413E3CB1B9FEBFEC66CFA02CCF099DCDB6F0F34F80DF64B20FA0A80C64A
          BE6100C658686B1169331EDB035208DF71E4D39305397BF61F799C8CFE47BCBA
          AD8933231D00D0D24888C580D1CB0C3F044078FAB3DFEDFE978A0D28836A1E4A
          E2405F5F227B57471BC76F6C4A5F7720136647D914DC392829D282704839EAD9
          E962FBBD9F5BD1C12AF65B9828BFFF1001731B0931A7800460C73B8B8F7CF1C9
          27B92A77591501A56DFCFA68DF6A696931487430B8DD3216A7FDF00E109F23A6
          5E083E6958FF6226E7F93D9F5BF9CF20FC87D18CC0673033627181589C269040
          44BBCE89862DDB76BC35E3337C2D08A80B7EBCADF3AE30A48399B42DDA406371
          829B1098DB98CDDC0E5F1AEF3FE375A9920FDEBFE32D6F267AAE590200E09547
          3A7FA8353F505A1E8B13E2AE00114ADF241F5031E7BEFBBE7D78A4521DD73401
          00F0CAE6CE7DDAF03DA5E53912CAE05D2369C3833BBA06CA094B71CD1300227A
          79F3F2DF1B7D254596C3642410F0BE957AC35FEC383E6D16B92C85D71498B9FD
          DCF10F0B8909770261C008FC899B3F03B79151FBF66E5DB166BAE6AF7D02007C
          E257AC4D2CB14A4A4A95CA262301401B33FE67CFB695EBA76AFBDA5F020578FE
          A1E50BE2244E5ACB1382B029F6048FC07FB9F17B477E5A4E785DCC801C1EDB75
          7C4834846B8428794B882967420383F6EEFDFCAACDE584D7150100B0F9F9533D
          8EC23A4134E1E6660A121C06BFB87BEB8ABF2F155C770400C0A6178FBDA31266
          038989D9A2294810C4F4ED3D5B57149D1DAE4B0200E0A1EF9FF89574F861A289
          4F15A6200160FAF71F3DB6F23B2012C0754C00006C7EE1F87F3B31F1C5728FE7
          A6228104B6EE7CE4036F02D79917980C3BB774FE6B14F053E5649379878C6741
          C09337040100B06B4BE7B7C280FFA19CAC1C09816F610DFA6F180200E0D5473B
          7705216F2A272B25C11BB30043DF500400C0CE4757FC320AED1F95934945508A
          A035C3688652F06E38020060E75F75BE13457CFB74F59C18755DD75E6032087D
          EC0F95433D53D5210262AEF3F80D49C0A65D6C966A6F9513A3F7CAC98900C7A5
          6F3EF0DCBBFB6EC82550885D7FBB62BB0DF971B66825C12109EA89B9CEE30F3C
          F7EE3E00F87FA8ECAC07D28B933E0000000049454E44AE426082}
        Transparent = True
        TabOrder = 1
        OnClick = AdvGlowButton1Click
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
        Layout = blGlyphTop
        MaxButtonSizeState = bsLabel
      end
      object datafim: TsDateEdit
        Left = 249
        Top = 35
        Width = 86
        Height = 21
        AutoSize = False
        Color = clWhite
        EditMask = '!99/99/9999;1; '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        MaxLength = 10
        ParentFont = False
        TabOrder = 2
        Text = '  /  /    '
        CheckOnExit = True
        SkinData.SkinSection = 'EDIT'
        GlyphMode.Blend = 0
        GlyphMode.Grayed = False
      end
      object cbResolvido: TComboBox
        Left = 141
        Top = 62
        Width = 145
        Height = 21
        TabOrder = 3
        Text = 'Todos'
        Items.Strings = (
          'Sim'
          'N'#227'o'
          'Todos')
      end
      object btnEnviar: TAdvGlowButton
        Left = 825
        Top = 471
        Width = 134
        Height = 103
        Caption = 'Enviar Conting'#234'ncias'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        NotesFont.Charset = DEFAULT_CHARSET
        NotesFont.Color = clWindowText
        NotesFont.Height = -11
        NotesFont.Name = 'Tahoma'
        NotesFont.Style = []
        ParentFont = False
        Picture.Data = {
          89504E470D0A1A0A0000000D4948445200000040000000400806000000AA6971
          DE0000000473424954080808087C0864880000000970485973000001BB000001
          BB013AECE3E20000001974455874536F667477617265007777772E696E6B7363
          6170652E6F72679BEE3C1A00000E8449444154789CCD9B7B7C54D5B5C7BF6B48
          4242802490040928462108C110480A11897EB08AF2502C685050B982A845AFDC
          0BF72AA268B89447A9F559518B6D3FE8D516BCB4600179A302F2303C0579A825
          251048088614082184ACFBC73E67E6CC6426990943E9EFF3399F99BDCFDA6BAF
          B5CE7EACBDF6DEA2AA5C4E88482C701B9006A4006D7D7E2F0287033CFB54F5E4
          6595EF72184044AE01065B4F3F20BA91AC4E0339AAFA6DB864F34544B8188948
          34F014F008901180EC0C500C1CB37E8B8126C035D6D3014872D03707E22CFE37
          01CF02B354754BB8E446552FE9B114780C3802A8CF7318F80D703BD03C487E31
          4067AB4CA623FF8F16CF3F5EAACC5EF55DA2F243817D3E4AEF07FE07C80AABA0
          D01D980BB40B82562EAB01ACA6BAC9CFD71E05B8C2A97808324502CF0305C039
          AB452E0232C26A00A02F50E250BC1CF86F20FA4A286EC99404ECF0D30515A806
          C685C500C0A3C07907F33940C29552DC21D77C5BA6B8D8487D7CE0759AD3A595
          AF11BA37DA00D640F7AA83E17960F49556DC92AD872DD79DD96DF4CCE27B5557
          DCA7BAE23E5D3933D7698405FECABBEA9F2340449A000B81FFB4B24E00B7ABEA
          EF1B2AFB4F428EFDE7D9FB3B131BED99D9EFE8D9869C2EADECE46D2222BE851B
          3400F02B6088F5FF1BA097AAAE6FB4B8E14732804B848CD4B83A2F3352E3EDBF
          B16A351927EA3580883C8AE7CB7F03DCACAA859720AC937730C60F063B016A55
          99FBD921AF1767AB6A98FF45919DFCBBBFC2013D4111E90BBC6B254F00F7A8EA
          E9C64828226D8001D6D311B306481691F3C071EBF90A580A6C50D50B21B0FF02
          2805927FF5C94100C60E4865F7A10A667F72808AB36E5673FD960E30B074C033
          D59D07721B3940F5065601B5F89FA2FC3D3F0253801621D4739F93874BC41F5F
          BFFE80DFC590886CC233B88C0975C01391AB8137817B7DDF25A5B423EDC64C3A
          76CBA0A6E60265C78A292E3CC4DE6D5BA9BD78D1497A12785155DFF5E511A0CE
          3CE06D203100C932551D5427D78F3587E298E71BF1D5FB619AA4F91A2E970E7B
          ECE7FAD6E295BAFC50A96E39AD7E9F55874FEACBEFCDD3F4ECDEBE5F6E3E41B6
          0620C132FACB189FA523A6E9DBBC86D4DB02AC296F0F7003700AB84E55CB83F9
          0256F9D1C07B58634B7A562F9E7BFD1D3A67F60C960500EB162FE4AD179FE568
          E1DFECACBD986E18B42C0E99128103402BCC40D84555CFD9EF7D47E24731CA03
          CC0851F91EC03B40448BF80426BDF12EEFAFDD14B2F200FD860C63DE866DF4FE
          697F3B2B1DF8AB88C484CA4B55CB80C956B20330C94B6EBB0558EBF9EF817640
          1190A6AA55C1542222CD806DC00D119191FC76E57AD2B37B872A6B1DD45EBCC8
          2F9E1AC3D28FE6D9591FA9EA43A1F2B1A6DCAD4016666C69A7AAE7C1BB053C85
          511E604AB0CA5B781DABE53C33FD95B0280FE06AD284E7DFFC2DDD736EB6B346
          8AC88050F9A86A2D30C34AB606F2EC77CE16B00B13C9390074B50A350811198A
          7195F9E9CFEE67C6070B4295AF41949F28E5819FA473EA6419C02120DDD98F83
          9433023306A4009B54B50F582DC08AE1D961AC05C12A6F613640FBD4EB7971CE
          EF429129682424253366D24B7632157830541EAA5A03D802DE2422DDC1D30506
          3B681707CB54443A01D703DCF36F8FD1AC798B50E50A1A43C73C49FBD4EBEDE4
          E38D64331713850618091E57D8364091AA6E0B81E19DF69FDC0177075DE8FB3D
          BBD9BB6D2B07766E07A073664FD2B37AD1B15BA0582A44444632E0C187993B23
          1FA0B78874D510A3C5AA5A24225B803EC02D001156DCBE9F45F369280C81BB00
          523AA4725D97F40689CFFCA382579F1DEF1CD5BD3068E42826CC7E83E62DEBAE
          EA006E1934C43600C04D4063C2E51B3006C81291581766D3C28EDB2F0A968B88
          34C5325CEEC086BFFE89E2A33CD8AB9B97F2C9C9C9242727BBD34B3F9AC783BD
          BA71A2F8A85F1E691999B44C70AFEF7B042BAB0FECA57C0490E3C2ECD8D8D81C
          0C0711C9046601CD00A29BC572AEF26CBD65663EF304A5478F00909797476161
          21252525949494505858485E9E99994A8F1E61C63381BB789BF657DB7FEF1091
          A922F28A888C12916E9627DB10BEC2B8C56075835F5B19A71BF0B323807C4CF4
          B7CE6A2BA659AC0E78E0215DF6FDB13A7EFEF479F3DD74E3C78FD740183F7EBC
          9B6EFABCF97ED70C7DFA0FA86F257906B379526F641A3888679DC1C756E2403D
          05AE0636FA56D8BC659CBA9A34F1CA4B484AD6D7FFFC9997D083468E52405352
          52B4B2B232A0012A2B2B35252545011D3472945F033C31655A1DC3FB31C446A0
          533DFAACB7E856BB308E0198EDAA3AB07C849D988183B48C4C667CB080457B0F
          B1E6E8295617FDC8AF3FF92BFD860C038CD33231EF6ECA8E7BD8EDDB5E00406E
          6E2E313181DDF9989818727373BDCAF862C4D313786DE132E62C5DCBAAC327F9
          BCE40C7FD9F337667CB080B48C4C9BAC0FB0414492FC3231EE30406204669716
          CC3E9D3FBC855949316AC224C6BE3095C8A828F7CBD8162DE97BD760FADE3598
          CFFEF4BFBC317922119191C4B6F0F8048507F6019096964643B069EC32BE886E
          D68C3EFDBDBDE1940EA9A4744835B3C4F49799F7EA2C30B1C27730C1125F9459
          BFAD9D2DA08E0144E45EE01E8081231E61DCD4995ECAFB62C0030FB1E4C01116
          ED39444C6C73777E6DAD712C5DAE86C380368D5D2614444645316EEA4C068E78
          C4CE1A2622C3FD90DA2DA0B50095980DC9D9AAFA9C934A4496037726B64D617E
          C1B701E7677FA8AEAAE277BF9CC696B52BDDCD392E2E8EF8F8F87ACB55545470
          EAD42900BAF4CCA6F76DFD19F3DC14A2A283DF613FF38F0A866777A5EC5831C0
          1255F59AA745E4156022702602638DF69855922F7A00F4BD735048CAAB2A13EE
          1FCCD79FAFA9A35C454545D07CF66D2F60DFF602F6166CE1AD4F57E127ACEF17
          CD5BC67173FF812C9EF73E9825B02FDCAD3E02D31FDAE3134B1391765831F72E
          3DB383161AE0EBCFD7B8954F6CDB83D66D02BBB8F5E164C96ECA8EED70F3EBD5
          EFF6A0CB76E9996D1BA0AD88B45555E7206F8F7BC7EC1600755B807B044D484A
          2614ECDBE119C1EF1DB58EA8E8E05B8F13D55515BC3F2BDECD331403B46E7395
          33D906EF59CEDD025C780CD0C687C7B7984D45BEFB6657D01583E9FF3602295F
          FCF72FD9BC66325BD6BCC0B1C31BFDD238CB3A79068383BB77BA8B5277CDE09E
          FA2330071A003A8A482B55FD114055AB45640FD073CFD74179C84163F3EAE7D9
          BE61963BBD6DC34CB26F9942AF7E53C356C7DE02F7299A3DAA5A6D2744A439E6
          E80D582DE04BFB1D96B3E3C01623F00AB6AE5D1516C18E177DE556DEE5729969
          4F95822FA771BC685358EAD8BA76159B562DB793BEE789721CFF0FBA300BA01A
          2B23D787F81740B9AA326DDC68CA4F945EB270453F1843BA5C2E264ECC67C284
          97DC4628FA61E525F32F3F51CAB471A36D97B71CA38313F6664D15B0D6A5AA67
          31115D30A73FDC50D562E06930ABB4113919AC5F166AC8C01BB12D526CDE5CB8
          504D4D4D8D2D2CB12DDBD557B441AC5FF629237232DCAB4EE0694B0727EEB17E
          D7A9EA593B22F425661FAFB7885CADAAEE2D5555FD58447281277F2C2DE1BF86
          0FA173664FBAF6FC099D6EEC4ED39818AEE99846466FDFDEE31F1DBB0D67C3F2
          F1D45C38C7C68DEBEC3A88886C46C7F4BC064A7BB06BF3468A7EF88EF3E7CEF1
          DD37BBF876FBD7EE0893857755F56367868864611676004BC01312FB0873CEA7
          09301678C95950557F2E222B30BB3EC907766EF7AD8C3717AD28E97D5BFF2A80
          EAAAAA78ACF37DBE886ADA925649E994161770FCB827F0D12AA92B514D5B0654
          B8BAAAAA02E514C0C6E54BA227E4DDED3B6BD928059E50557FC19D218EFF4BC0
          3B2CFE1526CC540C74B0A2A85EB0B6999E06B2311E963DD956604E74EEB7E8F2
          31FB738CCBF7DE7CADB9708EF767C5537BB19AACAC9B00D8B66D13AE26913C36
          A9828848EFD5E29C7CB7F7375555F32DFEE998C0866DB1E3986E5C00FCC6DA0D
          F295DD85990E3B03BB55B53B789F0F78C732400AA69FFCD99789C538DFC13419
          13152A09364E5F72740BB517ABDD8ADBA8BD788192239B6997DA2F5051A71C7B
          45A42DC653AD54D56046E78731CA037C60673A97670BF03845938339C1A1AAA5
          AA5A18CA2645D3E884C0EF625A057CE7A7EE4AABEE0695B7B6FDA659C9A3986D
          74C0D10254F5BC88BC8DE9FF5998B1E0BDA0250A1289577527EF89ED9495787B
          97896DBA937855F7705767E3DFF10C7EF9CE6D3FDF2332B330A73D3B00334464
          A1BFFE1404CED87F2A4F1FA3598BB65E2F13DBF620B16DC341DDCAD35E41AA33
          81E8EA838824E0D91DDE0FFCC1F9DECB00AA7A4E44FE03F80B260A3453447E89
          7190AE0176015F68C3DBE66EE77EC17B3D884FBCA13EDA803855B6DF99F4BF60
          6818D3013B08F182AA7A1D430914345C4AE0C8EB0920AFBEA8ABC5E3C37A7884
          FA7CD8507D016418EDE0B1C91F4DA033421998AFED864B845A6FDAFB55F5FF02
          99DD3A94F8303088BA2BCD605182F9181FAA3F41EB81E5BCAD06A230BE412F55
          AD7B542E80E526621F3F4D49D13577DCA127F2F274468F1E9A1015655BB40488
          6FCC97B9DC0F702D9E734AE781BE8168039D131C0B101719C9C25B6F2536C290
          3DDFAD1B009377EC003307DF4A08BBC9FF0C88480BCC1EA71DD07952553704A2
          0F34D77700187EEDB56EE56D8CEDD40997273697C9BF1044E45ACC6079A395F5
          9AAAFE216001FC18C0EABB67017697D71DEC7797973BC7824B5F1F8709569FDF
          8A47F9C598F54DBDA863006BB0590BB0B9AC8C55C73C73F1D99A1A66EFDDEB24
          0F6FA8A891B08EE7ADC6D3EC5F0386D599F2FC21C020928989A529A0398989FA
          78A74E1A1719E97580F15F60B04BC05CDAB0653A0F3C1A128F7A988F731AC1E7
          D901245D41C5A331CDBBDC215309F58CF6211BC0AA28037368E208E6225201E6
          6252E41552DC8571D57DB7E8376196F0A1F30CA1F206AFA2E1399B9B1D66C5B3
          3057F1F6FB28BE0F187A49BCC32CE8EF2DC13E73E465622E41A611E4CD324CD8
          FA76CCA54B7F07328E602E6B36B95499C37675D6C21C8C83F4128088F4C16711
          2322A5785F90BE88F765EA143C717B5FECC60433DED6D04EB206C465B93CED66
          6E0E236E04621BC9A20A588789DF2D51D5C3E192CDC665350080754AE3063C17
          A47D1F17DE17AAEDDF83C05A3561FBCB86FF07D02C2CC9F175A1E30000000049
          454E44AE426082}
        Transparent = True
        TabOrder = 4
        OnClick = btnEnviarClick
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
        Layout = blGlyphTop
      end
      object cbPDV: TComboBox
        Left = 141
        Top = 93
        Width = 145
        Height = 21
        TabOrder = 5
        Text = 'Todos'
        Items.Strings = (
          'Todos')
      end
    end
    object PageSheet2: TPageSheet
      Left = 0
      Top = 0
      Width = 961
      Height = 574
      Caption = 'Log'
      Color = 15916445
      DisplayMode = tdGlyph
      ImageIndex = 0
      Margin = 0
      PageIndex = 1
      ParentColor = False
      TabColor = clWindow
      TabWidth = 0
      TransparentColor = clNone
      object Memo1: TMemo
        Left = 0
        Top = 0
        Width = 961
        Height = 574
        Align = alClient
        Color = 15916445
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Courier New'
        Font.Style = []
        ParentFont = False
        ScrollBars = ssVertical
        TabOrder = 0
      end
    end
  end
  object dataini: TsDateEdit
    Left = 137
    Top = 35
    Width = 86
    Height = 21
    AutoSize = False
    Color = clWhite
    EditMask = '!99/99/9999;1; '
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    MaxLength = 10
    ParentFont = False
    TabOrder = 1
    Text = '  /  /    '
    CheckOnExit = True
    SkinData.SkinSection = 'EDIT'
    GlyphMode.Blend = 0
    GlyphMode.Grayed = False
  end
  object NextDBGrid1: TNextDBGrid
    Left = 0
    Top = 120
    Width = 962
    Height = 353
    Touch.InteractiveGestures = [igPan, igPressAndTap]
    Touch.InteractiveGestureOptions = [igoPanSingleFingerHorizontal, igoPanSingleFingerVertical, igoPanInertia, igoPanGutter, igoParentPassthrough]
    Caption = ''
    TabOrder = 3
    TabStop = True
    object NxDBTextColumn1: TNxDBTextColumn
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      Header.Caption = 'Data'
      Header.Font.Charset = DEFAULT_CHARSET
      Header.Font.Color = clWindowText
      Header.Font.Height = -11
      Header.Font.Name = 'Tahoma'
      Header.Font.Style = []
      Options = [coCanClick, coCanInput, coCanSort, coPublicUsing, coShowTextFitHint]
      ParentFont = False
      Position = 0
      SortType = stAlphabetic
      FieldName = 'DATA'
    end
    object NxDBTextColumn2: TNxDBTextColumn
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      Header.Caption = 'Numero'
      Header.Font.Charset = DEFAULT_CHARSET
      Header.Font.Color = clWindowText
      Header.Font.Height = -11
      Header.Font.Name = 'Tahoma'
      Header.Font.Style = []
      Options = [coCanClick, coCanInput, coCanSort, coPublicUsing, coShowTextFitHint]
      ParentFont = False
      Position = 1
      SortType = stAlphabetic
      FieldName = 'NUMERO'
    end
    object NxDBTextColumn3: TNxDBTextColumn
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      Header.Caption = 'PDV'
      Header.Font.Charset = DEFAULT_CHARSET
      Header.Font.Color = clWindowText
      Header.Font.Height = -11
      Header.Font.Name = 'Tahoma'
      Header.Font.Style = []
      Options = [coCanClick, coCanInput, coCanSort, coPublicUsing, coShowTextFitHint]
      ParentFont = False
      Position = 2
      SortType = stAlphabetic
      FieldName = 'PDV'
    end
    object NxDBTextColumn4: TNxDBTextColumn
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      Header.Caption = 'Situa'#231#227'o'
      Header.Font.Charset = DEFAULT_CHARSET
      Header.Font.Color = clWindowText
      Header.Font.Height = -11
      Header.Font.Name = 'Tahoma'
      Header.Font.Style = []
      Options = [coCanClick, coCanInput, coCanSort, coPublicUsing, coShowTextFitHint]
      ParentFont = False
      Position = 3
      SortType = stAlphabetic
      FieldName = 'DES_SIT'
    end
    object NxDBTextColumn5: TNxDBTextColumn
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      Header.Caption = 'Total'
      Header.Font.Charset = DEFAULT_CHARSET
      Header.Font.Color = clWindowText
      Header.Font.Height = -11
      Header.Font.Name = 'Tahoma'
      Header.Font.Style = []
      Options = [coCanClick, coCanInput, coCanSort, coPublicUsing, coShowTextFitHint]
      ParentFont = False
      Position = 4
      SortType = stAlphabetic
      FieldName = 'TOTAL'
    end
    object NxDBTextColumn6: TNxDBTextColumn
      DefaultWidth = 300
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      Header.Caption = 'Chave'
      Header.Font.Charset = DEFAULT_CHARSET
      Header.Font.Color = clWindowText
      Header.Font.Height = -11
      Header.Font.Name = 'Tahoma'
      Header.Font.Style = []
      Options = [coCanClick, coCanInput, coCanSort, coPublicUsing, coShowTextFitHint]
      ParentFont = False
      Position = 5
      SortType = stAlphabetic
      Width = 300
      FieldName = 'CHAVE'
    end
    object NxDBTextColumn7: TNxDBTextColumn
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      Header.Caption = 'Conting'#234'ncia?'
      Header.Font.Charset = DEFAULT_CHARSET
      Header.Font.Color = clWindowText
      Header.Font.Height = -11
      Header.Font.Name = 'Tahoma'
      Header.Font.Style = []
      Options = [coCanClick, coCanInput, coCanSort, coPublicUsing, coShowTextFitHint]
      ParentFont = False
      Position = 6
      SortType = stAlphabetic
      FieldName = 'CONTINGENCIA'
    end
    object NxDBTextColumn8: TNxDBTextColumn
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      Header.Caption = 'Resolvido?'
      Header.Font.Charset = DEFAULT_CHARSET
      Header.Font.Color = clWindowText
      Header.Font.Height = -11
      Header.Font.Name = 'Tahoma'
      Header.Font.Style = []
      Options = [coCanClick, coCanInput, coCanSort, coEditing, coPublicUsing, coShowTextFitHint]
      ParentFont = False
      Position = 7
      SortType = stAlphabetic
      FieldName = 'ENVIADOCONTINGENCIA'
    end
    object NxDBCheckBoxColumn1: TNxDBCheckBoxColumn
      DefaultValue = 'True'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      Header.Caption = 'Enviar?'
      Header.Font.Charset = DEFAULT_CHARSET
      Header.Font.Color = clWindowText
      Header.Font.Height = -11
      Header.Font.Name = 'Tahoma'
      Header.Font.Style = []
      ParentFont = False
      Position = 8
      SortType = stBoolean
      FieldName = 'ENVIAR'
      ValueChecked = 'True'
      ValueUnchecked = 'False'
    end
  end
  object qrPDV_Contingencia: TUniQuery
    Connection = frmPrincipal.conexao_pdv
    Left = 205
    Top = 371
  end
  object ds_nfce: TDataSource
    AutoEdit = False
    DataSet = qrPDV_Contingencia
    Left = 688
    Top = 304
  end
  object qrTemp: TUniQuery
    Connection = frmPrincipal.conexao_pdv
    MasterSource = ds_nfce
    Left = 213
    Top = 299
  end
  object ACBRNFCe: TACBrNFe
    Configuracoes.Geral.SSLLib = libNone
    Configuracoes.Geral.SSLCryptLib = cryNone
    Configuracoes.Geral.SSLHttpLib = httpNone
    Configuracoes.Geral.SSLXmlSignLib = xsNone
    Configuracoes.Geral.FormatoAlerta = 'TAG:%TAGNIVEL% ID:%ID%/%TAG%(%DESCRICAO%) - %MSG%.'
    Configuracoes.Geral.VersaoQRCode = veqr000
    Configuracoes.Arquivos.OrdenacaoPath = <>
    Configuracoes.WebServices.UF = 'SP'
    Configuracoes.WebServices.AguardarConsultaRet = 0
    Configuracoes.WebServices.QuebradeLinha = '|'
    Configuracoes.RespTec.IdCSRT = 0
    Left = 448
    Top = 392
  end
end
