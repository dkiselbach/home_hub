# frozen_string_literal: true

require File.join(File.dirname(__FILE__), '..', 'app.rb')
require 'sinatra'
require 'rack/test'
require 'faker'
require 'webmock'
require_relative 'support/web_mock_helper'

set :environment, :test
set :run, false
set :raise_errors, true
set :logging, false

def app
  HomeHub::App
end

RSpec.configure do |config|
  # Enable flags like --only-failures and --next-failure
  config.example_status_persistence_file_path = '.rspec_status'

  config.include Rack::Test::Methods

  # Disable RSpec exposing methods globally on `Module` and `main`
  config.disable_monkey_patching!

  config.expect_with :rspec do |c|
    c.syntax = :expect
  end

  WebMock.enable!
end
