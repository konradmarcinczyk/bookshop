class CreatePublisherBooks < ActiveRecord::Migration
  def change
    create_table :publisher_books do |t|
      t.string :name

      t.timestamps
    end
  end
end
