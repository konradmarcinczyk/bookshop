class Game < ActiveRecord::Base
  belongs_to :category_game
  has_many :products
end
