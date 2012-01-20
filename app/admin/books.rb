#encoding: utf-8
ActiveAdmin.register Book do

  form :html => { :multipart => true } do |f|
    f.inputs "Dodaj książkę" do
      f.input :category_book_id, :as => :select, :collection => CategoryBook.all.collect
      f.input :subcategory_book_id, :as => :select, :collection => SubcategoryBook.all.collect
      f.input :publisher_book_id, :as => :select, :collection => PublisherBook.all.collect
      f.input :title
      f.input :author
      f.input :language
      f.input :translation
      f.input :year_of_publishing
      f.input :number_of_pages
      f.input :price
      f.input :description
      f.input :size 
      f.input :cover, :as => :select, :collection => ["miękka", "twarda"]
      f.input :isbn
    end
    f.buttons
  end

  show do
    panel "Dodaj zdjęcie do książki" do
      render "book"
    end
    default_main_content
  end

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
