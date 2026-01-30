unit UFirstApp; // Unit หลัก

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  Vcl.StdCtrls; // ไม่มีการใช้ Unit CarPark

type

// **********************************
// 1. TStudent (Class แม่)
// **********************************
  TStudent = class
  private
    fName: String;
    fAge: Integer;
  public
    function getAge: Integer;
    function setAge(Age: Integer): Boolean;
    constructor Create;
  end;

// **********************************
// 2. TStudent2 (Class ลูก ที่สืบทอดจาก TStudent)
// **********************************
  TStudent2 = class(TStudent) // สืบทอดจาก TStudent
  private
    fGender: String; // Property ที่เพิ่มมาตามโจทย์
  public
    function getGender: String; // Method GetGender
    function setGender(Gender: String): Boolean; // Method SetGender
    constructor Create;
  end;

// **********************************
// 3. TForm1 (Class ของ Form)
// **********************************
  TForm1 = class(TForm)
    Label1: TLabel; // สำหรับแสดงผล
    Button1: TButton; // SetGender('Male')
    Button2: TButton; // SetGender('Female')
    Button3: TButton;
    EditAge: TEdit;
    ButtonSetAge: TButton;
    ButtonGetAge: TButton; // GetGender()

    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure ButtonGetAgeClick(Sender: TObject);
    procedure ButtonSetAgeClick(Sender: TObject); // สำหรับจัดการหน่วยความจำ
  private
    MyStudent: TStudent2; // ประกาศ Object TStudent2
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

// **********************************
// 4. Implementations ของ Class TStudent
// **********************************
constructor TStudent.Create;
begin
  Inherited Create;
  fName := '';
  fAge := 0;
end;

function TStudent.getAge: Integer;
begin
  Result := fAge;
end;

function TStudent.setAge(Age: Integer): Boolean;
begin
  if 0 < Age then
  begin
    fAge := Age;
    Result := True;
  end
  else
    Result := False;
end;

// **********************************
// 5. Implementations ของ Class TStudent2
// **********************************
constructor TStudent2.Create;
begin
  Inherited Create; // เรียก TStudent.Create
  fGender := 'Unknown'; // ค่าเริ่มต้น
end;

function TStudent2.getGender: String;
begin
  Result := fGender;
end;

function TStudent2.setGender(Gender: String): Boolean;
begin
  // ตรวจสอบความถูกต้องเบื้องต้น
  if (UpperCase(Gender) = 'MALE') or (UpperCase(Gender) = 'FEMALE') then
  begin
    fGender := Gender;
    Result := True;
  end
  else
    Result := False;
end;

// **********************************
// 6. Implementations ของ Form Events
// **********************************

procedure TForm1.FormCreate(Sender: TObject);
begin
  // สร้าง Object
  MyStudent := TStudent2.Create;
  Label1.Caption := 'Student Object Created. Ready to set Gender.';
end;

procedure TForm1.Button1Click(Sender: TObject);
begin
  // SetGender('Male')
  if MyStudent.setGender('Male') then
    Label1.Caption := 'Gender set OK: Male'
  else
    Label1.Caption := 'SetGender Failed';
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  // SetGender('Female')
  if MyStudent.setGender('Female') then
    Label1.Caption := 'Gender set OK: Female'
  else
    Label1.Caption := 'SetGender Failed';
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
  // GetGender() และแสดงผลที่ Label
  Label1.Caption := 'Current Gender is: ' + MyStudent.getGender;
end;

procedure TForm1.ButtonGetAgeClick(Sender: TObject);
begin
  Label1.Caption := 'Current Age is: ' + IntToStr(MyStudent.getAge);
end;

procedure TForm1.ButtonSetAgeClick(Sender: TObject);
var
  AgeInput: Integer;
begin
  // แปลงค่าจาก EditBox (ที่เป็นข้อความ) ให้เป็นตัวเลข
  // ใช้ TryStrToInt เพื่อกัน Error ถ้าคนพิมพ์ตัวหนังสือมาแทนตัวเลข
  if TryStrToInt(EditAge.Text, AgeInput) then
  begin
    // เรียกใช้ Method setAge ที่สืบทอดมาจาก TStudent
    if MyStudent.setAge(AgeInput) then
      ShowMessage('บันทึกอายุสำเร็จ: ' + IntToStr(AgeInput))
    else
      ShowMessage('อายุไม่ถูกต้อง (ต้องมากกว่า 0)');
  end
  else
  begin
    ShowMessage('กรุณากรอกตัวเลขเท่านั้น');
  end;
end;

procedure TForm1.FormDestroy(Sender: TObject);
begin
  // ทำลาย Object
  FreeAndNil(MyStudent);
end;

end.
