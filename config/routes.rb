Bookshop::Application.routes.draw do

  ActiveAdmin.routes(self)

  devise_for :admin_users, ActiveAdmin::Devise.config

  resources :books
  resources :games
  resources :accessories

  get "products/index"
  get "products/show"
  get "products/new"
  get "products/edit"
  get "products/destroy"

  root :to => 'home#index'

  get "publishers/index"
  get "publishers/show"
  get "publishers/new"
  get "publishers/edit"
  get "publishers/destroy"
  get "books/index"
  get "books/show"
  get "books/new"
  get "books/edit"
  get "books/destroy"
  get "category_books/index"
  get "category_books/show"
  get "category_books/new"
  get "category_books/edit"
  get "category_books/destroy"
  get "subcategory_books/index"
  get "subcategory_books/show"
  get "subcategory_books/new"
  get "subcategory_books/edit"
  get "subcategory_books/destroy"
  get "category_accessories/index"
  get "category_accessories/show"
  get "category_accessories/new"
  get "category_accessories/edit"
  get "category_accessories/destroy"
  get "accessories/index"
  get "accessories/show"
  get "accessories/new"
  get "accessories/edit"
  get "accessories/destroy"
  get "games/index"
  get "games/show"
  get "games/new"
  get "games/edit"
  get "games/destroy"
  get "category_games/index"
  get "category_games/show"
  get "category_games/new"
  get "category_games/edit"
  get "category_games/destroy"
  get "subcategory_games/index"
  get "subcategory_games/show"
  get "subcategory_games/new"
  get "subcategory_games/edit"
  get "subcategory_games/destroy"
  get "games_category/index"
  get "games_category/show"
  get "games_category/new"
  get "games_category/edit"
  get "games_category/destroy"
  get "games_subcategory/index"
  get "games_subcategory/show"
  get "games_subcategory/new"
  get "games_subcategory/edit"
  get "games_subcategory/destroy"


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
