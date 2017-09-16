class AddUniqueIndex < ActiveRecord::Migration[5.1]
  def change
    remove_index :users, :username
    remove_index :users, :session_token
    add_index :users, :username, unique: true
    add_index :users, :session_token, unique: true
  end
end
