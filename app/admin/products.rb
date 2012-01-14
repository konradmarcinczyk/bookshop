ActiveAdmin.register Product do
  show do
    attributes_table :id, :created_at, :updated_at, :resource_id, :resource_type
    active_admin_comments
  end
end
