unit Unit1;

interface

uses
  Winapi.Windows,
  Winapi.Messages,
  System.SysUtils,
  System.Variants,
  System.Classes,
  Vcl.Graphics,
  Vcl.Controls,
  Vcl.Forms,
  Vcl.Dialogs,
  Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Menus;

type
  TMachine = record
    Name: String;
    Code: Char;
    Current: Integer;
    Volt: Single;
  end;

type
  TForm1 = class(TForm)
    EdtName: TEdit;
    EdtCode: TEdit;
    EdtCurrent: TEdit;
    EdtVolt: TEdit;
    RgMachine: TRadioGroup;
    BtSave: TButton;
    BtShow: TButton;
    Mm1: TMemo;
    procedure BtSaveClick(Sender: TObject);
    procedure BtShowClick(Sender: TObject);
  private
  public
  end;

var
  Form1: TForm1;
  Machines: array[1..5] of TMachine;

implementation

{$R *.dfm}


procedure TForm1.BtSaveClick(Sender: TObject);
var
  Index: Integer;
begin
  if RgMachine.ItemIndex = -1 then
  begin
    ShowMessage('กรุณาเลือกเครื่องจักร');
    Exit;
  end;

  Index := RgMachine.ItemIndex + 1;

  Machines[Index].Name := EdtName.Text;
  Machines[Index].Code := EdtCode.Text[1];
  Machines[Index].Current := StrToInt(EdtCurrent.Text);
  Machines[Index].Volt := StrToFloat(EdtVolt.Text);

  ShowMessage('บันทึกข้อมูลเครื่องจักรลำดับที่ ' + IntToStr(Index) + ' เรียบร้อย');
end;


procedure TForm1.BtShowClick(Sender: TObject);
var
  i: Integer;
begin
  Mm1.Clear;
  Mm1.Lines.Add('ข้อมูลเครื่องจักรทั้งหมด');
  Mm1.Lines.Add('==============================');

  for i := 1 to 5 do
  begin
    Mm1.Lines.Add('เครื่องจักรลำดับที่ ' + IntToStr(i));
    Mm1.Lines.Add('ชื่อเครื่องจักร: ' + Machines[i].Name);
    Mm1.Lines.Add('รหัสเครื่องจักร: ' + Machines[i].Code);
    Mm1.Lines.Add('กระแสไฟฟ้า: ' + IntToStr(Machines[i].Current));
    Mm1.Lines.Add('แรงดันไฟฟ้า: ' + FloatToStr(Machines[i].Volt));
    Mm1.Lines.Add('------------------------------');
  end;
end;

end.
