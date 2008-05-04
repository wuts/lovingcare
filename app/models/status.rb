class Status < ActiveRecord::Base
  has_many :activities
end
