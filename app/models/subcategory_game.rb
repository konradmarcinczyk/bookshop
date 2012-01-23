class SubcategoryGame < ActiveRecord::Base
  belongs_to :category_game  
  has_many :games
  validates_uniqueness_of :name, :scope => :category_game_id
  validates_presence_of :category_game_id
end
