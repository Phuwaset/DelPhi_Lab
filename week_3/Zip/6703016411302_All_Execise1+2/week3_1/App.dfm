object Form1: TForm1
  Left = 0
  Top = 0
  Hint = 'Try'
  BorderStyle = bsSingle
  Caption = 'Vat_Calculater_App (V0.0)'
  ClientHeight = 372
  ClientWidth = 578
  Color = clCream
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Menu = MainMenu1
  TextHeight = 15
  object Label1: TLabel
    Left = 79
    Top = 99
    Width = 83
    Height = 15
    Caption = 'Plase put (bath)'
  end
  object Label2: TLabel
    Left = 66
    Top = 171
    Width = 96
    Height = 15
    Caption = 'Tax Vat7% 0 (bath)'
  end
  object Label3: TLabel
    Left = 274
    Top = 156
    Width = 15
    Height = 37
    Alignment = taRightJustify
    Caption = '0'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clCrimson
    Font.Height = -27
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
  end
  object Label4: TLabel
    Left = 79
    Top = 130
    Width = 85
    Height = 15
    Caption = 'Plase put (Vat%)'
  end
  object Edit1: TEdit
    Left = 168
    Top = 96
    Width = 121
    Height = 23
    Color = clDarkgray
    NumbersOnly = True
    TabOrder = 0
  end
  object Button1: TButton
    Left = 168
    Top = 215
    Width = 105
    Height = 25
    Caption = 'Cal Vat'
    TabOrder = 1
    OnClick = Button1Click
  end
  object EditVat: TEdit
    Left = 170
    Top = 127
    Width = 121
    Height = 23
    Color = clDarkgray
    NumbersOnly = True
    TabOrder = 2
    Text = '7'
  end
  object MainMenu1: TMainMenu
    Left = 56
    Top = 8
    object Process1: TMenuItem
      Caption = 'Process'
      object Cal1: TMenuItem
        Caption = 'Cal'
        OnClick = cal1Click
      end
      object exit1: TMenuItem
        Caption = 'exit'
        OnClick = exit1Click
      end
    end
  end
end
