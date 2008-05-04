class CreateActivities < ActiveRecord::Migration
  def self.up
    create_table :activities do |t|
      t.integer :user_id
      t.integer :item_id
      t.decimal :money
      t.text    :description
      t.integer :broker_id
      t.integer :property_id
      t.integer :payment_id
      t.integer :status_id

      t.timestamps
    end
  end

  def self.down
    drop_table :activities
  end
end
