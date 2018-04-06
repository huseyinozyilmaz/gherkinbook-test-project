@length-conversion
Feature: Length Conversion
  As an engineer
  I want to convert length measurements
  So that I can use those conversions in formulas

  Scenario Outline: Convert centimetre to inch
    Given I have a unit converter
    When I convert <centimetre> centimetre to inch
    Then the result must be <inch> inch

    Examples: Centimetre to Inch
      | centimetre | inch        |
      | 101.0      | 39.76377979 |
      | 1.0        | 0.39370079  |

  Scenario Outline: Convert inch to centimetre
    Given I have a unit converter
    When I convert <inch> inch to centimetre
    Then the result must be <centimetre> centimetre

    Examples: Inch to Centimetre
      | inch | centimetre |
      | 1.0  | 2.54       |
      | 5.0  | 12.7       |
