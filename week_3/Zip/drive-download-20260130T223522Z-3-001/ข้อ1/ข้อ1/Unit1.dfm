object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 290
  ClientWidth = 400
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object Label1: TLabel
    Left = 192
    Top = 72
    Width = 97
    Height = 25
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
  end
  object Edit1: TEdit
    Left = 192
    Top = 112
    Width = 97
    Height = 23
    TabOrder = 0
  end
  object Edit2: TEdit
    Left = 192
    Top = 152
    Width = 97
    Height = 23
    TabOrder = 1
  end
  object RadioGroup1: TRadioGroup
    Left = 56
    Top = 72
    Width = 105
    Height = 169
    Caption = 'RadioGroup1'
    Items.Strings = (
      '+ '
      '-'
      '*'
      '/')
    TabOrder = 2
  end
  object Button1: TButton
    Left = 192
    Top = 192
    Width = 97
    Height = 49
    Caption = #3588#3635#3609#3623#3603
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
    OnClick = Button1Click
  end
end
