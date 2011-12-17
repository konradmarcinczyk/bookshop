class ChangeTypeAgain < ActiveRecord::Migration
  def up
    remove_column :games, :game_type, :integer
    add_column :games, :game_type, :string
    remove_column :games, :game_time, :string
    add_column :games, :game_time, :integer
  end

  def down
  end
end
