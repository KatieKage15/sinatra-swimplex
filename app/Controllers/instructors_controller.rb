class InstructorsController < ApplicationController

  get "/signup" do
    if !logged_in?
      erb :signup
    else
      redirect to "/swimmers"
    end
  end

  post "/signup" do
    if params[:username] != "" && params[:password] != "" && params[:email] != ""
      @instructor = Instructor.new(username: params["username"], password: params["password"], email: params["email"])
      @instructor.save
      erb :swimmers
    else
      redirect to '/failure'
    end
  end

  get "/login" do
    if !logged_in?
      erb :login
    else
      redirect to "/swimmers"
    end
  end

  post "/login" do #fix this...somehow!
    binding.pry
     @instructor = Instructor.find_by(username: params[:username])
     if @instructor && @instructor.authenticate(params[:password])
       session[:instructor_id] = @instructor_id
       redirect to "/swimmers"
     else
       redirect to "/failure"
     end
   end

  get "/failure" do
    erb :failure
  end

  get '/logout' do
    session.clear
    "You have been logged out! See you next time!"
    redirect '/'
  end
end
