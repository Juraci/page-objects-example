Feature: Sign-up

  Scenario: Successful sign up
    Given I attempt to visit facebook page
    When I fill in the information
    Then I should have a facebook account

  Scenario: Sign up leaving the email blank
    Given I attempt to visit facebook page
    When I fill in the information leaving the email field blank
    Then I should see an error message
