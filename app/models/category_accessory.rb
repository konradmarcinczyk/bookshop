class CategoryAccessory < ActiveRecord::Base
  has_many :accessories
   validates_uniqueness_of :name
end
