#require 'page-object'

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

end
