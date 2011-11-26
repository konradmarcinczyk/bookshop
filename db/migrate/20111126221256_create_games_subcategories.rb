class CreateGamesSubcategories < ActiveRecord::Migration
  def change
    create_table :games_subcategories do |t|
      t.string :name

      t.timestamps
    end
  end
end
