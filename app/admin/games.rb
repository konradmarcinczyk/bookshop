ActiveAdmin.register Game do
 
  index do
    column :name
    column :created_at
    column :updated_at
    column :publisher
    column :price
    column :number_of_players
    column :number_of_players_from
    column :number_of_players_to
    column :age_of_players_from
    column :game_time
    column :game_time_from
    column :game_time_to
    column :instruction
    column :year_of_publication
    column :game_type

    default_actions
  end
end
