class ChangesInGames < ActiveRecord::Migration
  def up
    add_column :games, :number_of_players, :integer
  end

  def down
  end
end
