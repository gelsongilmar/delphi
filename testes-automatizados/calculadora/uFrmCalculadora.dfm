object FrmCalculadora: TFrmCalculadora
  Left = 0
  Top = 0
  Caption = 'Calculadora'
  ClientHeight = 116
  ClientWidth = 424
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 64
    Top = 13
    Width = 33
    Height = 13
    Caption = 'Valor 1'
  end
  object Label2: TLabel
    Left = 191
    Top = 13
    Width = 33
    Height = 13
    Caption = 'Valor 2'
  end
  object Label3: TLabel
    Left = 309
    Top = 13
    Width = 48
    Height = 13
    Caption = 'Resultado'
  end
  object edtValor1: TEdit
    Left = 24
    Top = 32
    Width = 121
    Height = 21
    TabOrder = 0
    Text = '0'
  end
  object edtValor2: TEdit
    Left = 151
    Top = 32
    Width = 121
    Height = 21
    TabOrder = 1
    Text = '0'
  end
  object btnSoma: TButton
    Left = 24
    Top = 72
    Width = 89
    Height = 25
    Caption = 'Soma'
    TabOrder = 2
    OnClick = btnSomaClick
  end
  object btnSubtracao: TButton
    Left = 119
    Top = 72
    Width = 89
    Height = 25
    Caption = 'Subtra'#231#227'o'
    TabOrder = 3
    OnClick = btnSubtracaoClick
  end
  object btnMultiplicacao: TButton
    Left = 214
    Top = 72
    Width = 89
    Height = 25
    Caption = 'Multiplica'#231#227'o'
    TabOrder = 4
    OnClick = btnMultiplicacaoClick
  end
  object btnDivisao: TButton
    Left = 309
    Top = 72
    Width = 89
    Height = 25
    Caption = 'Divis'#227'o'
    TabOrder = 5
    OnClick = btnDivisaoClick
  end
  object edtResultado: TEdit
    Left = 278
    Top = 32
    Width = 120
    Height = 21
    Enabled = False
    TabOrder = 6
  end
end
