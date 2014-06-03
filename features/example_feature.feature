Feature: Addition
  In order to avoid silly mistakes
  As a math idiot
  I want to be told the answer to various math operations

  Scenario: Add two numbers
    Given I have entered 50 into the calculator
    And I have then entered 70 into the calculator
    When I press add
    Then the result should be 120 on the screen

  Scenario: Multiply two numbers
    Given I have entered 100 into the calculator
    And I have then entered 200 into the calculator
    When I press multiply
    Then the result should be 20000 on the screen

  Scenario: Divide one number by another
    Given I have entered 200 into the calculator
    And I have then entered 10 into the calculator
    When I press divide
    Then the result should be 20 on the screen

  Scenario: Rails one number to the other's power
    Given I have entered 2 into the calculator
    And I have then entered 3 into the calculator
    When I press power
    Then the result should be 8 on the screen