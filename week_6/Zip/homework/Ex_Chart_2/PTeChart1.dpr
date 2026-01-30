program PTeChart1;

uses
  Vcl.Forms,
  UTeeChart1_phase in 'UTeeChart1_phase.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
