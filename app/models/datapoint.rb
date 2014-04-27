class Datapoint < ActiveRecord::Base
  belongs_to :exercise
  has_many: activities
end
