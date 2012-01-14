ActiveAdmin.register Book do

  index do
    column :title
    column :price 
    column :created_at
    column :updated_at
    column :year_of_publishing
    column :number_of_pages
    column :author
    column :isbn
    column :cover
    default_actions
  end

end
