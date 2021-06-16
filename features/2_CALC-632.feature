@REQ_CALC-632
Feature: As a user, I can login the application
	#As a user, I can login the application

	#Tests As a user, I can logout the application
	@TEST_CALC-634
	Scenario: Valid Login
		Given browser is opened to login page
		When user "demo" logs in with password "mode"
		Then welcome page should be open
	#Tests As a user, I can logout the application
	@TEST_CALC-635
	Scenario: Invalid Login
		Given browser is opened to login page
		When user "dummy" logs in with password "password"
		Then error page should be open
	@TEST_CALC-636
	Scenario Outline: Login With Invalid Credentials Should Fail
		Given browser is opened to login page
		When user "<username>" logs in with password "<password>"
		Then error page should be open
		
			Examples:
				| username | password |
				| invalid  | mode     |
				| demo     | invalid  |
				| invalid  | invalid  |
				| demo     | mode     |
