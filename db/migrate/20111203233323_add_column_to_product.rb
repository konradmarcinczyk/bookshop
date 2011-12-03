class AddColumnToProduct < ActiveRecord::Migration
  def change
    add_column :products, :resource_id, :integer
    add_column :products, :resource_type, :string
  end
end
