class SwimmersController < ApplicationController

  get "/swimmers" do
    @instructor = Instructor.find(session[:instructor_id])
    erb :swimmers
  end

  post "/swimmers" do
    @swimmer = Swimmer.create(params[:swimmer])
    if !params["name"]["age"]["day_swim"]["notes"].empty?
      @swimmer.instructor = Instructor.create(name: params["name"]["age"]["day_swim"]["notes"])
    end
    @swimmer.save
    redirect "/#{@swimmer.id}"
  end

end
