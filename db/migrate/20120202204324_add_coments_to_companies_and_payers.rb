class AddComentsToCompaniesAndPayers < ActiveRecord::Migration
  def change
    add_column :companies, :contact_comments, :text
    add_column :payers, :contact_comments, :text
  end
end
