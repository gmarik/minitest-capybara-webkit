require 'bundler'

Bundler.setup(:test)

require 'capybara'
require 'capybara/cucumber'
require 'capybara/webkit'

Capybara.app_host = 'http://localhost:3000'
Capybara.default_driver = :webkit
Capybara.default_selector = :css
Capybara.default_wait_time = 50

# https://github.com/cucumber/cucumber/wiki/Using-MiniTest
require 'minitest/spec'
World(MiniTest::Assertions)
World(Capybara::DSL)
MiniTest::Spec.new(nil)

module IntegrationHelpers
  def login(user = 'autotest', pass = 'autotest')
    reset_session!
    visit '/'
    fill_in 'session_login', with: user
    fill_in 'session_password', with: pass
    click_button 'Log in'
  end
end

World(IntegrationHelpers)

