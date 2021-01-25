# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2021_01_25_213156) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "comments", force: :cascade do |t|
    t.string "content"
    t.bigint "user_id", null: false
    t.bigint "recipe_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["recipe_id"], name: "index_comments_on_recipe_id"
    t.index ["user_id"], name: "index_comments_on_user_id"
  end

  create_table "recipes", force: :cascade do |t|
    t.string "name"
    t.string "img_url"
    t.string "amount1"
    t.string "ingredient1"
    t.string "amount2"
    t.string "ingredient2"
    t.string "amount3"
    t.string "ingredient3"
    t.string "amount4"
    t.string "ingredient4"
    t.string "amount5"
    t.string "ingredient5"
    t.string "amount6"
    t.string "ingredient6"
    t.string "amount7"
    t.string "ingredient7"
    t.string "amount8"
    t.string "ingredient8"
    t.string "amount9"
    t.string "ingredient9"
    t.string "amount10"
    t.string "ingredient10"
    t.string "garnish"
    t.string "instructions"
    t.string "glassware"
    t.string "history"
    t.string "flavor_profile"
    t.bigint "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_recipes_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "email"
    t.string "password_digest"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "comments", "recipes"
  add_foreign_key "comments", "users"
  add_foreign_key "recipes", "users"
end
