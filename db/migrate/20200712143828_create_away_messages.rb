class CreateAwayMessages < ActiveRecord::Migration[6.0]
  def change
    create_table :away_messages do |t|
      t.integer :user_id
      t.string :message

      t.timestamps
    end
  end
end
