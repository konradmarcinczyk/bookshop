class CategoryGame < ActiveRecord::Base
  has_many :category_games
  has_many :games
  validates_uniqueness_of :category_game_name
end
