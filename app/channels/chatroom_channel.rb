# frozen_string_literal: true

class ChatroomChannel < ApplicationCable::Channel
  def subscribed
    stream_from stream_name
  end

  def receive(data)
    ActionCable.server.broadcast(stream_name, data)
  end

  private

  def stream_name
    "chatrooms:#{param[:room_id]}"
  end
end
