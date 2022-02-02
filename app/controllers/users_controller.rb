class UsersController < ApplicationController

	def create 
    user = User.create(params.permit(:username, :password, :password_confirmation))
	
    if user.save
      render json: user
    else
      render json: {errors: user.errors.full_messages}, status: :unprocessable_entity
    end
	end
end