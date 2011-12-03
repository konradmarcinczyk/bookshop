class SubcategoryGame < ActiveRecord::Base
   belongs_to :category_game  
   has_many :games
end
