class AddPhotoToPicture < ActiveRecord::Migration
  def change
    add_column :pictures, :photo, :has_attached_file 
    add_column :pictures, :photo_file_name, :string # Original filename
    add_column :pictures, :photo_content_type, :string # Mime type
    add_column :pictures, :photo_file_size, :integer # File size in bytes
    add_column :pictures, :product_id, :integer
  end
end
