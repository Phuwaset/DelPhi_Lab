program KeyBarCode;

uses
  Vcl.Forms,
  barCode in 'barCode.pas' {FrMain},
  VFrames in 'Common\VFrames.pas',
  VSample in 'Common\VSample.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFrMain, FrMain);
  Application.Run;
end.
