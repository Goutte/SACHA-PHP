Feature: Turning off the lights with photoresistors
  In order to save energy
  As the ambiant light reduces or raises 
  The light should turn on or off

  Scenario: Ambiant light is low
    Given the light is off
    And a photoresistor is set on the light
    When the ambient light is low
    Then the light should turn on
    
  Scenario: Ambiant light is high
    Given the light is on
    And a photoresistor is set on the light
    When the ambient light is high
    Then the light should turn off

 