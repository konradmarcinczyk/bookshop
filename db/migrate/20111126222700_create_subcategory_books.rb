class CreateSubcategoryBooks < ActiveRecord::Migration
  def change
    create_table :subcategory_books do |t|
      t.string :name

      t.timestamps
    end
  end
end
