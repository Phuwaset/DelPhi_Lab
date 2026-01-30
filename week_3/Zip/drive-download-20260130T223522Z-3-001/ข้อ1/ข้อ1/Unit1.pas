unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms,
  Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TForm1 = class(TForm)
    Edit1: TEdit;
    Edit2: TEdit;
    RadioGroup1: TRadioGroup;
    Button1: TButton;
    Label1: TLabel;
    procedure Button1Click(Sender: TObject);
  private
    procedure Cal;                 // Procedure หลัก
    function Add(a, b: Double): Double;
    function Sub(a, b: Double): Double;
    function Mul(a, b: Double): Double;
    function Divi(a, b: Double): Double;
  public
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin
  Cal;   // เรียก Procedure Cal
end;

procedure TForm1.Cal;
var
  n1, n2, result: Double;
begin
  try
    n1 := StrToFloat(Edit1.Text);
    n2 := StrToFloat(Edit2.Text);

    case RadioGroup1.ItemIndex of
      0: result := Add(n1, n2);   // +
      1: result := Sub(n1, n2);   // -
      2: result := Mul(n1, n2);   // *
      3: result := Divi(n1, n2);  // /
    else
      raise Exception.Create('Please select operator');
    end;

    Label1.Caption := 'Result = ' + FloatToStr(result);

  except
    on E: Exception do
      ShowMessage(E.Message);
  end;
end;

function TForm1.Add(a, b: Double): Double;
begin
  Result := a + b;
end;

function TForm1.Sub(a, b: Double): Double;
begin
  Result := a - b;
end;

function TForm1.Mul(a, b: Double): Double;
begin
  Result := a * b;
end;

function TForm1.Divi(a, b: Double): Double;
begin
  if b = 0 then
    raise Exception.Create('Cannot divide by zero');
  Result := a / b;
end;

end.

