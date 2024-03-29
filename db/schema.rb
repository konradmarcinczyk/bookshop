# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20120204145957) do

  create_table "accessories", :force => true do |t|
    t.string    "name"
    t.timestamp "created_at"
    t.timestamp "updated_at"
    t.float     "price"
    t.integer   "category_accessory_id"
    t.text      "description"
  end

  create_table "active_admin_comments", :force => true do |t|
    t.integer   "resource_id",   :null => false
    t.string    "resource_type", :null => false
    t.integer   "author_id"
    t.string    "author_type"
    t.text      "body"
    t.timestamp "created_at"
    t.timestamp "updated_at"
    t.string    "namespace"
  end

  add_index "active_admin_comments", ["author_type", "author_id"], :name => "index_active_admin_comments_on_author_type_and_author_id"
  add_index "active_admin_comments", ["namespace"], :name => "index_active_admin_comments_on_namespace"
  add_index "active_admin_comments", ["resource_type", "resource_id"], :name => "index_admin_notes_on_resource_type_and_resource_id"

  create_table "addresses", :force => true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "street"
    t.string   "zip_code"
    t.string   "city"
    t.string   "address_type"
    t.integer  "client_id"
    t.string   "house_number"
    t.string   "apartment_number"
    t.integer  "resource_id"
    t.string   "resource_type"
  end

  create_table "admin_users", :force => true do |t|
    t.string    "email",                                 :default => "", :null => false
    t.string    "encrypted_password",     :limit => 128, :default => "", :null => false
    t.string    "reset_password_token"
    t.timestamp "reset_password_sent_at"
    t.timestamp "remember_created_at"
    t.integer   "sign_in_count",                         :default => 0
    t.timestamp "current_sign_in_at"
    t.timestamp "last_sign_in_at"
    t.string    "current_sign_in_ip"
    t.string    "last_sign_in_ip"
    t.timestamp "created_at"
    t.timestamp "updated_at"
  end

  add_index "admin_users", ["email"], :name => "index_admin_users_on_email", :unique => true
  add_index "admin_users", ["reset_password_token"], :name => "index_admin_users_on_reset_password_token", :unique => true

  create_table "books", :force => true do |t|
    t.string    "title"
    t.timestamp "created_at"
    t.timestamp "updated_at"
    t.string    "translation"
    t.integer   "year_of_publishing"
    t.integer   "number_of_pages"
    t.string    "author"
    t.float     "price"
    t.text      "description"
    t.string    "language"
    t.integer   "subcategory_book_id"
    t.string    "size"
    t.integer   "publisher_book_id"
    t.integer   "category_book_id"
    t.string    "cover"
    t.string    "isbn"
  end

  create_table "category_accessories", :force => true do |t|
    t.string    "name"
    t.timestamp "created_at"
    t.timestamp "updated_at"
  end

  create_table "category_books", :force => true do |t|
    t.string    "name"
    t.timestamp "created_at"
    t.timestamp "updated_at"
  end

  create_table "category_games", :force => true do |t|
    t.string    "name"
    t.timestamp "created_at"
    t.timestamp "updated_at"
  end

  create_table "clients", :force => true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "resource_id"
    t.string   "resource_type"
    t.string   "status",                                :default => "new"
    t.string   "email",                                 :default => "",    :null => false
    t.string   "encrypted_password",     :limit => 128, :default => "",    :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",                         :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.string   "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
  end

  add_index "clients", ["confirmation_token"], :name => "index_clients_on_confirmation_token", :unique => true
  add_index "clients", ["email"], :name => "index_clients_on_email", :unique => true
  add_index "clients", ["reset_password_token"], :name => "index_clients_on_reset_password_token", :unique => true

  create_table "companies", :force => true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "name"
    t.string   "fax_phone"
    t.string   "stationary_phone"
    t.boolean  "library_or_school"
    t.string   "nip"
    t.string   "mobile_phone"
    t.text     "contact_comments"
  end

  create_table "contacts", :force => true do |t|
    t.timestamp "created_at"
    t.timestamp "updated_at"
  end

  create_table "games", :force => true do |t|
    t.string    "name"
    t.timestamp "created_at"
    t.timestamp "updated_at"
    t.float     "price"
    t.integer   "number_of_players_from"
    t.integer   "number_of_players_to"
    t.integer   "age_of_players_from"
    t.integer   "game_time_from"
    t.integer   "game_time_to"
    t.text      "description"
    t.string    "language"
    t.integer   "subcategory_game_id"
    t.integer   "number_of_players"
    t.integer   "category_game_id"
    t.string    "instruction"
    t.integer   "year_of_publication"
    t.string    "game_type"
    t.integer   "game_time"
    t.integer   "publisher_game_id"
  end

  create_table "games_categories", :force => true do |t|
    t.string    "name"
    t.timestamp "created_at"
    t.timestamp "updated_at"
  end

  create_table "games_subcategories", :force => true do |t|
    t.string    "name"
    t.timestamp "created_at"
    t.timestamp "updated_at"
  end

  create_table "payers", :force => true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "name"
    t.string   "phone"
    t.integer  "company_id"
    t.string   "nip"
    t.text     "contact_comments"
  end

  create_table "pictures", :force => true do |t|
    t.timestamp "created_at"
    t.timestamp "updated_at"
    t.text      "photo"
    t.string    "photo_file_name"
    t.string    "photo_content_type"
    t.integer   "photo_file_size"
    t.integer   "product_id"
  end

  create_table "products", :force => true do |t|
    t.timestamp "created_at"
    t.timestamp "updated_at"
    t.integer   "resource_id"
    t.string    "resource_type"
  end

  create_table "publisher_books", :force => true do |t|
    t.string    "name"
    t.timestamp "created_at"
    t.timestamp "updated_at"
  end

  create_table "publisher_games", :force => true do |t|
    t.string    "name"
    t.timestamp "created_at"
    t.timestamp "updated_at"
  end

  create_table "subcategory_books", :force => true do |t|
    t.string    "name"
    t.timestamp "created_at"
    t.timestamp "updated_at"
    t.integer   "category_book_id"
  end

  create_table "subcategory_games", :force => true do |t|
    t.string    "name"
    t.timestamp "created_at"
    t.timestamp "updated_at"
    t.integer   "category_game_id"
  end

  create_table "users", :force => true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "name"
    t.string   "surname"
    t.string   "phone"
  end

end
