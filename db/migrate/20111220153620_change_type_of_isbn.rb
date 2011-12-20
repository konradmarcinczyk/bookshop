class ChangeTypeOfIsbn < ActiveRecord::Migration
  def up
    remove_column :books, :isbn, :text
    add_column :books, :isbn, :biginteger
  end

  def down
  end
end
