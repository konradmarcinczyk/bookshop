class ChangeType < ActiveRecord::Migration
  def up
    remove_column :games, :instruction, :text
    add_column :games, :instruction, :string
  end

  def down
  end
end
