class CreateAddresses < ActiveRecord::Migration
  def change
    create_table :addresses do |t|

      t.timestamps
      t.string :street
      t.integer :house_number
      t.integer :apartment_number
      t.string :zip_code
      t.string :city
      t.string :address_type
      t.integer :client_id 
    end
  end
end
