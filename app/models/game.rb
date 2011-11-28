class Game < ActiveRecord::Base
  belongs_to :category_game
  has_one :product
end
