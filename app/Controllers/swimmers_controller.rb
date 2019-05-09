class SwimmersController < ApplicationController

  #READ
  get '/swimmers' do
    if logged_in?
      erb :'/swimmers/index'
    else
      redirect to '/login'
    end
  end

  #CREATE
  get '/swimmers/new' do
    if logged_in?
      erb :'swimmers/new'
    else
      redirect to '/login'
    end
  end

  #EDIT
  get "/swimmmers/:id/edit" do
    @swimmers = Swimmer.find(params[:id])
    erb :'/swimmers/edit'
  end

  #UPDATE
  patch "/swimmers/:id" do
    @swimmer = Swimmer.find(params[:id])
    @swimmer.update(params[:swimmer])
    redirect to "/swimmers/#{@swimmer.id}"
  end

  #DELETE
  delete "/swimmers/:id" do
    Swimmer.destroy(params[:id])
    redirect to "/swimmers"
  end


  # get "/swimmers" do
  #   @instructor = Instructor.find(session[:instructor_id])
  #   erb :swimmers
  # end
  #
  # post "/swimmers" do
  #   @swimmer = Swimmer.create(params[:swimmer])
  #   if !params["name"]["age"]["day_swim"]["notes"].empty?
  #     @swimmer.instructor = Instructor.create(name: params["name"]["age"]["day_swim"]["notes"])
  #   end
  #     @swimmer.save
  #     redirect "/#{@swimmer.id}"
  # end

  #read
  #update
  #delete
  #validate data - in models

end
