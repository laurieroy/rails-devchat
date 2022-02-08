class ChannelsController < ApplicationController
	
	def index
		channels = Channel.all

		render json: channels, only: [:id, :name] 
	end
	
	def show
		channel = Channel.find(params[:id])

		render json: channel, only: [:id, :name], 
			include: {messages: {only: [:message, :id], include: {user: {only: [:username]}} } }
	end
end