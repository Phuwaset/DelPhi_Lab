program Assign_PTeChart1;

uses
  Vcl.Forms,
  UTeeChart1 in 'UTeeChart1.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
