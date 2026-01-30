unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms,
  Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    Edit1: TEdit;
    Label1: TLabel;
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Edit1KeyPress(Sender: TObject; var Key: Char);
var
  x: Integer;
begin
  // ถ้าพิมพ์ a
  if Key = 'a' then
    raise Exception.Create('Error a!');
  // ถ้าพิมพ์ b
  if Key = 'b' then
  begin
    try
      x := StrToInt('abc'); // แปลงค่าให้เกิด Error
    except
      on E: Exception do
        ShowMessage(E.Message);
    end;
  end;
end;

end.

