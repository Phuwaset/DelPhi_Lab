unit UClass2;

interface

uses SysUtils, UClass1; // <<< ต้องเรียกใช้ UClass1 เพื่อให้รู้จัก TStudent

type
  [cite_start]TStudent2 = class(TStudent) // <<< สืบทอดมาจาก TStudent [cite: 743]
  private
    fGender: String; [cite_start]// Property ใหม่ตามโจทย์ [cite: 767]
  public
    function getGender: String; [cite_start]// Method GetGender [cite: 767]
    function setGender(Gender: String): Boolean; [cite_start]// Method SetGender [cite: 767]
    constructor Create;
  end;

implementation

{ TStudent2 }

constructor TStudent2.Create;
begin
  Inherited Create; // เรียกตัวสร้างของ TStudent
  fGender := 'Unknown'; // กำหนดค่าเริ่มต้น
end;

function TStudent2.getGender: String;
begin
  Result := fGender;
end;

function TStudent2.setGender(Gender: String): Boolean;
begin
  // ตรวจสอบความถูกต้องก่อนการกำหนดค่า
  if (UpperCase(Gender) = 'MALE') or (UpperCase(Gender) = 'FEMALE') then
  begin
    fGender := Gender;
    Result := True;
  end
  else
    Result := False;
end;

end.
