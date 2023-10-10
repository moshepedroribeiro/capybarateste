require 'capybara'
require 'capybara/dsl'
require 'capybara/rspec/matchers'
require 'selenium-webdriver'
require 'site_prism'
require_relative 'page_helper'

World(Capybara::DSL)
World(Capybara::RSpecMatchers)
World(PageObjects)

Capybara.configure do |config|
  config.default_driver = :selenium_chrome
  config.app_host = 'http://localhost:3000'
  config.default_max_wait_time = 5
end

# element1 = find('#element1')
# element2 = find('#element2')
# element1.drag_to(element2)