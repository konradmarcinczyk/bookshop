class CreateClients < ActiveRecord::Migration
  def change
    create_table :clients do |t|

      t.timestamps
      t.integer   :resource_id
      t.string    :resource_type
      t.string    :status, :default => "new"
    end
  end
end
