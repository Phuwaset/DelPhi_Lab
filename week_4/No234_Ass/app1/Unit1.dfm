object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'App_MtT_Phu'
  ClientHeight = 471
  ClientWidth = 658
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object Lb1: TLabel
    Left = 56
    Top = 56
    Width = 69
    Height = 15
    Caption = 'Start Count!!!'
  end
  object Bt1: TButton
    Left = 40
    Top = 96
    Width = 75
    Height = 25
    Caption = 'repeat'
    TabOrder = 0
    OnClick = Bt1Click
  end
  object Bt2: TButton
    Left = 144
    Top = 96
    Width = 75
    Height = 25
    Caption = 'Timer'
    TabOrder = 1
    OnClick = Bt2Click
  end
  object Bt3: TButton
    Left = 248
    Top = 96
    Width = 114
    Height = 25
    Caption = 'Thread'
    TabOrder = 2
    OnClick = Bt3Click
  end
  object Bt4: TButton
    Left = 392
    Top = 96
    Width = 75
    Height = 25
    Caption = 'Puse'
    TabOrder = 3
    OnClick = Bt4Click
  end
  object Tim1: TTimer
    Enabled = False
    Interval = 20
    OnTimer = Tim1Timer
    Left = 264
    Top = 40
  end
end
