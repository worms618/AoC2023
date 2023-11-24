unit AoC2023Codolex.Utils.IO;

interface

uses
  AoC2023Codolex.Utils.IO.Interfaces;

type
  TIO = class(TInterfacedObject, AoC2023Codolex.Utils.IO.Interfaces.IIO)
  public
    class function ComposeDayDirectory(const Day: Integer): string;
    class function ComposePartDataFilePath(const Day: Integer; const Part: Integer): string;
  end;

implementation

uses
  System.IOUtils,
  System.SysUtils;

class function TIO.ComposeDayDirectory(const Day: Integer): string;
begin
  var DataRootDirectory: string := TPath.Combine(TPath.Combine('..', '..'), 'Data');
  var DayDirectory: string := TPath.Combine(DataRootDirectory, Day.ToString);
  Result := DayDirectory;
end;

class function TIO.ComposePartDataFilePath(const Day: Integer; const Part: Integer): string;
begin
  var DayDirectory := ComposeDayDirectory(Day);
  var PartFileName: string := Format('part%d.txt', [Part]);
  var PartDataFilePath: string := TPath.Combine(DayDirectory, PartFileName);
  Result := PartDataFilePath;
end;

end.