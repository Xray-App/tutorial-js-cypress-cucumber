@REQ_CALC-633
Feature: As a user, I can logout the application
	#As a user, I can logout the application

	@TEST_CALC-637
	Scenario: Valid Logout
		Given user is on the welcome page
		When user chooses to logout
		Then login page should be open
