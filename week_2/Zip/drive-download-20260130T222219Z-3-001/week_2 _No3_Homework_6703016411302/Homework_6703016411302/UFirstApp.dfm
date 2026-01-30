object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 412
  ClientWidth = 652
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  TextHeight = 15
  object Label1: TLabel
    Left = 88
    Top = 40
    Width = 35
    Height = 15
    Caption = '-------'
  end
  object Button1: TButton
    Left = 56
    Top = 120
    Width = 75
    Height = 25
    Caption = 'Set Male'
    TabOrder = 0
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 160
    Top = 120
    Width = 75
    Height = 25
    Caption = 'Set Female'
    TabOrder = 1
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 264
    Top = 120
    Width = 75
    Height = 25
    Caption = 'Get Gender'
    TabOrder = 2
    OnClick = Button3Click
  end
  object EditAge: TEdit
    Left = 160
    Top = 73
    Width = 75
    Height = 23
    TabOrder = 3
  end
  object ButtonSetAge: TButton
    Left = 104
    Top = 167
    Width = 75
    Height = 25
    Caption = 'Set Age'
    TabOrder = 4
    OnClick = ButtonSetAgeClick
  end
  object ButtonGetAge: TButton
    Left = 208
    Top = 167
    Width = 75
    Height = 25
    Caption = 'Get Age'
    TabOrder = 5
    OnClick = ButtonGetAgeClick
  end
end
