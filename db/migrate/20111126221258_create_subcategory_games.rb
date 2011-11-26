class CreateSubcategoryGames < ActiveRecord::Migration
  def change
    create_table :subcategory_games do |t|
      t.string :name

      t.timestamps
    end
  end
end
