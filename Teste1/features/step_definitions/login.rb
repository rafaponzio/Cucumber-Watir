
Given(/^User is on Home Page$/) do
  $browser.goto "http://qa-test.avenuecode.com/"
end

When(/^User Navigate to Sign in page$/) do
  $browser.link(:text => 'Sign In').click
end

When(/^User enters Email and Password$/) do
@login = Login.new
@login.set_user_pass 'f1559373@mvrht.com', 'teste1222'
  #@browser.screenshot.save 'screenshot.png'
end

When(/^User Click on Sign in Button$/) do
  $browser.button(:name => 'commit').click
end

Then(/^User should see the message "([^"]*)"$/) do |message|
  if message != 'Signed in successfully.'
    fail test
  end
end
