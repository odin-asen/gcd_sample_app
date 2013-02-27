# This file is copied to spec/ when you run 'rails generate rspec:install'
ENV["RAILS_ENV"] ||= 'test'
require File.expand_path("../../config/environment", __FILE__)
require 'rspec/rails'
require 'rspec/autorun'

# Requires supporting ruby files with custom matchers and macros, etc,
# in spec/support/ and its subdirectories.
Dir[Rails.root.join("spec/support/**/*.rb")].each {|f| require f}

RSpec.configure do |config|
  # ## Mock Framework
  #
  # If you prefer to use mocha, flexmock or RR, uncomment the appropriate line:
  #
  # config.mock_with :mocha
  # config.mock_with :flexmock
  # config.mock_with :rr

  # Remove this line if you're not using ActiveRecord or ActiveRecord fixtures
  config.fixture_path = "#{::Rails.root}/spec/fixtures"

  # If you're not using ActiveRecord, or you'd prefer not to run each of your
  # examples within a transaction, remove the following line or assign false
  # instead of true.
  config.use_transactional_fixtures = true

  # If true, the base class of anonymous controllers will be inferred
  # automatically. This will be the default behavior in future versions of
  # rspec-rails.
  config.infer_base_class_for_anonymous_controllers = false

  # Run specs in random order to surface order dependencies. If you find an
  # order dependency and want to debug it, you can fix the order by providing
  # the seed, which is printed after each run.
  #     --seed 1234
  config.order = "random"
end

#--------------------------#
# My Methods and Constants #
#--------------------------#

# Base title that can be used for a page in this application
BASE_TITLE = "Ruby on Rails Tutorial Sample App"

# Standard integration test for every page
# shouldHavePage is the displayed text that describes what the page should have
# page is the relative page path without leading / character
# selectorPair will be used as array in response.should have_selector arr[0], arr[1]
def standardPageTest(shouldHavePage, page, selectorPair)
  it "#{shouldHavePage} /#{page}" do
    get "/#{page}"
    response.should have_selector(selectorPair[0], selectorPair[1])
  end
end

# Standard test for a controller action
# name is the controller name
# itMessage is the displayed text that describes what the controller should do
# selectorPair will be used as array in response.should have_selector arr[0], arr[1]
def testControllerActionStandard(name, itMessage, selectorPair)
  describe "GET '#{name}'" do
    it itMessage do
      get name
      response.should have_selector(selectorPair[0], selectorPair[1])
    end
  end
end
