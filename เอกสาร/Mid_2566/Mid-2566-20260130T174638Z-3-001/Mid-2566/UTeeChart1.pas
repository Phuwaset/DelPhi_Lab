unit UTeeChart1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Math, VclTee.TeeGDIPlus,
  VCLTee.TeEngine, VCLTee.Series, Vcl.ExtCtrls, VCLTee.TeeProcs, VCLTee.Chart;

type
  TForm1 = class(TForm)
    Lb1: TLabel;
    Bt1: TButton;
    Ed1: TEdit;
    Ed2: TEdit;
    Lb2: TLabel;
    Lb3: TLabel;
    Chart1: TChart;
    Series1: TLineSeries;
    Timer1: TTimer;
    Label1: TLabel;
    EdPhase: TEdit;
    Button1: TButton;
    Button2: TButton;
    procedure Bt1Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    v, f, t, p, dt, y:Single;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Bt1Click(Sender: TObject);
var
 i:Integer;
 v, f, t, dt, y:Single;
begin
 Series1.Clear;
 v:=StrToFloat(Ed1.Text);
 f:=StrToFloat(Ed2.Text);
 t:=0;
 dt:=((1/f)/360);
 for i:=0 to 360 do    // Plot Every 1 Degree
  begin
   //t:=DegToRad(i);
   //y:=v*Sin(t);
   //Series1.AddXY(i, y);

   y:=v*Sin(2*pi*f*t);
   Series1.AddXY(t, y);
   t:=t+dt;
  end;

end;

procedure TForm1.Button1Click(Sender: TObject);
begin
 Timer1.Enabled:=True;

 Series1.Clear;
 v:=StrToFloat(Ed1.Text);
 f:=StrToFloat(Ed2.Text);
 p:=DegToRad(StrToFloat(EdPhase.Text));
 t:=0;
 dt:=((1/f)/360);
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
 Timer1.Enabled:=False;
end;

procedure TForm1.Timer1Timer(Sender: TObject);
begin
 y:=v*Sin((2*pi*f*t)+p);
 Series1.AddXY(t, y);
 if (1/f)<Series1.XValues.Last then
  Series1.Delete(0);
 t:=t+dt;
end;

end.
