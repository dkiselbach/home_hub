# frozen_string_literal: true

require_relative '../app'
require './spec/spec_helper'

RSpec.describe HomeHub::App do
  it 'has root path' do
    get '/'
    expect(last_response.body).to eq('Hello world!')
  end
end
