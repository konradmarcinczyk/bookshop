class Game < ActiveRecord::Base
  belongs_to :subcategory_game
  belongs_to :category_game
  has_one :product, :as => :resource
end
