program PJoy1;

uses
  Vcl.Forms,
  UJoy1 in 'UJoy1.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
