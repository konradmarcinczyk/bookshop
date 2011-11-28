class CategoryGame < ActiveRecord::Base
  belongs_to :subcategory_game
  has_many :games
end
