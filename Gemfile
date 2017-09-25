# frozen_string_literal: true

source 'https://rubygems.org'

ruby '2.4.1'

gem 'econfig'
gem 'http'
gem 'json'
gem 'puma'
gem 'rake'
gem 'sinatra'


gem 'dry-container'
gem 'dry-monads'
gem 'dry-transaction'

gem 'roar'
gem 'sequel'

group :test do
  gem 'minitest'
  gem 'minitest-rg'
  gem 'rack-test'
end

group :development, :test do
  gem 'sqlite3'
end

group :development do
  gem 'rerun'

  gem 'flay'
  gem 'flog'
end

group :development, :production do
  gem 'hirb'
  gem 'tux'
end

group :production do
  gem 'pg'
end