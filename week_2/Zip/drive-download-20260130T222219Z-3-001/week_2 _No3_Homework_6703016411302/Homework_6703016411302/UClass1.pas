unit UClass1;

interface

uses SysUtils; [cite_start]// ต้องใช้ SysUtils เพื่อให้ใช้ IntToStr ได้ [cite: 688]

type
  TStudent = class
  private
    fName: String;
    fAge: Integer;
  public
    function getAge: Integer;
    function setAge(Age: Integer): Boolean;
    constructor Create;
  end;

implementation

{ TStudent }

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

end.
