class Item < ActiveRecord::Base
  belongs_to :catagory
  belongs_to :user
  has_many :brokers
  has_many :activities
end
