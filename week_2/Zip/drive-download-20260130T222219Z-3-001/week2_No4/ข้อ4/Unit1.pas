unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Label1: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  FreePark: Integer;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin
   if FreePark < 100 then
    Inc(FreePark)
  else
    ShowMessage('ลานจอดว่างอยู่แล้ว!');

  Label1.Caption := 'ที่จอดว่าง: ' + IntToStr(FreePark);
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
   if FreePark > 0 then
    Dec(FreePark)
  else
    ShowMessage('ลานจอดเต็มแล้ว!');

  Label1.Caption := 'ที่จอดว่าง: ' + IntToStr(FreePark);
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
  Label1.Caption := 'ที่จอดว่าง: ' + IntToStr(FreePark);
  ShowMessage('ที่จอดว่างตอนนี้: ' + IntToStr(FreePark) + ' คัน');
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  FreePark := 100;  // เริ่มต้น 100 คัน
  Label1.Caption := 'ที่จอดว่าง: ' + IntToStr(FreePark);
//  Form1.Color:=clGray;
end;

end.
