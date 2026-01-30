object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'PhuAppW5_Main'
  ClientHeight = 416
  ClientWidth = 740
  Color = clHotLight
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object Button1: TButton
    Left = 24
    Top = 176
    Width = 75
    Height = 41
    Caption = 'Button1'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
  end
  object Mm1: TMemo
    Left = 232
    Top = 48
    Width = 193
    Height = 249
    Lines.Strings = (
      'Mm1')
    TabOrder = 1
  end
  object Button2: TButton
    Left = 134
    Top = 176
    Width = 75
    Height = 41
    Caption = 'String'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
  end
  object Button3: TButton
    Left = 24
    Top = 240
    Width = 75
    Height = 41
    Caption = 'Array'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
  end
  object Button4: TButton
    Left = 134
    Top = 240
    Width = 75
    Height = 41
    Caption = 'Record'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 4
  end
  object RgMachine: TRadioGroup
    Left = 24
    Top = 48
    Width = 185
    Height = 105
    Caption = 'Machine number'
    Columns = 5
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -20
    Font.Name = 'Segoe UI'
    Font.Style = []
    Items.Strings = (
      '1'
      '2'
      '3'
      '4'
      '5')
    ParentFont = False
    TabOrder = 5
  end
  object BtSave: TButton
    Left = 450
    Top = 256
    Width = 75
    Height = 41
    Caption = 'Save'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 6
    OnClick = BtSaveClick
  end
  object BtShow: TButton
    Left = 558
    Top = 256
    Width = 75
    Height = 41
    Caption = 'Show'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 7
    OnClick = BtShowClick
  end
  object EdtName: TEdit
    Left = 512
    Top = 56
    Width = 121
    Height = 23
    TabOrder = 8
  end
  object EdtCode: TEdit
    Left = 512
    Top = 106
    Width = 121
    Height = 23
    TabOrder = 9
  end
  object EdtVolt: TEdit
    Left = 512
    Top = 159
    Width = 121
    Height = 23
    TabOrder = 10
  end
  object EdtCurrent: TEdit
    Left = 512
    Top = 209
    Width = 121
    Height = 23
    TabOrder = 11
  end
end
