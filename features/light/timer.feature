Feature: Turning off the lights with timers
  In order to save energy
  As a Person
  I need to be able to set timers on some lights

#  Background:
#    Given a light
#    And a person named Sam
#    And Sam sets a timer on the light

  Scenario: Inactivity
    Given the light is on
    And a timer for 10s is set on the light
    When tha light has been on for 10s
    Then the light should turn off

  # not really satisfied of this one
  Scenario: Resetting the timer
    Given the light is on
    And a timer is set on the light
    When the light receives a "turn on" signal
    Then the timer should reset
