class SubcategoryGame < ActiveRecord::Base
  has_many :category_games
end
