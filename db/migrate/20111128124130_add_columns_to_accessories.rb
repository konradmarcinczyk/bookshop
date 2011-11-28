class AddColumnsToAccessories < ActiveRecord::Migration
  def change
    add_column :accessories, :opis, :text
    add_column :accessories, :price, :float
  end
end
