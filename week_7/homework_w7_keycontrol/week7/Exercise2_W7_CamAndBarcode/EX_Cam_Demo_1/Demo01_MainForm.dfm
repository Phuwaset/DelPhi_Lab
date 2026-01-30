object Form1: TForm1
  Left = 192
  Top = 122
  Caption = 'Form1'
  ClientHeight = 418
  ClientWidth = 588
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  Position = poScreenCenter
  Scaled = False
  OnActivate = FormActivate
  OnClose = FormClose
  OnCreate = FormCreate
  TextHeight = 13
  object PaintBox1: TPaintBox
    Left = 0
    Top = 16
    Width = 105
    Height = 65
  end
  object Image1: TImage
    Left = 235
    Top = 72
    Width = 345
    Height = 265
    Stretch = True
  end
  object Image2: TImage
    Left = 0
    Top = 112
    Width = 229
    Height = 225
  end
  object Label1: TLabel
    Left = 128
    Top = 8
    Width = 90
    Height = 32
    Caption = 'BarCode'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -24
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
  end
  object Button1: TButton
    Left = 392
    Top = 343
    Width = 75
    Height = 25
    Caption = 'Button1'
    TabOrder = 0
    OnClick = Button1Click
  end
  object Edit1: TEdit
    Left = 128
    Top = 46
    Width = 121
    Height = 23
    TabOrder = 1
    Text = 'ScanBarCode....'
    OnChange = Edit1Change
  end
end
