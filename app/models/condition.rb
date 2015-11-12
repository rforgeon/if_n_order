class Condition < ActiveRecord::Base
  belongs_to :user
  has_many :deliveries
end
