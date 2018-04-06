@calculator
Feature: Adding Numbers

  Addition (often signified by the plus symbol "+") is one of the four basic
  operations of arithmetic; the others are subtraction, multiplication and division.
  The addition of two whole numbers is the total amount of those quantities combined.

  Background: A calculator used for all calculations

  A calculator is a simple device used to perform calculations, ranging from
  basic arithmetic to complex mathematics.

    Given I have a Calculator

  @addition, @single
  Scenario: Add two positive numbers
    Given I start with 1
    When I add 1
    Then the sum should be 2

  @addition, @data-table
  Scenario: Add multiple positive numbers

  Calculators allow multiple operations to be performed without losing the results
  calculated in prior calculations

    Given I start with 0
    When I add the following numbers:
      | 1 |
      | 2 |
      | 3 |
      | 4 |
    Then the sum should be 10

  @addition, @negative
  Scenario: Add negative numbers
    Given I start with 1
    When I add -1
    And I add 1
    Then the sum should be 1
