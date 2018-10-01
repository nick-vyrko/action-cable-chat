# frozen_string_literal: true

class ChatroomChannel < ApplicationCable::Channel
  def subscribed
    stream_from stream_name
  end

  def receive(data)
    message = ::MessageSerializer.new(create_message(data))
    ActionCable.server.broadcast(stream_name, message)
  end

  private

  def create_message(data)
    Message.create!(content: data["message"], user_id: data["user_id"], chatroom_id: params[:room_id])
  end

  def stream_name
    "chatrooms:#{params[:room_id]}"
  end
end
