TEST_DATA_DIR = "./features/pages"

  require 'watir-webdriver'
  require "test/unit"


  browser = Watir::Browser.new :internet_explorer
  INDEX_OFFSET = -1
  WEBDRIVER = true

Before do
  $browser = browser
end

at_exit do
  browser.close
end
