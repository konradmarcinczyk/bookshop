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

ActiveRecord::Schema.define(:version => 20111128214734) do

  create_table "accessories", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.float    "price"
    t.integer  "category_accessories_id"
    t.text     "description"
  end

  create_table "books", :force => true do |t|
    t.string   "title"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "isbn"
    t.string   "translation"
    t.integer  "year_of_publishing"
    t.integer  "number_of_pages"
    t.string   "publisher"
    t.string   "author"
    t.float    "price"
    t.text     "description"
    t.string   "language"
    t.integer  "category_books_id"
    t.string   "size"
  end

  create_table "category_accessories", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "category_books", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "subcategory_books_id"
  end

  create_table "category_games", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "subcategory_games_id"
  end

  create_table "games", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.text     "instruction"
    t.string   "game_type"
    t.string   "game_time"
    t.string   "publisher"
    t.float    "price"
    t.integer  "number_of_players_from"
    t.integer  "number_of_players_to"
    t.integer  "age_of_players_from"
    t.integer  "game_time_from"
    t.integer  "game_time_to"
    t.text     "description"
    t.string   "language"
    t.integer  "category_games_id"
  end

  create_table "games_categories", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "games_subcategories", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "products", :force => true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "publisher_books", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "subcategory_books", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "subcategory_games", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
