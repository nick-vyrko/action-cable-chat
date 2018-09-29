class CreateChatrooms < ActiveRecord::Migration[5.2]
  def change
    create_table :chatrooms do |t|
      t.string :topic, null: false

      t.timestamps
    end
  end
end
