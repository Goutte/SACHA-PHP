Feature: Turning off the lights with timers
  In order to save energy
  As a Person
  I need to be able to set timers on some lights

  Scenario: Inactivity
    Given the light is on
    And a timer is set on the light
    When the light has been on for the duration of the timer
    Then the light should turn off

  Scenario: Resetting the timer
    Given the light is on
    And a timer is set on the light
    When the light has been on for less than the duration of the timer
    And the light receives a "turn on" signal
    Then the timer should reset
