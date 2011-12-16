class ChangeTypeOfGameType < ActiveRecord::Migration
  def up
    remove_column :games, :game_type, :string
    add_column :games, :game_type, :integer
  end

  def down
  end
end
