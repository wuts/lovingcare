class CreateItems < ActiveRecord::Migration
  def self.up
    create_table :items do |t|
      t.string :name
      t.string :description
      t.decimal :amount
      t.integer :catagory_id
      t.integer :user_id

      t.timestamps
    end
  end

  def self.down
    drop_table :items
  end
end
