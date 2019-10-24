class CreateCreateRecipients < ActiveRecord::Migration[5.2]
  def change
    create_table :create_recipients do |t|

      t.timestamps
    end
  end
end
