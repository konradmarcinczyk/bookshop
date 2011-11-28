class ChangeColumnsToGames < ActiveRecord::Migration
  def up
    add_column :games, :number_of_players_from, :integer
    add_column :games, :number_of_players_to, :integer
    add_column :games, :age_of_players_from, :integer
    add_column :games, :age_of_players_to, :integer
    remove_column :games, :number_of_players, :string
    remove_column :games, :age_of_players, :string
  end

  def down
  end
end
