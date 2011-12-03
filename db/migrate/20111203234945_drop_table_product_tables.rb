class DropTableProductTables < ActiveRecord::Migration
  def up
    drop_table :product_tables
  end

  def down
  end
end
