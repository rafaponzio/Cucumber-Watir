Feature: Login Action
  As a ToDo App user
  I should be able to create a task
  So I can manage my tasks

@SuccessfulLogin
Scenario: Successful Login
	Given User is on Home Page
	When User Navigate to Sign in page
	And User enters Email "rafaponzio@gmail.com" and Password "teste1222"
  And User Click on Sign in Button
  Then User should see the message "Signed in successfully."
