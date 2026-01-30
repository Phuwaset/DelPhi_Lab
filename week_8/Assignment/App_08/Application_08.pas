unit Application_08;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TAssignment1X8_GPA_Student = class(TForm)
    btnGrade: TButton;
    memResult: TMemo;
    lblTitle: TLabel;
    procedure btnGradeClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Assignment1X8_GPA_Student: TAssignment1X8_GPA_Student;

implementation

{$R *.dfm}

procedure TAssignment1X8_GPA_Student.btnGradeClick(Sender: TObject);
var
  // Array [] 1x10
  Scores: array [1 .. 10] of Integer;
  i: Integer;
  Grade: string;
  OutputLine: string;
begin
  memResult.Lines.Clear;
  Randomize;
  for i := 1 to 10 do
  begin
    Scores[i] := Random(101);
  end;

  for i := 1 to 10 do
  begin
    if (Scores[i] >= 80) and (Scores[i] <= 100) then
      Grade := 'A'
    else if (Scores[i] >= 60) and (Scores[i] <= 79) then
      Grade := 'B'
    else if (Scores[i] >= 50) and (Scores[i] <= 59) then
      Grade := 'C'
    else
      Grade := 'F';

    OutputLine := 'นักศึกษาคนที่ ' + IntToStr(i) +
                  ' | คะแนน: ' + IntToStr(Scores[i]) +
                  ' | เกรด: ' + Grade;

    memResult.Lines.Add(OutputLine);
  end;

end;

end.
