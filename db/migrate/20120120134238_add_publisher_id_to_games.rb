class AddPublisherIdToGames < ActiveRecord::Migration
  def change
    add_column :games, :publisher_game_id, :integer
  end
end
