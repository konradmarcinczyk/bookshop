class Accessory < ActiveRecord::Base
  belongs_to :category_accessory
  has_one :product, :as => :resource
  after_create :make_product

  private
    def make_product
      self.create_product()
    end

  validates_presence_of :name, :price, :description, :category_accessory_id
  validates :price, :numericality => { :greater_than => 0, :less_than => 1000, :precision => 2}
end
