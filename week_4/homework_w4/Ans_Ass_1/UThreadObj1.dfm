object Frm1: TFrm1
  Left = 0
  Top = 0
  Caption = 'Frm1'
  ClientHeight = 440
  ClientWidth = 768
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  TextHeight = 13
  object Lb1: TLabel
    Left = 48
    Top = 8
    Width = 17
    Height = 13
    Caption = 'Lb1'
  end
  object Lb2: TLabel
    Left = 112
    Top = 8
    Width = 17
    Height = 13
    Caption = 'Lb2'
  end
  object Ed1: TEdit
    Left = 16
    Top = 27
    Width = 121
    Height = 21
    TabOrder = 0
  end
  object Bt1: TButton
    Left = 32
    Top = 64
    Width = 75
    Height = 25
    Caption = 'Bt1'
    TabOrder = 1
    OnClick = Bt1Click
  end
  object Bt2: TButton
    Left = 144
    Top = 64
    Width = 75
    Height = 25
    Caption = 'Bt2'
    TabOrder = 2
    OnClick = Bt2Click
  end
end
