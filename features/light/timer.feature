Feature: Turning off the lights with timers
  In order to save energy
  As a Person
  I need to be able to set timers on lights

  Background:
    Given a light L1
    And a timer T1
    And the timer T1 controls the light L1

  Scenario: Reaching the end of the timer
    Given the light L1 is on
    When the light L1 has been on for the duration of the timer T1
    Then the light L1 should turn off

  Scenario: Resetting the timer
    Given the light L1 is on
    When the light L1 has been on for less than the duration of the timer T1
    And the light L1 receives a power on signal
    Then the timer T1 should reset
