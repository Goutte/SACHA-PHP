Feature: Controlling the lights with photoresistors
  In order to save energy
  As the ambient light reduces or raises 
  The light should power up or down accordingly

  Background:
    Given a light L01
    And a photoresistor P01
    And the photoresistor P01 controls the light L01

  Scenario: Ambient light lowers
    Given the light L01 is off
    When the photoresistor P01 reads a low light # ambient light is low
    Then the light L01 should turn on

  Scenario: Ambient light highens
    Given the light L01 is on
    When the photoresistor P01 reads a high light # ambient light is high
    Then the light L01 should turn off

  # todo : read <N>%, power to <100-N>%