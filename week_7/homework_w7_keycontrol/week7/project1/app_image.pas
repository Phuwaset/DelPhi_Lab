unit app_image;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls;

type
  TForm1 = class(TForm)
    Im1: TImage;
    procedure Im1MouseMove(Sender: TObject; Shift: TShiftState; X, Y: Integer);
    procedure Im1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Im1MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  if Button = mbLeft then
  begin
    Im1.Canvas.Pen.Color := clRed;
    Im1.Canvas.Pen.Width := 5;
    Im1.Canvas.MoveTo(X, Y);
  end;


  if Button = mbRight then
  begin
    Im1.Canvas.Pen.Color := clGreen;
    Im1.Canvas.Pen.Width := 3;
    Im1.Canvas.MoveTo(X, Y);
  end;

  if Button = mbMiddle then
  begin

    Im1.Canvas.Brush.Color := clWhite;
    Im1.Canvas.FillRect(Im1.ClientRect);
  end;
end;

procedure TForm1.Im1MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
  Form1.Caption := IntToStr(X) + ',' + IntToStr(Y);

  if (ssCtrl in Shift) then
  begin

    Im1.Canvas.LineTo(X, Y);
end;

end;

end.
