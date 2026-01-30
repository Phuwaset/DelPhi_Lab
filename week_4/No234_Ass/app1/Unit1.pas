unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    Lb1: TLabel;
    Bt1: TButton;
    Bt2: TButton;
    Bt3: TButton;
    Bt4: TButton;
    Tim1: TTimer;
    procedure Bt1Click(Sender: TObject);
    procedure Bt2Click(Sender: TObject);
    procedure Bt3Click(Sender: TObject);
    procedure Bt4Click(Sender: TObject);
    procedure Tim1Timer(Sender: TObject);
  private
    { Private declarations }
    //Count:Integer = 0;    // Can not initial.
    { Private declarations }
  public
    { Public declarations }
    a, b, c: Integer;
  end;

var
  Form1: TForm1;
  Count:Integer = 0;    // Only global variables may be initialised.
  IsRunning: Boolean;
type
  TColorThread = class(TThread)
  private
    FInterval: Integer;
  protected
    procedure Execute; override;
    procedure SwitchColor;
  public
    constructor Create(Interval: Integer);
  end;

implementation

{$R *.dfm}
// *************** Thread Create *********************
constructor TColorThread.Create(Interval: Integer);
begin
  inherited Create(False);
  FreeOnTerminate := True;
  FInterval := Interval;
end;
// *************** Thread Create *********************

// *************** Thread Execute *********************
procedure TColorThread.Execute;
begin
  while not Terminated do
  begin
    Synchronize(SwitchColor);
    Sleep(FInterval);
  end;
end;
// *************** Thread Execute *********************

// *************** Thread SwitchColor *********************
procedure TColorThread.SwitchColor;
begin

  if Form1.Color = clRed then
    Form1.Color := clGreen
  else
    Form1.Color := clRed;
  Inc(Count);
  Form1.Lb1.Caption := IntToStr(Count);
end;
// *************** Thread SwitchColor *********************

// *************** repeat until ****************
procedure TForm1.Bt1Click(Sender: TObject);
  //a, b, c: Integer;
begin
  a := 500;
  b := 2;
  c := a * b;

//  Form1.Caption := IntToStr(c);
  Form1.Caption := IntToStr(c);
  repeat

    Form1.Color := clGreen;
    Application.ProcessMessages;
    Sleep(c);

    Form1.Color := clRed;
    Application.ProcessMessages;
    Sleep(c);

  until Application.Terminated;
end;
// *************** repeat until ****************

// *************** Timer *********************
procedure TForm1.Bt2Click(Sender: TObject);
begin
//  IsRunning := True;
//  Count:=0;
//  Lb1.Caption:=IntToStr(Count);

  a := 500;
  b := 2;
  c := a * b;

  Form1.Caption := IntToStr(c);
  Tim1.Interval := c;
  Tim1.Enabled := True;
//  if not IsRunning then Break;
end;

procedure TForm1.Tim1Timer(Sender: TObject);
begin
 Inc(Count);
 Lb1.Caption:=IntToStr(Count);

 if (Count mod 2 <> 0) then
    Form1.Color := clRed
  else
    Form1.Color := clGreen;

end;
// *************** Timer *********************


// *************** Thread *********************
procedure TForm1.Bt3Click(Sender: TObject);
var
  a, b, c: Integer;
begin
  Count := 0;
  Lb1.Caption := '0';

  a := 500;
  b := 2;
  c := a * b;

  Form1.Caption := IntToStr(c);


  TColorThread.Create(c);
end;

// *************** Thread *********************


// *************** Pause *********************
procedure TForm1.Bt4Click(Sender: TObject);
begin
  Count:=0;
  Lb1.Caption:=IntToStr(Count);
  Tim1.Enabled:=False;
  Form1.Color := clBtnFace;
end;
// *************** Pause *********************


end.
