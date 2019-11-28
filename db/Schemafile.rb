create_table "articles", force: :cascade do |t|
  t.string   "title",      limit: 50,    null: false, default: ""
  t.text     "body",                     null: false, default: ""
  t.datetime "created_at", precision: 6, null: false
  t.datetime "updated_at", precision: 6, null: false
end
