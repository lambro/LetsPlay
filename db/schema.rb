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

ActiveRecord::Schema.define(:version => 20141201190652) do

  create_table "console_users", :force => true do |t|
    t.integer  "user_id"
    t.integer  "console_id"
    t.string   "gamer_tag"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "consoles", :force => true do |t|
    t.string   "name"
    t.text     "console_image"
    t.text     "console_logo"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  create_table "friendships", :force => true do |t|
    t.integer  "usera_id"
    t.integer  "userb_id"
    t.boolean  "accepted"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "games", :force => true do |t|
    t.string   "title"
    t.string   "genre"
    t.integer  "console_id"
    t.text     "logo"
    t.text     "image"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "gamingsessions", :force => true do |t|
    t.string   "title"
    t.integer  "created_by"
    t.boolean  "online"
    t.datetime "min_age_limit"
    t.datetime "max_age_limit"
    t.text     "description"
    t.datetime "gsdate"
    t.boolean  "active"
    t.string   "location_name"
    t.string   "postcode"
    t.integer  "console_id1"
    t.integer  "console_id2"
    t.integer  "console_id3"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
    t.boolean  "open"
  end

  create_table "groups", :force => true do |t|
    t.string   "title"
    t.integer  "created_by"
    t.datetime "min_age"
    t.datetime "max_age"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "user_games", :force => true do |t|
    t.integer  "user_id"
    t.integer  "game_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "user_groups", :force => true do |t|
    t.integer  "user_id"
    t.integer  "group_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "user_sessions", :force => true do |t|
    t.integer  "user_id"
    t.integer  "gamingsession_id"
    t.boolean  "accepted"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "name"
    t.string   "email"
    t.string   "postcode"
    t.datetime "dob"
    t.text     "profile_picture"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

end
