class ChangeTypeOfSomeColumn < ActiveRecord::Migration
  def up
    remove_column :companies, :nip, :integer
    remove_column :payers, :nip, :integer
    remove_column :companies, :mobile_phone, :integer
    add_column :companies, :nip, :string
    add_column :payers, :nip, :string
    add_column :companies, :mobile_phone, :string
  end

  def down
  end
end
