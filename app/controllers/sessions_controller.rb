class SessionsController < ApplicationController

  def autologin
    render json: {user: UserSerializer.new(current_user), token: encode_token(current_user.id)}
  end

  def create
    user = User.find_by_username(params[:username])

    if user && user.authenticate(params[:password])
      render json: {user: UserSerializer.new(user), token: encode_token(user.id)}
    else
      render json: {errors: "Username or password is invalid"}, status: :forbidden
    end
  end
end
