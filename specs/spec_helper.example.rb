# frozen_string_literal: true

ENV['RACK_ENV'] = 'test'

require './init.rb'
require 'minitest/autorun'
require 'minitest/rg'

def app
  ExampleAPI
end

CONFIG = app.settings.config
EXAMPLE_FIXTURE_FILE = 'specs/fixtures/example.yml'

# Load any YAML/Fixtures or needed test data here
EXAMPLE = YAML.safe_load(File.read(EXAMPLE_FIXTURE_FILE))