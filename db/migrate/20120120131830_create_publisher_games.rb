class CreatePublisherGames < ActiveRecord::Migration
  def change
    create_table :publisher_games do |t|
      t.string :name
      t.timestamps
    end
  end
end
