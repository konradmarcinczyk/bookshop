class AddColumnsToGames < ActiveRecord::Migration
  def change
    add_column :games, :instruction, :text
    add_column :games, :game_type, :string
    add_column :games, :game_time, :string
    add_column :games, :publisher, :string
    add_column :games, :edition, :string
    add_column :games, :opis, :text
    add_column :games, :price, :float
  end
end
