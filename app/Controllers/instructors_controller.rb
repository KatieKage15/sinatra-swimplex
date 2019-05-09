class InstructorsController < ApplicationController

  get "/signup" do
    if !logged_in?
      erb :'instructor/signup'
    else
      redirect to "/swimmers"
    end
  end

  post "/signup" do
    @instructor = Instructor.new(params)
    if @instructor.save
      session[:instructor_id] = @instructor.id
      redirect to '/swimmers'
    else
      redirect to '/failure'
    end
  end

  get "/login" do
    if !logged_in?
      erb :'instructor/login'
    else
      redirect to "/swimmers"
    end
  end

  post "/login" do
    @instructor = Instructor.find_by(:username => params[:username])
    #binding.pry
    if @instructor && @instructor.authenticate(params[:password])
      session[:instructor_id] = @instructor.id
      redirect to "/swimmers"
    else
      redirect to '/failure'
    end
  end

  get "/failure" do
    erb :failure
  end

  get '/logout' do
    if logged_in?
      session.destroy
      redirect to '/intructor/login'
    else
      redirect to '/'
    end
  end
end
