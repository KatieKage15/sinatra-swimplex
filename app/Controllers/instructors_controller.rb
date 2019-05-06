class InstructorsController < ApplicationController

    get "/signup" do
      erb :signup
    end

    post "/signup" do
      if params[:username] == " " || params[:password] == " "
        redirect '/failure'
        erb :failure
      else
        Instructor.create(username: params[:username], password: params[:password])
        redirect '/login'
    	end
    end

    get "/login" do
      erb :login
    end

    post "/login" do
      instructor = Instructor.find_by(username: params[:username], password: params[:password])
        if user && user.authenticate(params[:password])
         session[:instructor_id] = instructor.id
         redirect "/swimmers"
        end
    end
    get "/failure" do
      erb :failure
    end

end
