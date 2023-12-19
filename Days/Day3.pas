unit Day3;

interface

uses
  DUnitX.TestFramework;

type
  [TestFixture]
  [Category('Day3')]
  TDay3Test = class
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
  AoC2023Codolex.Days.Day3;

procedure TDay3Test.Setup;
begin
end;

procedure TDay3Test.TearDown;
begin
end;

procedure TDay3Test.Part1;
begin
  var Expected: Integer := 0;
  var Actual := TDay3.Part1();

  Assert.AreEqual(Expected, Actual);
end;

procedure TDay3Test.Part2;
begin
  var Expected: Integer := 0;
  var Actual := TDay3.Part2();

  Assert.AreEqual(Expected, Actual);
end;

end.
