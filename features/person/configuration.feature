Feature: Configure the lights
  In order to customize my house
  As a Person
  I need to be able to configure the behaviors of my lights

  Background:
    Given a light named L01
    And a light named L02
    And a biased switch named BS01
    And a biased switch named BS02
    And a timer named T01
    And I am logged
    And I am on the lights configuration page

  Scenario: Link a biased switch to a light
    Given I select L01
    And I select BS01
    When I click on the button Link
    Then I should receive a positive feedback
    And L01 and BS01 should be linked

  Scenario: Link a timer to a light
    Given I select L01
    And I select T01
    When I click on the button Link
    Then I should receive a positive feedback
    And L01 and T01 should be linked
    
  Scenario: Nobody is here
  	Given I am the only person here
    When I leave
  	Then all the lights should turn off

  # Scenario: Somebody comes back