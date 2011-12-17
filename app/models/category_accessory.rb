class CategoryAccessory < ActiveRecord::Base
  has_many :accesories
   validates_uniqueness_of :name
end
