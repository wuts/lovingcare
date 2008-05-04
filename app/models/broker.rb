class Broker < ActiveRecord::Base
  has_many :activities
  belongs_to :item
  belongs_to :user
end
