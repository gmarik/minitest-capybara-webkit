require 'bundler'

Bundler.setup(:test)

require 'capybara'
require 'capybara/dsl'
require 'capybara/webkit'

require 'minitest/autorun'
require 'minitest/spec'

# use IntegrationSpec class for all scenarious having integration$ as description
class IntegrationSpec < MiniTest::Spec
  include Capybara::DSL
end

MiniTest::Spec.register_spec_type /integration$/i, IntegrationSpec

Capybara.app_host = 'http://localhost:3000'
Capybara.default_driver = :webkit
Capybara.default_selector = :css
