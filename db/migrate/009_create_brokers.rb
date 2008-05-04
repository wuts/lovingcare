class CreateBrokers < ActiveRecord::Migration
  def self.up
    create_table :brokers do |t|
      t.integer :user_id
      t.integer :item_id
      t.string  :description
      t.timestamps
    end
  end

  def self.down
    drop_table :brokers
  end
end
