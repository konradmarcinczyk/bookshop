class AddColumns < ActiveRecord::Migration
  def up
    add_column :books, :category_book_id, :integer
    add_column :games, :category_game_id, :integer
  end

  def down
  end
end
