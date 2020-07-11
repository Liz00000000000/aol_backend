class CreateEmails < ActiveRecord::Migration[6.0]
  def change
    create_table :emails do |t|
      t.integer :sender_id
      t.integer :reciever_id 
      t.string :subject_line
      t.string :content 
      t.timestamps
    end
  end
end
