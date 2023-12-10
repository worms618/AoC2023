unit Day2;

interface

uses
  DUnitX.TestFramework;

type
  [TestFixture]
  [Category('day2')]
  TDay2Test = class
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
  AoC2023Codolex.Days.Day2;

procedure TDay2Test.Setup;
begin
end;

procedure TDay2Test.TearDown;
begin
end;

procedure TDay2Test.Part1;
begin
  var Expected: Integer := 8;
  var Actual := TDay2.Part1();

  Assert.AreEqual(Expected, Actual);
end;

procedure TDay2Test.Part2;
begin
  var Expected: Integer := 0;
  var Actual := TDay2.Part2();

  Assert.AreEqual(Expected, Actual);
end;

end.
