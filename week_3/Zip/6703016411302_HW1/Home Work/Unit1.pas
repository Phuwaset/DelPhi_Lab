unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, StdCtrls;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
  private
    procedure ChangeLabelText(ALabel: TLabel);
  public
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.ChangeLabelText(ALabel: TLabel);
begin
  ALabel.Caption := 'ok';
end;

procedure TForm1.Button1Click(Sender: TObject);
begin
  ChangeLabelText(Label1);
end;

end.

