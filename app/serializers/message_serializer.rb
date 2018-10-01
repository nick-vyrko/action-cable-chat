# frozen_string_literal: true

class MessageSerializer < ActiveModel::Serializer
  attributes :content, :name

  def name
    object.user.name
  end
end
