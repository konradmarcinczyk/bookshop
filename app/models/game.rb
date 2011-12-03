class Game < ActiveRecord::Base
  belongs_to :subcategory_game
  has_one :product, :as => :resource
end
