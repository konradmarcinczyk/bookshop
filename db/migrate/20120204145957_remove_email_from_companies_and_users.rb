class RemoveEmailFromCompaniesAndUsers < ActiveRecord::Migration
  def up
    remove_column :companies, :email
    remove_column :users, :email
  end

  def down
  end
end
