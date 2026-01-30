unit App;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Menus;

type
  TForm1 = class(TForm)
    Edit1: TEdit;
    Button1: TButton;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    MainMenu1: TMainMenu;
    Process1: TMenuItem;
    Cal1: TMenuItem;
    exit1: TMenuItem;
    Label4: TLabel;
    EditVat: TEdit;
    procedure Button1Click(Sender: TObject);
    procedure Cal1Click(Sender: TObject);
    procedure exit1Click(Sender: TObject);
//    procedure EditVat(Sender: TObject);
  private
    { Private declarations }
    function Calvat(input:Integer):Single;
    procedure PCalvat();
    procedure PCalvat_MainMenu();
  public
    { Public declarations }
  end;
  var
    Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin
  PCalvat();
end;

procedure TForm1.Cal1Click(Sender: TObject);
begin
  PCalvat_MainMenu();
end;


function TForm1.Calvat(input: Integer): Single;
var
 PerVat:Integer;
begin
 PerVat:=StrToInt(EditVat.Text);
 Result:=input*PerVat/100;;
end;



procedure TForm1.exit1Click(Sender: TObject);
begin
  Close;
end;

procedure TForm1.PCalvat;
var
  input: Integer;
  vat: Single;
  Pervat: Integer;
begin
try
  if not TryStrToInt(Edit1.Text, input) then
  begin
    ShowMessage('Please enter number only');
    Exit;
  end;

  vat := Calvat(input);

  Label3.Caption:=FormatFloat('0.00', (vat));
except
  ShowMessage('Plase Type a number!');

end;
end;

procedure TForm1.PCalvat_MainMenu;
var
  input: Integer;
  vat: Single;
begin
try
  if not TryStrToInt(Edit1.Text, input) then
  begin
    ShowMessage('Please enter number only');
    Exit;
  end;

  vat := Calvat(input);
  Label3.Caption:=FloatToStr(vat);
  ShowMessage('Your vat is '+ FormatFloat('0.00', (vat)) + ' bath');
except
  ShowMessage('Plase Type a number!');
end;
end;
end.
