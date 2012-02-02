class AddPolymorphism < ActiveRecord::Migration
  def up
    add_column :addresses, :resource_id, :integer
    add_column :addresses, :resource_type, :string
  end

  def down
  end
end
