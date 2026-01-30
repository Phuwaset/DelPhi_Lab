program Project_Camera;

uses
  Vcl.Forms,
  camera_Project in 'camera_Project.pas' {Form2};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm2, Form2);
  Application.Run;
end.
