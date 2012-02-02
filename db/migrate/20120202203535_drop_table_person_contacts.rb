class DropTablePersonContacts < ActiveRecord::Migration
  def up
    drop_table :person_contacts
  end

  def down
  end
end
