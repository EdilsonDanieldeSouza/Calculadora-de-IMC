object FrmPrincipal: TFrmPrincipal
  Left = 488
  Top = 274
  Caption = 'FrmPrincipal'
  ClientHeight = 307
  ClientWidth = 429
  Color = clSilver
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -21
  Font.Name = 'Roboto'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesigned
  PixelsPerInch = 96
  TextHeight = 25
  object Label1: TLabel
    Left = 23
    Top = 62
    Width = 160
    Height = 25
    Alignment = taCenter
    Caption = 'Digite sua Altura:'
  end
  object Label2: TLabel
    Left = 23
    Top = 122
    Width = 150
    Height = 25
    Alignment = taCenter
    Caption = 'Digite seu Peso:'
  end
  object Label3: TLabel
    Left = 23
    Top = 175
    Width = 42
    Height = 25
    Alignment = taCenter
    Caption = 'IMC:'
  end
  object PnlCalculadoraImc: TPanel
    Left = 0
    Top = 0
    Width = 429
    Height = 41
    Align = alTop
    Caption = 'Calculadora de IMC'
    TabOrder = 0
  end
  object BtnRequesitos: TButton
    Left = 206
    Top = 228
    Width = 179
    Height = 47
    Caption = 'Requesitos'
    TabOrder = 1
    OnClick = BtnRequesitosClick
  end
  object BtnResultado: TButton
    Left = 23
    Top = 228
    Width = 161
    Height = 47
    Caption = 'Resultado'
    TabOrder = 2
    OnClick = BtnResultadoClick
  end
  object EdtAltura: TEdit
    AlignWithMargins = True
    Left = 206
    Top = 59
    Width = 179
    Height = 33
    TabOrder = 3
    TextHint = 'Dig'#237'te sua altura'
  end
  object EdtPeso: TEdit
    Left = 206
    Top = 119
    Width = 179
    Height = 33
    TabOrder = 4
    TextHint = 'Dig'#237'te seu peso'
  end
  object CbSexo: TComboBox
    Left = 206
    Top = 172
    Width = 179
    Height = 33
    Style = csDropDownList
    TabOrder = 5
    TextHint = 'Escolha o sexo'
    Items.Strings = (
      'MASCULINO'
      'FEMININO')
  end
end
