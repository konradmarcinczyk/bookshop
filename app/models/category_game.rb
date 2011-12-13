class CategoryGame < ActiveRecord::Base
  has_many :category_games
  has_many :games
end
