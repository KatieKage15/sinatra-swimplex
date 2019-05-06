class InstructorsController < ApplicationController

  get "/signup" do
    erb :signup
  end

  post "/signup" do
    if params[:username] != "" && params[:password] != ""
      @instructor = Instructor.new(username: params["username"], password: params["password"])
      @instructor.save
      erb :swimmers
    else
      redirect to '/failure'
    end
  end
    # session[:instructor_id] = @instructor.id
    # puts params
    #   redirect '/failure'
    #   erb :failure
    # else
    #  Instructor.create(name: params[:name], username: params[:username], password: params[:password])
    #  redirect '/login'
  	#end

  get "/login" do
    erb :login
  end

  post "/login" do
    @instructor = Instructor.find_by(username: params[:username], password: params[:password])
    #if instructor && instructor.authenticate(params[:password])
    if @instructor
      session[:instructor_id] = instructor.id
      puts params
      redirect "/swimmers"
    else
      redirect "/login"
    end
  end

  get "/failure" do
    erb :failure
  end

  get '/logout' do
    session.clear
    "You have been logged out!"
    redirect '/'
  end
end
