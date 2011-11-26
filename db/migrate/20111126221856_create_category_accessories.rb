class CreateCategoryAccessories < ActiveRecord::Migration
  def change
    create_table :category_accessories do |t|
      t.string :name

      t.timestamps
    end
  end
end
