require 'capybara'
require 'cucumber'
require 'selenium-webdriver'
require 'Capybara/cucumber'
require 'rspec'




Capybara.default_driver = :selenium
Capybara.register_driver :selenium do |app|
Capybara::Selenium::Driver.new app, browser: :chrome
end