ENV["SINATRA_ENV"] ||= "development"

require_relative './config/environment'
require 'sinatra/activerecord/rake' #creates rake tasks

# Type `rake -T` on your command line to see the available rake tasks.

task :console do
  Pry.start
end
