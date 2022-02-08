class UsersController < ApplicationController

	def create 
    user = User.new(params.permit(:username, :password, :password_confirmation))
	
    if user.save
      render json: {user: UserSerializer.new(user), token: encode_token(user.id)}
    else
      render json: {errors: user.errors.full_messages}, status: :unprocessable_entity
    end
	end
end