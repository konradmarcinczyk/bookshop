class ChangeColumnType < ActiveRecord::Migration
  def up
     remove_column :addresses, :house_number, :integer
     remove_column :addresses, :apartment_number, :integer
     add_column :addresses, :house_number, :string
     add_column :addresses, :apartment_number, :string
  end

  def down
  end
end
