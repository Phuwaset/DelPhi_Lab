program App_08;

uses
  Vcl.Forms,
  Application_08 in 'Application_08.pas' {Assignment1X8_GPA_Student};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TAssignment1X8_GPA_Student, Assignment1X8_GPA_Student);
  Application.Run;
end.
