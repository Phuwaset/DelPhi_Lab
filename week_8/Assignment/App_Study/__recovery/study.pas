unit study;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons;

type
  TForm2 = class(TForm)
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    LbAns: TLabel;
    ComboBox1: TComboBox;
    Ed1: TEdit;
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

{$R *.dfm}

procedure TForm2.BitBtn1Click(Sender: TObject);
var
  Din:string;
begin
  Din:=Ed1.Text;
  if (Din = '1') or (Form2.Color=clGreen) then
  begin
    LbAns.Caption:='In 1';
    Form2.Color:=clRed;
  end
  else if not (Din = '2') then
  begin
    LbAns.Caption:='Din 2';
    Form2.Color:=clGreen;
  end
  else
    LbAns.Caption:='Not in list';
end;

procedure TForm2.BitBtn2Click(Sender: TObject);
var
  i,j:Integer;
begin
  for i := 1 to 3 do
    begin
      ShowMessage(IntToStr(i));
    end;

  for i := 3 downto 1 do
    begin
      ShowMessage(IntToStr(i));
    end;
  for i := 1 to 3 do
    begin
      for j := 1 to 3 do
        begin
          ShowMessage(IntToStr(i) + ',' +IntToStr(j));
        end;
    end;

end;

procedure TForm2.BitBtn3Click(Sender: TObject);
var
  i:Integer;
begin
  i:=0;
  while i<3 do
    ShowMessage(IntToStr(i));
    Inc(i);
end;

procedure TForm2.BitBtn4Click(Sender: TObject);
var
  i:Integer;
begin
  i:=0;
  repeat
    ShowMessage(IntToStr(i));
    Inc(i);
  until i>3;
end;

procedure TForm2.BitBtn5Click(Sender: TObject);
var
  i:integer;
begin
  i := ComboBox1.ItemIndex;
  case i of
  0:ShowMessage(IntToStr(i));
  1:
    begin
      ShowMessage(IntToStr(i));
      Form2.Color:=clRed;
    end;
  3:
    begin
      ShowMessage(IntToStr(i));
      Form2.Color:=clGreen;
    end;
  end;
end;

end.
