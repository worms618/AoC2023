unit Day1;

interface

uses
  DUnitX.TestFramework;

type
  [TestFixture]
  [Category('day1')]
  TDay1Test = class
  private
    function GetCalibrationValue(Line: string): Integer;
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
  AoC2023Codolex.Days.Day1,
  System.SysUtils,
  System.Generics.Collections;

procedure TDay1Test.Setup;
begin
end;

procedure TDay1Test.TearDown;
begin
end;

procedure TDay1Test.Part1;
begin
  var Expected: Integer := 54561;
  var Actual := TDay1.Part1();

  Assert.AreEqual(Expected, Actual);
end;

procedure TDay1Test.Part2;
begin
  var Expected: Integer := 54076;
  var Actual := TDay1.Part2(GetCalibrationValue);

  Assert.AreEqual(Expected, Actual);
end;

function TDay1Test.GetCalibrationValue(Line: string): Integer;
begin
  var LastDigit: string;
  var FirstDigit: string;

  var DigitsWithValue := TDictionary<string, string>.Create;
  var SubStringLengthsToCheck := TList<Integer>.Create;
  try
    DigitsWithValue.AddOrSetValue('1', '1');
    DigitsWithValue.AddOrSetValue('2', '2');
    DigitsWithValue.AddOrSetValue('3', '3');
    DigitsWithValue.AddOrSetValue('4', '4');
    DigitsWithValue.AddOrSetValue('5', '5');
    DigitsWithValue.AddOrSetValue('6', '6');
    DigitsWithValue.AddOrSetValue('7', '7');
    DigitsWithValue.AddOrSetValue('8', '8');
    DigitsWithValue.AddOrSetValue('9', '9');

    DigitsWithValue.AddOrSetValue('one', '1');
    DigitsWithValue.AddOrSetValue('two', '2');
    DigitsWithValue.AddOrSetValue('three', '3');
    DigitsWithValue.AddOrSetValue('four', '4');
    DigitsWithValue.AddOrSetValue('five', '5');
    DigitsWithValue.AddOrSetValue('six', '6');
    DigitsWithValue.AddOrSetValue('seven', '7');
    DigitsWithValue.AddOrSetValue('eight', '8');
    DigitsWithValue.AddOrSetValue('nine', '9');

    for var Digit in DigitsWithValue.Keys do
    begin
      var DigitLength := Digit.Length;
      if not SubStringLengthsToCheck.Contains(DigitLength) then
        SubStringLengthsToCheck.Add(DigitLength);
    end;

    SubStringLengthsToCheck.Sort;

    var Index: Integer := 0;
    while Index < Line.Length do
    begin
      var NextIndexValue := Index + 1;

      for var SubStringLength in SubStringLengthsToCheck do
      begin
        var CanMakeSubString := (Index + SubStringLength) <= Line.Length;
        if not CanMakeSubString then
          Continue;

        var SubString := Line.Substring(Index, SubStringLength);
        if DigitsWithValue.ContainsKey(SubString) then
        begin
          var DigitValue := DigitsWithValue[SubString];

          LastDigit := DigitValue;
          if FirstDigit = '' then
            FirstDigit := DigitValue;

          NextIndexValue := Index + SubStringLength;
          Break;
        end;
      end;

      Index := NextIndexValue;
    end;
  finally
    DigitsWithValue.Free;
    SubStringLengthsToCheck.Free;
  end;

  var ValueAsString := (FirstDigit + LastDigit);
  if ValueAsString.IsEmpty then
    raise Exception.CreateFmt('Line: [%s]', [Line]);
  Result := ValueAsString.ToInteger;
end;

end.
