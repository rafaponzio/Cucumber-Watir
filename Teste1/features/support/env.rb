TEST_DATA_DIR = "./features/pages"

  require 'watir-webdriver'

  browser = Watir::Browser.new :firefox
  INDEX_OFFSET = -1
  WEBDRIVER = true

Before do
  $browser = browser
end

at_exit do
  browser.close
end
