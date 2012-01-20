#encoding: utf-8
class Game < ActiveRecord::Base
  belongs_to :subcategory_game
  belongs_to :category_game
  belongs_to :publisher_game
  has_one :product, :as => :resource
  after_create :make_product

  private
    def make_product
      self.create_product
    end

    def number_of_players_cannot_be_blank
      unless (0..99).include?(number_of_players) or (number_of_players.blank? and (0..99).include?(number_of_players_from) and (0..99).include?(number_of_players_to) and number_of_players_from < number_of_players_to)
        errors.add(:number_of_players,"Musisz podać LiczbęGraczy lub (LiczbęGraczyOd i LiczbęGraczyDo) liczby muszą być z przedziału 0-99, a LiczbaGraczyOd musi być mniejsza niż LiczbaGraczyDo !")
      end
    end

    def game_time_validation
      unless (game_time.blank? and game_time_from.blank? and game_time_to.blank?) or (0..300).include?(game_time) or (game_time.blank? and (0..300).include?(game_time_from) and (0..300).include?(game_time_to) and game_time_from < game_time_to)
        errors.add(:game_time, "Możesz podać CzasGry lub (CzasGryOd i CzasGryDo) liczby muszą być z przedziału 0-300, a CzasGryOd musi być mniejszy niż CzasGryDo ! Pamiętaj, że CzasGry jest podany w minutach !")
      end
    end

    def category_validation
      if  category_game.subcategory_games(@category_game_id).any? and (subcategory_game(self.subcategory_game_id).category_game.id != category_game_id)
        errors.add(:name, "Musisz wybrać podgategorię wybranej kategorii !  Przepraszam, że błąd jest w tym miejscu, nie było innej opcji")
        elsif !category_game.subcategory_games(@category_game_id).any? and !subcategory_game_id.blank?
          errors.add(:name, "Nie możesz wybrać podgategorii, ponieważ wybrana kategoria nie posiada podkategorii !  Przepraszam, że błąd jest w tym miejscu, nie było innej opcji")
      end
    end

  validates_presence_of :name, :game_type, :publisher_game_id, :price, :description, :language, :instruction,
                        :category_game_id, :age_of_players_from
  validate :number_of_players_cannot_be_blank, :game_time_validation, :category_validation
  validates :age_of_players_from, :numericality => { :greater_than => 0, :less_than => 150, :only_integer => true }
  validates :price, :numericality => { :greater_than => 0, :less_than => 1000 }
  validates :year_of_publication, :numericality => { :greater_than => 1900, 
            :less_than_or_equal_to => Date.today.year, :only_integer => true }, :allow_blank => true
end
