ActiveRecord::Schema.define(version: 20190313083253) do

  create_table "articles", force: :cascade do |t|
    t.string   "name",       null: false
    t.integer  "rent",       null: false
    t.text     "address",    null: false
    t.integer  "age",        null: false
    t.text     "remark",     null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "nearests", force: :cascade do |t|
    t.string   "line_name",    null: false
    t.string   "station_name", null: false
    t.integer  "walk_time",    null: false
    t.integer  "article_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.index ["article_id"], name: "index_nearests_on_article_id"
  end

end
