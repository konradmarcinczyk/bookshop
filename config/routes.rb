Bookshop::Application.routes.draw do

  ActiveAdmin.routes(self)
  devise_for :admin_users, ActiveAdmin::Devise.config

  root :to => 'home#index'
    match '/about_company', :to => 'home#about_company'
    match '/contact_us', :to => 'home#contact_us'
    match '/cooperation', :to => 'home#cooperation'

  resources :books
  resources :games
  resources :accessories
  resources :category_books
  resources :subcategory_books
  resources :category_games
  resources :subcategory_games
  resources :category_accessories
  resources :publisher_books

get "books/new"

  get "publishers/index"
  get "publishers/show"
  get "books/index"
  get "books/show"
  get "category_books/index"
  get "category_books/show"
  get "subcategory_books/index"
  get "subcategory_books/show"
  get "category_accessories/index"
  get "category_accessories/show"
  get "accessories/index"
  get "accessories/show"
  get "games/index"
  get "games/show"
  get "category_games/index"
  get "category_games/show"
  get "subcategory_games/index"
  get "subcategory_games/show"
  get "games_category/index"
  get "games_category/show"
  get "games_subcategory/index"
  get "games_subcategory/show"


#  get "users/index"

 # devise_for :users
 # resources :users







  # The priority is based upon order of creation:
  # first created -> highest priority.

  # Sample of regular route:
  #   match 'products/:id' => 'catalog#view'
  # Keep in mind you can assign values other than :controller and :action

  # Sample of named route:
  #   match 'products/:id/purchase' => 'catalog#purchase', :as => :purchase
  # This route can be invoked with purchase_url(:id => product.id)

  # Sample resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Sample resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Sample resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Sample resource route with more complex sub-resources
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', :on => :collection
  #     end
  #   end

  # Sample resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end

  # You can have the root of your site routed with "root"
  # just remember to delete public/index.html.
  # root :to => 'welcome#index'

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id(.:format)))'
end
