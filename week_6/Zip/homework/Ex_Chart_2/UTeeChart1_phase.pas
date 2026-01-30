unit UTeeChart1_phase;

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
    bt3: TButton;
    bt2: TButton;
    Ed3: TEdit;
    Label1: TLabel;
    procedure Bt1Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure bt3Click(Sender: TObject);
    procedure bt2Click(Sender: TObject);
  private
    { Private declarations }
    t: Single;
    IsStop: Boolean;
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Bt1Click(Sender: TObject);
var
  i: Integer;
  Vm, f, phi, dt, y: Double;
  Points: Integer;
begin
  Series1.Clear;
  IsStop := False;

  if (Ed1.Text = '') or (Ed2.Text = '') then Exit;

  Vm := StrToFloat(Ed1.Text);
  f  := StrToFloat(Ed2.Text);
  phi := StrToFloatDef(Ed3.Text, 0);


  Points := 360;
  dt := (1 / f) / Points;
  t := 0;

  for i := 0 to Points do
  begin
    if IsStop then Break;

    y := Vm * Sin((2 * Pi * f * t) + DegToRad(phi));

    Series1.AddXY(t, y);

    t := t + dt;

  end;
end;

procedure TForm1.bt2Click(Sender: TObject);
begin
  IsStop := True;
  Series1.Clear;
  Timer1.Enabled := False;
end;

procedure TForm1.bt3Click(Sender: TObject);
begin
  t := 0;
  Series1.Clear;
  Timer1.Enabled := True;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  t := 0;
  Series1.Clear;
  Timer1.Enabled := False;
end;

procedure TForm1.Timer1Timer(Sender: TObject);
var
  Vm, f, phi, dt, y: Double;
begin
  if (Ed1.Text = '') or (Ed2.Text = '') then Exit;

  Vm  := StrToFloat(Ed1.Text);
  f   := StrToFloat(Ed2.Text);
  phi := StrToFloatDef(Ed3.Text, 0);

  dt := (1 / f) / 200;

  y := Vm * Sin((2 * Pi * f * t) + DegToRad(phi));

  Series1.AddXY(t, y);

  if Series1.Count > 400 then
  begin
    Series1.Delete(0);
  end;

  t := t + dt;
end;
end.
