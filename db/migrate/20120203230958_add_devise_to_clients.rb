class AddDeviseToClients < ActiveRecord::Migration
  def self.up
    change_table(:clients) do |t|
      t.database_authenticatable :null => false
      t.recoverable
      t.rememberable
      t.trackable
      t.confirmable
    end

    add_index :clients, :email,                :unique => true
    add_index :clients, :reset_password_token, :unique => true
    add_index :clients, :confirmation_token,   :unique => true
  
  end

  def self.down
    raise ActiveRecord::IrreversibleMigration
  end
end
