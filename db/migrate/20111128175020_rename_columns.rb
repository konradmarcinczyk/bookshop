class RenameColumns < ActiveRecord::Migration
  def up
    add_column :books, :description, :text
    add_column :games, :description, :text
    add_column :games, :language, :string
    add_column :books, :language, :string
    remove_column :games, :opis, :text
    remove_column :books, :opis, :text
    remove_column :games, :edition, :string
  end

  def down
  end
end
