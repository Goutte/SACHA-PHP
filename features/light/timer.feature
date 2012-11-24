Feature: Turning off the lights with timers
  In order to save energy
  As a Person
  I need to be able to set timers on some lights

  Background:
    Given a light
    And a person named Sam
    And Sam sets a timer on the light

  Scenario: Inactivity
    Given the light is on
    And the light has // TODO
    When times passes
    Then the light should turn off
