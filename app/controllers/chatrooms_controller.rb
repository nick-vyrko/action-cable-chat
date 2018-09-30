# frozen_string_literal: true

class ChatroomsController < ApplicationController
  before_action :authenticate_user!

  def index
    @chatrooms = Chatroom.all
  end

  def show
    chatroom = Chatroom.find(params[:id])
    @messages = @chatroom.messages.includes(:user)
  end
end
