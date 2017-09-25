# frozen_string_literal: true

folders = 'libs,config,services,controllers'
Dir.glob("./{#{folders}}/init.rb").each do |file|
  require file
end
