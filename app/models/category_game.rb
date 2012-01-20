class CategoryGame < ActiveRecord::Base
  has_many :subcategory_games
  has_many :games
  validates_uniqueness_of :name
end
