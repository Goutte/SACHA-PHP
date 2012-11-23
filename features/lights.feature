Feature: Controlling the lights with switches
  In order to see when it is dark
  As a Person
  I need to be able to turn the lights on and off

  Scenario: Turning a light on with a switch
    Given a light is off
    And that light is linked to a switch
    When I hit the switch
    Then the light should turn on

  Scenario: Turning a light off with a switch
    Given a light is on
    And that light is linked to a switch
    When I hit the switch
    Then the light should turn off


  # group -> set ? (to think)

  Scenario: Turning a group of lights on with a switch
    Given a group of lights that are off
    And that group is linked to a switch
    When I hit the switch
    Then the lights of the group should turn on

  Scenario: Turning a group of lights off with a switch
    Given a group of lights that are on
    And that group is linked to a switch
    When I hit the switch
    Then the lights of the group should turn off