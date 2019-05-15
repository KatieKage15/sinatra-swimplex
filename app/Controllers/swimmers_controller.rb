class SwimmersController < ApplicationController

  #READ
  get '/swimmers' do
    if logged_in?
      erb :'/swimmers/index'
    else
      redirect to '/login'
    end
  end

  #new
  get '/swimmers/new' do
    if logged_in?
      erb :'swimmers/new'
    else
      redirect to '/login'
    end
  end

  #create
  post '/swimmers' do
    if logged_in?
      if params[:notes] == ""
        redirect to "/swimmers/new"
      else
        @swimmer = Swimmer.create(params)
        current_instructor.swimmers << @swimmer
        if @swimmer.save

          redirect to "/swimmers/#{@swimmer.id}"
        else
        redirect to "/swimmers/show_swimmers"
        end
      end
    else
      redirect to "/login"
    end
  end

  #read
  get "/swimmers/:id" do
    @swimmer = Swimmer.find(params[:id])
    @swimmers= current_instructor.swimmers
    erb :'/swimmers/show_swimmers'
  end

  #edit
  get "/swimmers/:id/edit" do
    @swimmer = Swimmer.find(params[:id])
    erb :'/swimmers/edit'
  end

  #update
  patch "/swimmers/:id" do
    @swimmer = Swimmer.find(params[:id])
    @swimmer.update(params[:swimmer])
    redirect to "/swimmers/#{@swimmer.id}"
  end

  #delete
  delete "/swimmers/:id/delete" do
    Swimmer.destroy(params[:id])
    redirect to "/swimmers"
  end

  #create
  #read
  #update
  #delete
  #validate data - in models

end
