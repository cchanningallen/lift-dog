class Exercise < ActiveRecord::Base
  has_many :collectors
  has_many :activities, through: :collectors
  has_many :datapoints
end
