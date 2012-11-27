Feature: Controlling the lights with motion detector
  In order to save energy
  As the motion detector is activated 
  The light should turn on or off

  Background:
    Given a light L01
    And a motion detector MD01
    And the motion detector MD01 is linked to the light L01
    And the motion detector MD01 is activated when someone passes in front of it

  Scenario: Motion detector activated
    Given the light L01 is off
    When the motion detector is activated
    Then the light L01 should turn on

  Scenario: Motion detector deactivated
    Given the light L01 is on
    When the motion detector is deactivated
    Then the light L01 should turn off

  Scenario: Motion detector deactivated with a timer
    Given the light L01 is on
    When 10s is elapsed
    And the motion detector is deactivated
    Then the light L01 should turn off