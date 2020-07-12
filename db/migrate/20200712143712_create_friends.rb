class CreateFriends < ActiveRecord::Migration[6.0]
  def change
    create_table :friends do |t|
      t.integer :friend_1
      t.integer :friend_2
      t.timestamps
    end
  end
end
