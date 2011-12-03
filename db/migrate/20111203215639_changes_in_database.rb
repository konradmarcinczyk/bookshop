class ChangesInDatabase < ActiveRecord::Migration
  def up 
    rename_column :accessories, :category_accessories_id, :category_accessory_id
    rename_column :books, :category_books_id, :subcategory_book_id
    rename_column :games, :category_games_id, :subcategory_game_id

    add_column :books, :publisher_book_id, :integer
    add_column :subcategory_books, :category_book_id, :integer
    add_column :subcategory_games, :category_game_id, :integer

    remove_column :category_books, :subcategory_books_id
    remove_column :category_games, :subcategory_games_id

    drop_table :games_categories
    drop_table :games_subcategories
  end

  def down
  end
end
