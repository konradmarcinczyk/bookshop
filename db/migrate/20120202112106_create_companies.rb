class CreateCompanies < ActiveRecord::Migration
  def change
    create_table :companies do |t|

      t.timestamps
      t.string :name
      t.string :email
      t.integer :nip
      t.integer :mobile_phone
      t.string :fax_phone
      t.string :stationary_phone
      t.boolean :library_or_school
    end
  end
end
