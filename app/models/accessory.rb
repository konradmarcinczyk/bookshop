class Accessory < ActiveRecord::Base
  belongs_to :category_accessory
  has_one :product, :as => :resource
  after_create :make_product

  private
    def make_product
      self.create_product
    end
end
