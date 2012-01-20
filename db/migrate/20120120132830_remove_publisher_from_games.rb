class RemovePublisherFromGames < ActiveRecord::Migration
  def up
       remove_column :games, :publisher, :string
  end

  def down
  end
end
