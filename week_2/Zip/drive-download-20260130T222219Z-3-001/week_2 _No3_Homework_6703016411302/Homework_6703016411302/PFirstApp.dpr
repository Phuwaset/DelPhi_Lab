program PFirstApp;

uses
  Vcl.Forms,
  UFirstApp in 'UFirstApp.pas' {Form1},
  UClass1 in 'UClass1.pas',
  UClass2 in 'UClass2.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
