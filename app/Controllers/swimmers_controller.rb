class SwimmersController < ApplicationController

  get "/swimmers" do
    @instructor = Instructor.find(session[:instructor_id])
    erb :swimmers
  end

  # post "/swimmers" do
  #
  # end

end
