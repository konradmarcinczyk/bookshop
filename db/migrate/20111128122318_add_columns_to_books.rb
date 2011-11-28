class AddColumnsToBooks < ActiveRecord::Migration
  def change
    add_column :books, :size, :string
    add_column :books, :cover, :string
    add_column :books, :isbn, :integer
    add_column :books, :translation, :string
    add_column :books, :year_of_publishing, :integer
    add_column :books, :number_of_pages, :integer
    add_column :books, :publisher, :string
    add_column :books, :author, :string
    add_column :books, :opis, :text
    add_column :books, :price, :float
  end
end
