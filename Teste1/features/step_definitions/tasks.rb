common_page = CommonPage.new
task_page = TaskPage.new

Given(/^User is Logged in with Email "([^"]*)" and Password "([^"]*)"$/) do |email, pass|
  steps %Q{
    Given User is on Home Page
    And User Navigate to Sign in page
    And User enters Email "#{email}" and Password "#{pass}"
    When User Click on Sign in Button
    Then User should see the message "Signed in successfully."
  }
end

Given(/^click "([^"]*)" link$/) do |link|
    common_page.click_link(link)
end

Given(/^type a new Task "([^"]*)"$/) do |desc|
    @todo_created = desc + " " + Time.now.strftime("%Y-%d-%m %H:%M:%S %Z")
    task_page.task_fill(@todo_created)
end

When(/^click on add Button$/) do
    task_page.click_add_task_button
end

Then(/^the task should be appended on the list$/) do
    task_page.verify_last_todo_created(@todo_created)
end

When(/^hit "([^"]*)" key$/) do |key|
  pending # Write code here that turns the phrase above into concrete actions
end

Given(/^type a new Task with "([^"]*)" characters$/) do |chars|
  pending # Write code here that turns the phrase above into concrete actions
end

Then(/^the task can't be appended on the list$/) do
  pending # Write code here that turns the phrase above into concrete actions
end