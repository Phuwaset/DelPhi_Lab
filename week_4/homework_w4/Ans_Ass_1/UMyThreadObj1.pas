unit UMyThreadObj1;

interface

uses
  System.Classes, Vcl.Forms, Vcl.StdCtrls, System.SysUtils, Vcl.Dialogs;

type
  TMyThread = class(TThread)
  private
   FForm:TForm;
   FLabel:TLabel;
   FEdit:TEdit;

   procedure OnKeyPress(Sender: TObject; var Key: Char);

    { Private declarations }
  public
   constructor Create(MainFrom:TForm);
  protected
    procedure Execute; override;
  end;

implementation


{ TMyThread }

constructor TMyThread.Create(MainFrom: TForm);
begin
 inherited Create(false);
 FForm:=MainFrom;
 FLabel:=FForm.FindComponent('Lb1') as TLabel;
 FEdit:=FForm.FindComponent('Ed1') as TEdit;
 FEdit.OnKeyPress:=OnKeyPress;
end;


procedure TMyThread.Execute;
begin
 repeat
  sleep(1000);         // every 1 seconds
  FLabel.Caption:='1';
  sleep(1000);         // every 1 seconds
  FLabel.Caption:='2';
 until Terminated;

end;

procedure TMyThread.OnKeyPress(Sender: TObject; var Key: Char);
var
 x:TLabel;
begin
  begin
   x:=FForm.FindComponent('Lb2') as TLabel;
   if Assigned(x) then
    begin
     if Key = '1' then
      x.Caption:='Type 1'
     else
      x.Caption:=Key;
    end;
  end;
end;


end.
