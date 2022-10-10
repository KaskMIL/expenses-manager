ActiveRecord::Schema[7.0].define(version: 2022_10_10_204612) do

  enable_extension "plpgsql"

  create_table "categories", force: :cascade do |t|
    t.string "name"
    t.string "icon"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "user_id", null: false
    t.index ["user_id"], name: "index_categories_on_user_id"
  end

  create_table "expenditures", force: :cascade do |t|
    t.string "name"
    t.integer "amount"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "author_id", null: false
    t.bigint "category_id", null: false
    t.index ["author_id"], name: "index_expenditures_on_author_id"
    t.index ["category_id"], name: "index_expenditures_on_category_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "categories", "users"
  add_foreign_key "expenditures", "categories"
  add_foreign_key "expenditures", "users", column: "author_id"
end
