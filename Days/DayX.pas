unit DayX;

interface

uses
  DUnitX.TestFramework;

type
  [TestFixture]
  TDayXTest = class
  public
    [Setup]
    procedure Setup;

    [TearDown]
    procedure TearDown;

    [Test]
    procedure Part1;

    [Test]
    procedure Part2;
  end;

implementation

uses
  AoC2023Codolex.Days.DayX;

procedure TDayXTest.Setup;
begin
end;

procedure TDayXTest.TearDown;
begin
end;

procedure TDayXTest.Part1;
begin
  var Expected: Integer := 0;
  var Actual := TDayX.Part1();

  Assert.AreEqual(Expected, Actual);
end;

procedure TDayXTest.Part2;
begin
  var Expected: Integer := 0;
  var Actual := TDayX.Part2();

  Assert.AreEqual(Expected, Actual);
end;

end.
