object Assignment1X8_GPA_Student: TAssignment1X8_GPA_Student
  Left = 0
  Top = 0
  Caption = 'Assignment1X8_GPA_Student'
  ClientHeight = 623
  ClientWidth = 935
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object lblTitle: TLabel
    Left = 296
    Top = 64
    Width = 117
    Height = 21
    Caption = #3612#3621#3621#3633#3614#3608#3660#3585#3634#3619#3605#3633#3604#3648#3585#3619#3604
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
  end
  object btnGrade: TButton
    Left = 392
    Top = 352
    Width = 129
    Height = 65
    Caption = ' '#3588#3635#3609#3623#3603#3648#3585#3619#3604
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    OnClick = btnGradeClick
  end
  object memResult: TMemo
    Left = 296
    Top = 104
    Width = 321
    Height = 201
    Lines.Strings = (
      'memResult')
    ScrollBars = ssVertical
    TabOrder = 1
  end
end
