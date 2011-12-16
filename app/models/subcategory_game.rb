class SubcategoryGame < ActiveRecord::Base
   belongs_to :category_game  
   has_many :games
   validates_uniqueness_of :name, :scope => :category_game_id
end
