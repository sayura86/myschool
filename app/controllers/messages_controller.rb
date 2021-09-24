class MessagesController < ApplicationController
  def index
  end

  def show
  end

  def new
    @message = Message.new
  end

  def create
    @message = Message.new(message_params)
    @message.user_id = current_user.id
    @message.save
    redirect_to message_path(@message)
  end

  def edit
  end

  private
  def message_params
    params.require(:message).permit(:title, :body, :image)
  end
end
