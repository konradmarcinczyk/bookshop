#encoding: utf-8
ActiveAdmin.register Game do
 
 form :html => { :multipart => true } do |f|
    f.inputs "Dodaj grę" do
      f.input :category_game_id, :as => :select, :collection => CategoryGame.all.collect
      f.input :subcategory_game_id, :as => :select, :collection => SubcategoryGame.all.collect
      f.input :publisher_game_id, :as => :select, :collection => PublisherGame.all.collect
      f.input :name
      f.input :language
      f.input :instruction
      f.input :year_of_publication
      f.input :price
      f.input :number_of_players
      f.input :number_of_players_from
      f.input :number_of_players_to
      f.input :age_of_players_from
      f.input :description
      f.input :game_type
    end
    f.inputs "Czas gry w MINUTACH !!!" do
      f.input :game_time
      f.input :game_time_from
      f.input :game_time_to
    end
    f.buttons
  end

  show do
    panel "Dodaj zdjęcie do gry" do
      render "game"
    end
    default_main_content
  end

  index do
    column :name
    column :created_at
    column :updated_at
    column :price
    column :age_of_players_from
    column :instruction
    column :year_of_publication
    column :game_type

    default_actions
  end
end
