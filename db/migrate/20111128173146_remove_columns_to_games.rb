class RemoveColumnsToGames < ActiveRecord::Migration
  def up
    add_column :games, :game_time_from, :integer
    add_column :games, :game_time_to, :integer
    remove_column :games, :age_of_players_to, :integer
  end

  def down
  end
end
