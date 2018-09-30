# frozen_string_literal: true

class Chatroom < ApplicationRecord
  has_many :messages
end
