class Book < ActiveRecord::Base
  belongs_to :subcategory_book
  belongs_to :publisher_book
  belongs_to :category_book
  has_one :product, :as => :resource
  after_create :make_product

  private
    def make_product
      self.create_product
    end
end
