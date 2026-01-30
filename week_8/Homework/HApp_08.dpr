program HApp_08;

uses
  Vcl.Forms,
  HApplication_08 in 'HApplication_08.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
