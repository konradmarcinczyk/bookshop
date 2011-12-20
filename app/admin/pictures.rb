ActiveAdmin.register Picture do


  form :html => { :multipart => true } do |f|
    f.inputs "Product images" do
      f.input :photo, :as => :file, :label => "Photo"
      f.input :product_id
    end
    f.buttons
  end

  index do
    column :created_at
    column :updated_at
    column "Image" do |picture|
      link_to picture.photo_file_name, picture.photo.url
    end
    default_actions
  end

  show do
    div  do 
        image_tag picture.photo.url, :alt => picture.photo_file_name
 
    end
    default_main_content
  end
end
