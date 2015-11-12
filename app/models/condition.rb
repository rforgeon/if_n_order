class Condition < ActiveRecord::Base
  belongs_to :user
  has_many :deliveries
  has_many :accounts
  acts_as_votable 
end
