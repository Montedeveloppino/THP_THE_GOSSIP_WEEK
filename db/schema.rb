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
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2021_02_10_153913) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "comments", force: :cascade do |t|
    t.text "commenter"
    t.bigint "gossip_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["gossip_id"], name: "index_comments_on_gossip_id"
  end

  create_table "gossips", force: :cascade do |t|
    t.string "title"
    t.string "content"
    t.string "author"
    t.string "author_city"
    t.bigint "User_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["User_id"], name: "index_gossips_on_User_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.text "bio"
    t.string "email"
    t.integer "age"
    t.string "city"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "comments", "gossips"
end
