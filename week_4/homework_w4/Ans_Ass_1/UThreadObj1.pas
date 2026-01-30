unit UThreadObj1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UMyThreadObj1, Vcl.StdCtrls;

type
  TFrm1 = class(TForm)
    Ed1: TEdit;
    Lb1: TLabel;
    Bt1: TButton;
    Bt2: TButton;
    Lb2: TLabel;
    procedure Bt1Click(Sender: TObject);
    procedure Bt2Click(Sender: TObject);
  private
   MyThread:TMyThread;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm1: TFrm1;

implementation

{$R *.dfm}

procedure TFrm1.Bt1Click(Sender: TObject);
begin
 if MyThread = nil then
  begin
   MyThread:=TMyThread.create(Frm1);
  end;
end;


procedure TFrm1.Bt2Click(Sender: TObject);
begin
 if MyThread <> nil then
  begin
    MyThread.Terminate;
    MyThread.Free;
    MyThread:=nil;
    ShowMessage('Free My Thread!');
  end;
end;


end.
