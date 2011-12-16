class Game < ActiveRecord::Base
  belongs_to :subcategory_game
  belongs_to :category_game
  has_one :product, :as => :resource
  after_create :make_product

  private
    def make_product
      self.create_product
    end

  validates_presence_of :name, :game_type, :publisher, :price, :description, :language, :instruction,:category_game_id,
                        :age_of_players_from
# if category_game(@id) has_any subcategory_game then validates_presence_of :subcategory_game_id  && subcategory_game(@id) belongs to category_game_id!!!!
#if game_time!=NULL then game_time_from = NULL && game_time_to = NULL

#if number_of_players!=NULL then number_of_players_from = NULL && number_of_players_to = NULL
#if number_of_players=NULL then number_of_players_from = NOT NULL && number_of_players_to = NOT NULL
  validates_numericality_of :game_time, :game_time_from, :game_time_to, :number_of_players, :number_of_players_from,
                            :number_of_players_to, :age_of_players_from 
  validates :price, :numericality => { :greater_than => 0, :less_than => 1000 }
#price do 2 miejsc po przecinku!!!

  validates :year_of_publication, :numericality => { :greater_than => 1900, :less_than => 2100 }
#dobrze było by less_than => aktualny_rok
end
