object Form2: TForm2
  Left = 0
  Top = 0
  Caption = 'Form2'
  ClientHeight = 441
  ClientWidth = 624
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object LbAns: TLabel
    Left = 248
    Top = 52
    Width = 41
    Height = 25
    Caption = 'label'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
  end
  object BitBtn1: TBitBtn
    Left = 24
    Top = 24
    Width = 129
    Height = 41
    Caption = 'Btn1'
    TabOrder = 0
    OnClick = BitBtn1Click
  end
  object BitBtn2: TBitBtn
    Left = 24
    Top = 88
    Width = 129
    Height = 41
    Caption = 'Btn2'
    TabOrder = 1
    OnClick = BitBtn2Click
  end
  object BitBtn3: TBitBtn
    Left = 24
    Top = 152
    Width = 129
    Height = 41
    Caption = 'Btn3'
    TabOrder = 2
    OnClick = BitBtn3Click
  end
  object BitBtn4: TBitBtn
    Left = 24
    Top = 224
    Width = 129
    Height = 41
    Caption = 'Btn4'
    TabOrder = 3
    OnClick = BitBtn4Click
  end
  object BitBtn5: TBitBtn
    Left = 24
    Top = 296
    Width = 129
    Height = 41
    Caption = 'Btn5'
    TabOrder = 4
    OnClick = BitBtn5Click
  end
  object ComboBox1: TComboBox
    Left = 248
    Top = 97
    Width = 145
    Height = 23
    TabOrder = 5
    Text = 'ComboBox1'
    Items.Strings = (
      '1'
      '2'
      '3'
      '4'
      '5'
      '6'
      '7')
  end
  object Ed1: TEdit
    Left = 248
    Top = 136
    Width = 121
    Height = 23
    TabOrder = 6
    Text = 'Ed1'
  end
end
