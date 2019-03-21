class CreateChats < ActiveRecord::Migration[5.2]
  def change
    create_table :chats do |t|
      t.text :body
      t.references :user
      t.references :friend

      t.timestamps
    end
  end
end
