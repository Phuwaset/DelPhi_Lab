program PThreadObj1;

uses
  Vcl.Forms,
  UThreadObj1 in 'UThreadObj1.pas' {Frm1},
  UMyThreadObj1 in 'UMyThreadObj1.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFrm1, Frm1);
  Application.Run;
end.
