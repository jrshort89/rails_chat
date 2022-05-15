class MessagesController < ApplicationController

  before_action :require_user

  def index
    messages = Message.last limit_param
    render json: messages
  end

  def create
    message = Message.new message_params
    message.user_id = 1
    message.save
    ActionCable.server.broadcast("chatroom_channel", message)
  end

  private

  def message_params
    params.require(:message).permit(:body)
  end

  def limit_param
    params.permit(:limit)[:limit]
  end

end
