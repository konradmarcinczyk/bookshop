class AddColumnsToGamesAndProducts < ActiveRecord::Migration
  def change
    add_column :books, :cover, :string
    add_column :games, :year_of_publication, :integer
  end
end
