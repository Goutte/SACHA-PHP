Feature: Controlling the lights with toggle switches
  In order to see when it is dark
  As a Person
  I need to be able to turn the lights on and off

  Background:
    Given a light L1
    And a toggle switch S1
    And S1 controls L1

  Scenario: Turning a light on with a toggle switch
    Given the light L1 is off
    When I toggle on the switch S1
    Then the light L1 should turn on

  Scenario: Turning a light off with a toggle switch
    Given the light L1 is on
    When I toggle off the switch S1
    Then the light L1 should turn off

  Scenario: Preventing a stroboscopic behavior
    Given the light L1 is off
    When I toggle on the switch S1
    And the light L1 has been turned on at least N times in the last M milliseconds
    Then the light L1 should stay off