class MessagesController < ApplicationController
	def create 
		channel = Channel.find(params[:channel_id])
		channel.messages.create(params.permit(:message, :username))
	end

	def destroy
		Message.find(params[:id]).destroy
	end
end
