class CreatePrivateMessageReceivers < ActiveRecord::Migration[5.2]
  def change
    create_table :private_message_receivers do |t|
      t.references :user, index: true
      t.references :private_message, index: true
      t.timestamps
    end
  end
end
