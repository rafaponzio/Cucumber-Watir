class LoginPage

############################################################################################
###Main Definitions                                                                      ###
############################################################################################

  def set_user_pass(user, pass)
    user_field.wait_until_present
    user_field.set user
    pass_field.set pass
  end

  def click_sign_in
    sign_in.click
  end

  def click_sign_in_button
    sign_in_button.click
  end

  def check_alert_message(message)
    raise "Expected: #{message}\n Result: #{alert_message}" unless alert_message == message    
  end

############################################################################################
### Locators                                                                             ###
############################################################################################

  def user_field
    $browser.textarea(id: 'user_email')
  end

  def pass_field
    $browser.textarea(id: 'user_password')
  end

  def sign_in
    $browser.link(text: 'Sign In')
  end

  def sign_in_button
    $browser.button(:name => 'commit')
  end

  def alert_message
    if $browser.div(:class => 'alert alert-info').exist?
      $browser.div(:class => 'alert alert-info').text
    else
      raise "Login message not found"
    end
  end

end
