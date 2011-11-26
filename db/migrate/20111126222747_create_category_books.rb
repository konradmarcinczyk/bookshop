class CreateCategoryBooks < ActiveRecord::Migration
  def change
    create_table :category_books do |t|
      t.string :name

      t.timestamps
    end
  end
end
