class Game < ActiveRecord::Base
  belongs_to :subcategory_game
  belongs_to :category_game
  has_one :product, :as => :resource
  after_create :make_product

  private
    def make_product
      self.create_product
    end
end
