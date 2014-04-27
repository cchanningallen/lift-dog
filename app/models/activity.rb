class Activity < ActiveRecord::Base
  belongs_to :collector
  belongs_to :datapoint
end
