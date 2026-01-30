program Key_Control;

uses
  Vcl.Forms,
  app1 in 'app1.pas' {FrMain};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFrMain, FrMain);
  Application.Run;
end.
