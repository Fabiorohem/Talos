object frmconfig_relatorio: Tfrmconfig_relatorio
  Left = 0
  Top = 0
  Caption = 'Relat'#243'rios'
  ClientHeight = 284
  ClientWidth = 684
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object grprelatorio: TGroupBox
    Left = 10
    Top = 8
    Width = 666
    Height = 268
    Caption = 'grprelatorio'
    TabOrder = 0
    object lbltitulo: TLabel
      Left = 247
      Top = 17
      Width = 196
      Height = 22
      Caption = 'Relat'#243'rios de Vendas'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lblsubtitulo: TLabel
      Left = 247
      Top = 45
      Width = 199
      Height = 16
      Caption = 'Selecione os Relat'#243'rio(s) Desejado(s)'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial Narrow'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object chk1: TCheckBox
      Left = 16
      Top = 90
      Width = 113
      Height = 17
      Caption = 'Rele'#231#227'o Sint'#233'tica'
      TabOrder = 0
    end
    object chk2: TCheckBox
      Left = 16
      Top = 113
      Width = 113
      Height = 17
      Caption = 'Rela'#231#227'o Anal'#237'tica'
      TabOrder = 1
    end
    object chk3: TCheckBox
      Left = 16
      Top = 136
      Width = 145
      Height = 17
      Caption = 'Relat'#243'rio de Produtividade'
      TabOrder = 2
    end
    object chk4: TCheckBox
      Left = 16
      Top = 159
      Width = 113
      Height = 17
      Caption = 'Venda de Produtos'
      TabOrder = 3
    end
    object chk5: TCheckBox
      Left = 16
      Top = 182
      Width = 177
      Height = 17
      Caption = 'Resumo de Venda de Produtos'
      TabOrder = 4
    end
    object chk6: TCheckBox
      Left = 215
      Top = 90
      Width = 185
      Height = 17
      Caption = 'Resumo de Vendas por Vendedor'
      TabOrder = 5
    end
    object chk7: TCheckBox
      Left = 215
      Top = 113
      Width = 136
      Height = 17
      Caption = 'Vendas / Comiss'#227'o'
      TabOrder = 6
    end
    object chk8: TCheckBox
      Left = 215
      Top = 136
      Width = 136
      Height = 17
      Caption = 'Vendas / Recebimento'
      TabOrder = 7
    end
    object chk9: TCheckBox
      Left = 215
      Top = 159
      Width = 152
      Height = 17
      Caption = 'Curva ABC de Produto'
      TabOrder = 8
    end
    object chk10: TCheckBox
      Left = 215
      Top = 182
      Width = 240
      Height = 17
      Caption = 'Comiss'#227'o Por Venda a Vista / Recebimento'
      TabOrder = 9
    end
    object chk11: TCheckBox
      Left = 445
      Top = 90
      Width = 188
      Height = 17
      Caption = 'Produtos Vendidos em Condicional'
      TabOrder = 10
    end
    object chk12: TCheckBox
      Left = 445
      Top = 113
      Width = 218
      Height = 17
      Caption = 'Resumo de Vendas / Meta Por Vendedor'
      TabOrder = 11
    end
    object chk13: TCheckBox
      Left = 445
      Top = 136
      Width = 218
      Height = 17
      Caption = 'Vendas de Produtos Agrupados por Dia'
      TabOrder = 12
    end
    object chk14: TCheckBox
      Left = 445
      Top = 159
      Width = 204
      Height = 17
      Caption = 'Fechamento da Taxa de Gar'#231'om'
      TabOrder = 13
    end
    object chk15: TCheckBox
      Left = 445
      Top = 182
      Width = 116
      Height = 17
      Caption = 'Selecionar Todos'
      TabOrder = 14
      OnClick = chk15Click
    end
    object btngravar: TButton
      Left = 16
      Top = 224
      Width = 177
      Height = 25
      Caption = 'Gravar'
      TabOrder = 15
      OnClick = btngravarClick
    end
    object btncancelar: TButton
      Left = 445
      Top = 224
      Width = 188
      Height = 25
      Caption = 'Cancelar'
      TabOrder = 16
    end
  end
end
