@CreateTask
Feature: Create Task
  As a ToDo App user
  I should be able to create a task
  So I can manage my tasks

@SuccessfulLogin
Scenario: Successful Login
	Given User is on Home Page
	And User Navigate to Sign in page
	And User enters Email "rafaponzio@gmail.com" and Password "teste1222"
  When User Click on Sign in Button
  Then User should see the message "Signed in successfully."

@CreateNormalTask
Scenario: Create normal task
  Given User is Logged in with Email "rafaponzio@gmail.com" and Password "teste1222"
  And click "My Tasks" link
  And type a new Task "New Task"
  When click on add Button
  Then the task should be appended on the list

@CreateNormalTaskEnter
Scenario: Create normal task hitting enter
  Given User is Logged in with Email "rafaponzio@gmail.com" and Password "teste1222"
  And click "My Tasks" link
  And type a new Task "New Task"
  When hit "Enter" key
  Then the task should be appended on the list

@TaskWithExceedCharacters
Scenario: Create a task with exceed 250 characters
  Given User is Logged in with Email "rafaponzio@gmail.com" and Password "teste1222"
  And click "My Tasks" link
  And type a new Task with "251" characters
  When click on add Button
  Then the task can't be appended on the list

@TaskWithLessCharacters
Scenario: Create a task with exceed 250 characters
  Given User is Logged in with Email "rafaponzio@gmail.com" and Password "teste1222"
  And click "My Tasks" link
  And type a new Task with "2" characters
  When click on add Button
  Then the task can't be appended on the list
