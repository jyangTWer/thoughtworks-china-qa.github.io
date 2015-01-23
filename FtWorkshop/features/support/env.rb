require 'rspec'
require 'capybara'
require 'capybara/cucumber'
require 'selenium-webdriver'
require 'site_prism'
require 'require_all'
require 'pry'

require_all 'lib/pages'

Capybara.register_driver :selenium do |app|
	options = {
		:browser => :firefox
	}
	Capybara::Selenium::Driver.new(app, options)
end

Capybara.run_server = false
Capybara.default_wait_time = 30
Capybara.app_host = 'https://jinshuju.net/login'
Capybara.default_driver = :selenium
