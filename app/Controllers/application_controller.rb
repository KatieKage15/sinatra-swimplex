require './config/environment'
require 'sinatra/flash'

class ApplicationController < Sinatra::Base

  configure do
    set :views, "app/views"
    enable :sessions
    set :session_secret, "password_security"
  end

  get '/' do
    if !logged_in?
      erb :index
    else
      redirect to "/swimmers"
    end
  end

   helpers do
     def logged_in?
       !!current_instructor
     end

     def current_instructor
       @current_instructor ||= Instructor.find_by(instructor_id: session[:instructor_id]) if session[:instructor_id]
     end
   end
end
