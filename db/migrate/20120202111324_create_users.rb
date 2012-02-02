class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|

      t.timestamps
      t.string :name
      t.string :surname
      t.string :email
      t.string :phone
    end
  end
end
