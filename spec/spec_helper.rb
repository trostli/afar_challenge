# This file is copied to spec/ when you run 'rails generate rspec:install'
ENV["RAILS_ENV"] ||= 'test'
require File.expand_path("../../config/environment", __FILE__)
require 'rspec/rails'
require 'rspec/autorun'

# Requires supporting ruby files with custom matchers and macros, etc,
# in spec/support/ and its subdirectories.
Dir[Rails.root.join("spec/support/**/*.rb")].each { |f| require f }

RSpec.configure do |config|
  config.fixture_path = "#{::Rails.root}/spec/fixtures"
  config.use_transactional_fixtures = true
  config.infer_base_class_for_anonymous_controllers = false
  config.order = "random"
end

def sign_in_user

 FactoryGirl.define do
    factory :user do
      name                  "daniel"
      email                 "daniel@yahoo.com"
      password              "foobar1234"
      password_confirmation "foobar1234"
    end
  end

  @request.env["devise.mapping"] = Devise.mappings[:user]
  user = FactoryGirl.create(:user)
  sign_in user
end