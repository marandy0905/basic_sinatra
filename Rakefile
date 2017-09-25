# frozen_string_literal: true

require 'rake/testtask'
require './init.rb'

@config = WeatherWeaverAPI.settings.config

task default: [:spec]

desc 'Run all the tests'
Rake::TestTask.new(:spec) do |t|
  t.pattern = 'specs/*_spec.rb'
  t.warning = false
end

namespace :run do
  task :dev do
    sh 'rerun "rackup -p 9292"'
  end
end