class CreateCategoryGames < ActiveRecord::Migration
  def change
    create_table :category_games do |t|
      t.string :name

      t.timestamps
    end
  end
end
