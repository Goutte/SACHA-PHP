Feature: Controlling the lights with biased switches
  In order to see when it is dark
  As a Person
  I need to be able to turn the lights on and off

  Background:
    Given a light L1
    And a biased switch S1
    And S1 controls L1

  Scenario: Turning a light on with a switch
    Given the light L1 is off
    When I hit the switch S1
    Then the light L1 should turn on

  Scenario: Turning a light off with a switch
    Given the light L1 is on
    When I hit the switch S1
    Then the light L1 should turn off
