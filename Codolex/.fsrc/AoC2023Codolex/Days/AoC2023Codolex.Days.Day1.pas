unit AoC2023Codolex.Days.Day1;

interface

uses
  AoC2023Codolex.Days.Day1.Interfaces;

type
  TDay1 = class(TInterfacedObject, AoC2023Codolex.Days.Day1.Interfaces.IDay1)
  public
    class function Part1: Integer;
    class function Part2: Integer;
  end;

implementation

uses
  AoC2023Codolex.Data.Provider;

class function TDay1.Part1: Integer;
begin
  var Input := AoC2023Codolex.Data.Provider.TProvider.GetAsString(1, 1);
  var Variable: Integer := 0;
  Result := Variable;
end;

class function TDay1.Part2: Integer;
begin
  var Input := AoC2023Codolex.Data.Provider.TProvider.GetAsString(1, 2);
  var Variable: Integer := 0;
  Result := Variable;
end;

end.