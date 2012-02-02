class CreatePayers < ActiveRecord::Migration
  def change
    create_table :payers do |t|

      t.timestamps
      t.string :name 
      t.integer :nip
      t.string :phone
      t.integer :company_id
    end
  end
end
