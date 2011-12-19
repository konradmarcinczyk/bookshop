ActiveAdmin.register Picture do
#  form  :html => { :enctype => "multipart/form-data" } 
#= form_for :picture, @picture, :url => picture_path, :html => { :multipart => true } do |form|
#  = form.file_field :photo

    form :html => { :enctype => "multipart/form-data" } do |f|
      f.input :photo
      f.buttons
    end
end
