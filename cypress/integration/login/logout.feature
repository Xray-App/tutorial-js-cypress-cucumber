# @REQ_CALC-7906
# @REQ_CALC-633
@REQ_CALC-633
Feature: As a user, I can logout the application

Scenario: Valid Logout
    Given user is on the welcome page
    When user chooses to logout
    Then login page should be open