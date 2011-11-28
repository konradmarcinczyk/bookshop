class Accessory < ActiveRecord::Base
  belongs_to :category_accessory
  has_many :products

end
