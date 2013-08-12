class CreateYou2Helis < ActiveRecord::Migration
  def change
    create_table :you2_helis do |t|
      t.string :content
      t.integer :user_id

      t.timestamps
    end
  end
end
