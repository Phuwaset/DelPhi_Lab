unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages,
  System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms,
  Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TMachine = record
    ID: Char;
    Amp: Integer;
    Volt: Integer;
  end;

  TForm1 = class(TForm)
    Edit1: TEdit;
    RadioGroup1: TRadioGroup;
    Memo1: TMemo;
    Button1: TButton; //SAVE
    Button2: TButton; //SHOW
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure RadioGroup1Click(Sender: TObject);
  end;

var
  Form1: TForm1;
  Machines: array[1..5] of TMachine;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
var
  idx: Integer;
  S: TStringList;
  B: array[1..5] of Integer;
begin
  // ตรวจเลือกเครื่อง
  if RadioGroup1.ItemIndex = -1 then
  begin
    ShowMessage('กรุณาเลือกเครื่อง');
    Exit;
  end;

  // แยกค่า Hex
  S := TStringList.Create;
  try
    ExtractStrings([' '], [], PChar(Edit1.Text), S);

    if S.Count <> 5 then
    begin
      ShowMessage('ต้องป้อน Hex 5 Bytes (เช่น 41 00 64 01 F4)');
      Exit;
    end;

    // แปลง Hex → Integer
    B[1] := StrToInt('$' + S[0]);
    B[2] := StrToInt('$' + S[1]);
    B[3] := StrToInt('$' + S[2]);
    B[4] := StrToInt('$' + S[3]);
    B[5] := StrToInt('$' + S[4]);

    idx := RadioGroup1.ItemIndex + 1;

    // เก็บข้อมูล
    Machines[idx].ID := Chr(B[1]);
    Machines[idx].Amp := B[2] * 256 + B[3];
    Machines[idx].Volt := B[4] * 256 + B[5];

    ShowMessage('บันทึกข้อมูลเครื่องที่ ' + IntToStr(idx) + ' สำเร็จ');
  finally
    S.Free;
  end;
end;

procedure TForm1.Button2Click(Sender: TObject);
var
  i: Integer;
begin
  Memo1.Clear;

  for i := 1 to 5 do
  begin
    Memo1.Lines.Add(
      'เครื่องที่ ' + IntToStr(i) + ' : ' +
      'ID=' + Machines[i].ID + ', ' +
      'Amp=' + IntToStr(Machines[i].Amp) + ', ' +
      'Volt=' + IntToStr(Machines[i].Volt)
    );
  end;
end;

procedure TForm1.RadioGroup1Click(Sender: TObject);
begin
  // 🔥 รีเซ็ตค่าที่เคยกรอก เมื่อเปลี่ยนเครื่อง
  Edit1.Clear;
end;

end.

