class CategoryAccessory < ActiveRecord::Base
  has_many :accesories
   validates_uniqueness_of :category_accessory_name
end
