unit Day1;

interface

uses
  DUnitX.TestFramework;

type
  [TestFixture]
  [Category('day1')]
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
  AoC2023Codolex.Days.Day1;

procedure TDayXTest.Setup;
begin
end;

procedure TDayXTest.TearDown;
begin
end;

procedure TDayXTest.Part1;
begin
  var Expected: Integer := 0;
  var Actual := TDay1.Part1();

  Assert.AreEqual(Expected, Actual);
end;

procedure TDayXTest.Part2;
begin
  var Expected: Integer := 0;
  var Actual := TDay1.Part2();

  Assert.AreEqual(Expected, Actual);
end;

end.
