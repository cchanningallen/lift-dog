class Collection < ActiveRecord::Base
  belongs_to :exercise
  belongs_to :parent, :class_name => "Collection", :foreign_key => "parent_collection_id"
  has_many :child_collectors, :class_name => "Collection", :foreign_key => "parent_collection_id"
  has_many :activities
end
