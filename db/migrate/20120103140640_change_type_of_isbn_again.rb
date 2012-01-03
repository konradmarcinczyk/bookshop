class ChangeTypeOfIsbnAgain < ActiveRecord::Migration
  def up
    #remove_column :books, :isbn, :biginteger
    #?add_column :books, :isbn, :bigint
    #?add_column :books, :isbn, :string
  end

  def down
  end
end
