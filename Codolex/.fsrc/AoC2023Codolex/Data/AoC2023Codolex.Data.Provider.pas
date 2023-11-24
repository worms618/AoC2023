unit AoC2023Codolex.Data.Provider;

interface

uses
  AoC2023Codolex.Data.Provider.Interfaces;

type
  TProvider = class(TInterfacedObject, AoC2023Codolex.Data.Provider.Interfaces.IProvider)
  public
    class function GetAsString(const Day: Integer; const Part: Integer): string;
  end;

implementation

uses
  AoC2023Codolex.Utils.IO,
  System.IOUtils,
  System.SysUtils;

class function TProvider.GetAsString(const Day: Integer; const Part: Integer): string;
begin
  var PartDataFilePath := AoC2023Codolex.Utils.IO.TIO.ComposePartDataFilePath(Day, Part);
  var PartData_1: string;
  PartData_1 := TFile.ReadAllText(PartDataFilePath);
  Result := PartData_1;
end;

end.