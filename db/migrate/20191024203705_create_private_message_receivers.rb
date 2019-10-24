class CreatePrivateMessageReceivers < ActiveRecord::Migration[5.2]
  def change
    create_table :private_message_receivers do |t|
      t.belongs_to :private_message, index: true
      t.belongs_to :user, index: true # un des receivers
      t.timestamps
    end
  end
end
