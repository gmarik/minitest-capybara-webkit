require 'bundler'

Bundler.setup(:test)

require 'capybara'
require 'capybara/cucumber'
require 'capybara/webkit'

# use IntegrationSpec class for all scenarious having integration$ as description

Capybara.app_host = 'http://localhost:3000'
Capybara.default_driver = :webkit
Capybara.default_selector = :css
Capybara.default_wait_time = 50

# https://github.com/cucumber/cucumber/wiki/Using-MiniTest
require 'minitest/spec'
World(MiniTest::Assertions)
World(Capybara::DSL)
MiniTest::Spec.new(nil)

