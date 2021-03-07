# frozen_string_literal: true

require 'sinatra'

module HomeHub
  # App server class for running the HomeHub app
  class App < Sinatra::Base
    get '/' do
      'Hello world!'
    end
  end
end
