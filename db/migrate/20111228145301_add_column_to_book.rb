class AddColumnToBook < ActiveRecord::Migration
  def up
    add_column :books, :resource_id, :integer 
  end

  def down
    remove_column :books, :resource_id, :integer
  end
end
