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

ActiveRecord::Schema.define(version: 20190312051619) do

  create_table "articles", force: :cascade do |t|
    t.string   "name",       null: false
    t.integer  "rent",       null: false
    t.text     "address",    null: false
    t.integer  "age",        null: false
    t.text     "remark",     null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "first_nearests", force: :cascade do |t|
    t.string   "line_name"
    t.string   "station_name"
    t.integer  "walk_time"
    t.integer  "article_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.index ["article_id"], name: "index_first_nearests_on_article_id"
  end

  create_table "second_nearests", force: :cascade do |t|
    t.string   "line_name",    null: false
    t.string   "station_name", null: false
    t.integer  "walk_time",    null: false
    t.integer  "article_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.index ["article_id"], name: "index_second_nearests_on_article_id"
  end

end
