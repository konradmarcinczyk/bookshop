ActiveAdmin.register Picture do
#  form  :html => { :enctype => "multipart/form-data" } 
#= form_for :picture, @picture, :url => picture_path, :html => { :multipart => true } do |form|
#  = form.file_field :photo

    #form :html => { :enctype => "multipart/form-data" } do |f|
    #  f.input :photo
    #  f.buttons
    #end

  form :html => { :multipart => true } do |f|
    f.inputs "Product images" do
      f.input :photo, :as => :file, :label => "Photo"
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
      div :created_at
      div :updated_at
      div :photo do 
        image_tag picture.photo.url, :alt => picture.photo_file_name
      end
  end
end
