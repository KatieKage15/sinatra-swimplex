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

  post '/swimmers' do
    if logged_in?
      if params[:notes] == ""
        redirect to "/swimmers/new"
      else
        @swimmer = Swimmer.build(notes: params[:notes])
        if @swimmer.save
          redirect to "/swimmers/#{@swimmer.id}"
        else
        redirect to "/swimmers/new"
        end
      end
    else
      redirect to "/login"
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

  #create
  #read
  #update
  #delete
  #validate data - in models

end
