Feature: Controlling the lights with photoresistors
  In order to save energy
  As the ambiant light reduces or raises 
  The light should turn on or off

  Background:
    Given a light L01
    And a photoresistor P01
    And the photoresistor P01 is linked to the light L01

  Scenario: Ambiant light lowers
    Given the light L01 is off
    When the ambient light is low
    Then the light L01 should turn on

  Scenario: Ambiant light highens
    Given the light L01 is on
    When the ambient light is high
    Then the light L01 should turn off
