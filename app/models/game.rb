#encoding: utf-8
class Game < ActiveRecord::Base
  belongs_to :subcategory_game
  belongs_to :category_game
  has_one :product, :as => :resource
  after_create :make_product

  private
    def make_product
      self.create_product
    end

    def number_of_players_cannot_be_blank
      unless (0..99).include?(number_of_players) or (number_of_players.blank? and (0..99).include?(number_of_players_from) and (0..99).include(number_of_players_to) and number_of_players_from < number_of_players_to)
        errors.add(:number_of_players, "Musisz podać LiczbęGraczy lub (LiczbęGraczyOd i LiczbęGraczyDo) liczby muszą być z przedziału 0-99, a LiczbaGraczyOd musi być mniejsza niż LiczbaGraczyDo !")
      end
    end
    def game_time_validation
      unless (0..99).include?(game_time) or (game_time.blank? and (0..99).include?(game_time_from) and (0..99).include(game_time_to) and game_time_from < game_time_to)
        errors.add(:game_time, "Możesz podać CzasGry lub (CzasGryOd i CzasGryDo) liczby muszą być z przedziału 0-99, a CzasGryOd musi być mniejszy niż CzasGryDo !")
      end
    end

  validates_presence_of :name, :game_type, :publisher, :price, :description, :language, :instruction,:category_game_id,
                        :age_of_players_from
  validate :number_of_players_cannot_be_blank, :game_time_validation
# if category_game(@id) has_any subcategory_game then validates_presence_of :subcategory_game_id  && subcategory_game(@id) belongs to category_game_id!!!
  validates :age_of_players_from, :numericality => { :greater_than => 0, :less_than => 150 }
  validates :price, :numericality => { :greater_than => 0, :less_than => 1000 }
  validates :year_of_publication, :numericality => { :greater_than => 1900, 
            :less_than => (Date.today.year + 1) }, :allow_blank => true
end
