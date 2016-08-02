#require 'page-object'

class Login
  def set_user_pass(user, pass)
    $browser.textarea(:id => 'user_email').wait_until_present
    $browser.textarea(:id => 'user_email').set user
    $browser.textarea(:id => 'user_password').set pass
  end
end
