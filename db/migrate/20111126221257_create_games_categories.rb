class CreateGamesCategories < ActiveRecord::Migration
  def change
    create_table :games_categories do |t|
      t.string :name

      t.timestamps
    end
  end
end
