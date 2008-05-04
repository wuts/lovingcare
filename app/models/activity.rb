class Activity < ActiveRecord::Base
  belongs_to :broker
  belongs_to :item
  belongs_to :user
  belongs_to :property
  belongs_to :status
end
