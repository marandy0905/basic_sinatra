# frozen_string_literal: true

require 'sinatra'
require 'econfig'

# ExampleAPI Class comment
class ExampleAPI < Sinatra::Base
  extend Econfig::Shortcut
  enable :logging

  configure do
    Econfig.env = settings.environment.to_s
    Econfig.root = File.expand_path('..', settings.root)
  end

  before do
    # Do some initializing things here before starting the server
    @example = Example.new(example_key: settings.config.SOME_KEY)
  end

  get '/' do
    content_type 'application/json'
    { message: 'HELLO WORLD!' }.to_json
  end
end
