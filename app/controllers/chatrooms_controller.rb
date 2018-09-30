# frozen_string_literal: true

class ChatroomsController < ApplicationController
  before_action :authenticate_user!

  def index
    @chatrooms = Chatroom.all
  end

  def show
    @chatroom = Chatroom.find(params[:id])
    @messages = @chatroom.messages.includes(:user)
  end

  def new
    @chatroom = Chatroom.new
  end

  def create
    Chatroom.create(chatroom_params)
    redirect_to action: "index"
  end

  private

  def chatroom_params
    params.require(:chatroom).permit(:topic)
  end
end
