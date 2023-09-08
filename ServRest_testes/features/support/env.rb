require 'cucumber'
require 'selenium-webdriver'
require 'rspec'
require 'capybara'
require 'site_prism'
require 'capybara/cucumber'
require 'pry'
require 'faker'


ENVIRONMENT = ENV['ENVIRONMENT']
ENVIRONMENT_CONFIG = YAML.load_file(File.dirname(__FILE__) + "/environment/#{ENVIRONMENT}.yml")
puts ENVIRONMENT_CONFIG
URL = ENVIRONMENT_CONFIG['url']

Capybara.register_driver :my_chrome do |app|
   
    options = Selenium::WebDriver::Chrome::Options.new
    options.add_argument('--incognito')
    options.add_argument('--start-maximized')
    options.add_argument('--window-size-1420-835')
    options.add_argument('--ignore-ssl-errors')
    options.add_argument('--certificate-errors')
    options.add_argument('--disable-popup-blocking')
    options.add_argument('--no-sandbox')
    options.add_argument('--acceptInsecureCerts=true')
    options.add_argument('--disable-gpu')
    options.add_argument('--disable-translate')
    options.add_argument('--disable-impl-side-painting')
    options.add_argument('--debug_level=3')


    if ENV['HEADLESS']
        options.add_argument('--headless')
    end

    Capybara::Selenium::Driver.new(app, browser: :chrome, options: options)
end

Capybara.default_driver = :my_chrome
Capybara.app_host=URL
Capybara.default_max_wait_time = 10
