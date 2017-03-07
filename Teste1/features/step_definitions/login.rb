login_page = LoginPage.new
common_page = CommonPage.new

Given(/^User is on Home Page$/) do
  common_page.navigate "http://qa-test.avenuecode.com/"
end

When(/^User Navigate to Sign in page$/) do
  click_sign_in
end

When(/^User enters Email "([^"]*)" and Password "([^"]*)"$/) do |email, pass|
  login_page.set_user_pass email, pass
end

When(/^User Click on Sign in Button$/) do
  $browser.button(:name => 'commit').click
end

Then(/^User should see the message "([^"]*)"$/) do |message|
  alert = $browser.div(:class => 'alert alert-info').text
  puts expect(alert).to eq(message)
#alert.include?(message).expect == true
  #if message != alert
  #  fail test
  #end
end
