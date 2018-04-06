@calculator
Feature: Multiplying Numbers

  Background: A calculator used for all calculations

    Given I have a Calculator

  @multiplication
  Scenario: Multiply two positive numbers
    When I multiply 1 by 1
    Then the result should be 1
