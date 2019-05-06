require './config/environment'

if ActiveRecord::Migrator.needs_migration?
  raise 'Migrations are pending. Run `rake db:migrate` to resolve the issue.'
end

require 'sinatra'

require_relative 'app/controllers/instructors_controller'
require_relative 'app/controllers/swimmers_controller'

use Rack::MethodOverride
use SwimmersController
use InstructorsController
run ApplicationController
