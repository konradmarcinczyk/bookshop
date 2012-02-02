class CreatePersonContacts < ActiveRecord::Migration
  def change
    create_table :person_contacts do |t|

      t.timestamps
      t.string :name
      t.string :surname
      t.string :phone
      t.string :position
      t.integer :company_id
    end
  end
end
