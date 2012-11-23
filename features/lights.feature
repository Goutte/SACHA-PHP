Feature: Controlling the lights with switches
  In order to see when it is dark
  As a Person
  I need to be able to turn the lights on and off

  Scenario: Turning a light on with a switch
    Given a light is off
    And that light is linked to a switch
    #And a switch that controls this light (other way to write this, find out which one is better)
    When I hit the switch
    Then the light should turn on

  Scenario: Turning a light off with a switch
    Given a light is on
    And that light is linked to a switch
    When I hit the switch
    Then the light should turn off


  # group -> set ? (to think)

  Scenario: Turning on a group of lights with a switch
    Given a group of lights
    And all the lights are off
    And that group is linked to a switch
    When I hit the switch
    Then the lights of the group should turn on

  Scenario: Turning off a group of lights with a switch
    Given a group of lights
    And all the lights are on
    And that group is linked to a switch
    When I hit the switch
    Then the lights of the group should turn off


  Scenario: Turning on a group of disparate lights with a switch
    Given a group of lights
    And some of the lights are on
    And some of the lights are off
    And that group is linked to a switch
    When I hit the switch
    Then the lights of the group should turn on