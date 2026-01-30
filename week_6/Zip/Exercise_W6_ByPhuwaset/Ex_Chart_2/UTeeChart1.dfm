object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 537
  ClientWidth = 771
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OnCreate = FormCreate
  TextHeight = 13
  object Lb1: TLabel
    Left = 168
    Top = 8
    Width = 81
    Height = 13
    Caption = 'y=Vsin(2*Pi*f*t)'
  end
  object Lb2: TLabel
    Left = 96
    Top = 37
    Width = 10
    Height = 13
    Caption = 'V.'
  end
  object Lb3: TLabel
    Left = 272
    Top = 40
    Width = 4
    Height = 13
    Caption = 'f'
  end
  object Bt1: TButton
    Left = 214
    Top = 378
    Width = 75
    Height = 25
    Caption = 'Bt1'
    TabOrder = 0
    OnClick = Bt1Click
  end
  object Ed1: TEdit
    Left = 96
    Top = 56
    Width = 121
    Height = 21
    TabOrder = 1
    Text = '220'
  end
  object Ed2: TEdit
    Left = 272
    Top = 56
    Width = 121
    Height = 21
    TabOrder = 2
    Text = '50'
  end
  object Chart1: TChart
    Left = 32
    Top = 83
    Width = 553
    Height = 289
    Title.Text.Strings = (
      'TChart')
    BottomAxis.Title.Caption = 'Time (S)'
    LeftAxis.Automatic = False
    LeftAxis.AutomaticMaximum = False
    LeftAxis.AutomaticMinimum = False
    LeftAxis.Maximum = 400.000000000000000000
    LeftAxis.Minimum = -400.000000000000000000
    RightAxis.Automatic = False
    RightAxis.AutomaticMaximum = False
    RightAxis.AutomaticMinimum = False
    RightAxis.Maximum = 400.000000000000000000
    RightAxis.Minimum = -400.000000000000000000
    View3D = False
    TabOrder = 3
    DefaultCanvas = 'TGDIPlusCanvas'
    ColorPaletteIndex = 13
    object Series1: TLineSeries
      HoverElement = [heCurrent]
      ColorEachLine = False
      SeriesColor = 10708548
      Shadow.HorizSize = -1
      Shadow.VertSize = -1
      Brush.BackColor = clDefault
      Dark3D = False
      LinePen.Width = 2
      Pointer.InflateMargins = True
      Pointer.Style = psRectangle
      XValues.Name = 'X'
      XValues.Order = loAscending
      YValues.Name = 'Y'
      YValues.Order = loNone
    end
  end
  object bt3: TButton
    Left = 408
    Top = 378
    Width = 75
    Height = 25
    Caption = 'bt3'
    TabOrder = 4
    OnClick = bt3Click
  end
  object bt2: TButton
    Left = 311
    Top = 378
    Width = 75
    Height = 25
    Caption = 'bt2'
    TabOrder = 5
    OnClick = bt2Click
  end
  object Timer1: TTimer
    Interval = 10
    OnTimer = Timer1Timer
    Left = 616
    Top = 352
  end
end
