class MessagesController < ApplicationController
	def show
		channel = Channel.find(params[:id])

		render json: channel, include: [:messages]
	end
end