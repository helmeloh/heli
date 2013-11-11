class CreateYou2helis < ActiveRecord::Migration
  def change
    create_table :you2helis do |t|
      t.string :content
      t.integer :user_id

     t.timestamps
    end
    add_index :you2helis, [:user_id, :created_at]
  end
end