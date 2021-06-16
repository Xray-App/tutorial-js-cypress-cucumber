# @REQ_CALC-7905
# @REQ_CALC-632
@REQ_CALC-632
Feature: As a user, I can login the applicaiton

Scenario: Valid Login
    Given browser is opened to login page
    When user "demo" logs in with password "mode"
    Then welcome page should be open

Scenario: Invalid Login
    Given browser is opened to login page
    When user "dummy" logs in with password "password"
    Then error page should be open

Scenario Outline: Login With Invalid Credentials Should Fail
    Given browser is opened to login page
    When user "<username>" logs in with password "<password>"
    Then error page should be open

    Examples:
        | username  | password |
        | invalid   |   mode   |
        | demo      | invalid  |
        | invalid   | invalid  |