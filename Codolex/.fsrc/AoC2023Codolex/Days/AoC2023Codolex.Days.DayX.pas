unit AoC2023Codolex.Days.DayX;

interface

uses
  AoC2023Codolex.Days.DayX.Interfaces;

type
  TDayX = class(TInterfacedObject, AoC2023Codolex.Days.DayX.Interfaces.IDayX)
  public
    class function Part1: Integer;
    class function Part2: Integer;
  end;

implementation

uses
  AoC2023Codolex.Data.Provider;

class function TDayX.Part1: Integer;
begin
  var Input := AoC2023Codolex.Data.Provider.TProvider.GetAsString(0, 1);
  var Variable: Integer := 0;
  Result := Variable;
end;

class function TDayX.Part2: Integer;
begin
  var Input := AoC2023Codolex.Data.Provider.TProvider.GetAsString(0, 2);
  var Variable: Integer := 0;
  Result := Variable;
end;

end.