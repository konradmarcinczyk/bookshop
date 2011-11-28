class RemoveUsersAndAdmins < ActiveRecord::Migration
  def up
   drop_table :users
   drop_table :admins
   drop_table :active_admin_comments
   drop_table :admin_users
  end

  def down
  end
end
