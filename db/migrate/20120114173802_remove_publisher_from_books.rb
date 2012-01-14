class RemovePublisherFromBooks < ActiveRecord::Migration
  def up
    remove_column :books, :publisher, :string
  end

  def down
  end
end
