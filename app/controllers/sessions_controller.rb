class SessionsController < ApplicationController
  def create
    user = User.find_by_username(params[:username])
    
    if user && user.authenticate(params[:password])
      render json: user
    else
      render json: {errors: "Username or password is invalid"}, status: :forbidden
    end
  end
end
