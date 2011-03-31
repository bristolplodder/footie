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

ActiveRecord::Schema.define(:version => 20110319212949) do

  create_table "comments", :force => true do |t|
    t.string   "commenter"
    t.text     "body"
    t.integer  "post_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "games", :force => true do |t|
    t.decimal  "game_name_id"
    t.string   "name"
    t.string   "home"
    t.integer  "home_score"
    t.string   "away"
    t.integer  "away_score"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "guesses", :force => true do |t|
    t.string   "commenter"
    t.text     "body"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "masters", :force => true do |t|
    t.string   "home"
    t.integer  "homescore"
    t.string   "away"
    t.integer  "awayscore"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "predictions", :force => true do |t|
    t.integer  "user_id"
    t.string   "home"
    t.integer  "home_score"
    t.string   "away"
    t.integer  "away_score"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "predictions", ["user_id"], :name => "index_predictions_on_user_id"

  create_table "relationships", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", :force => true do |t|
    t.decimal  "user_name_id"
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
