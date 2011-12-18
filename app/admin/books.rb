ActiveAdmin.register Book do

  # Customize columns displayed on the index screen in the table
  index do
    column :title
    column :price 
    column :created_at
    column :updated_at
    column :translation
    column :year_of_publishing
    column :number_of_pages
    column :publisher
    column :author
    column :language
    column :size
    column :isbn
    column :cover
    default_actions
  end

end
