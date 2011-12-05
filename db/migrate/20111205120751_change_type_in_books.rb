class ChangeTypeInBooks < ActiveRecord::Migration
  def up
    remove_column :books, :isbn, :integer
    add_column :books, :isbn, :biginteger
  end

  def down
  end
end
