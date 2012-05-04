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

ActiveRecord::Schema.define(:version => 20120504220240) do

  create_table "message_logs", :force => true do |t|
    t.integer  "pmid"
    t.integer  "userid"
    t.text     "content"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "post_categories", :force => true do |t|
    t.string   "value"
    t.string   "desc"
    t.integer  "type"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "post_messages", :force => true do |t|
    t.integer  "postid"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "posts", :force => true do |t|
    t.integer  "userid"
    t.integer  "type"
    t.string   "category"
    t.text     "content"
    t.string   "status"
    t.integer  "priority"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "user_profiles", :force => true do |t|
    t.integer  "userid"
    t.string   "fname"
    t.string   "lname"
    t.string   "mname"
    t.string   "street"
    t.string   "country"
    t.string   "state"
    t.string   "city"
    t.string   "zipcode"
    t.string   "age"
    t.string   "gender"
    t.datetime "birthdate"
    t.string   "photosrc"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "user_ratings", :force => true do |t|
    t.integer  "targetid"
    t.integer  "sourceid"
    t.integer  "type"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "user_reviews", :force => true do |t|
    t.integer  "targetid"
    t.integer  "sourceid"
    t.text     "content"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "user_settings", :force => true do |t|
    t.integer  "userid"
    t.text     "content"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "username"
    t.string   "email"
    t.string   "password"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.string   "fbid"
    t.string   "twtid"
    t.string   "type"
  end

end
