# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 2024_03_24_034805) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "cart_items", force: :cascade do |t|
    t.bigint "coffee_type_id", null: false
    t.integer "quantity"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["coffee_type_id"], name: "index_cart_items_on_coffee_type_id"
  end

  create_table "coffee_ingredients", force: :cascade do |t|
    t.string "name", limit: 255
  end

  create_table "coffee_type_ingredients", force: :cascade do |t|
    t.bigint "coffee_type_id"
    t.bigint "coffee_ingredient_id"
    t.index ["coffee_ingredient_id"], name: "index_coffee_type_ingredients_on_coffee_ingredient_id"
    t.index ["coffee_type_id"], name: "index_coffee_type_ingredients_on_coffee_type_id"
  end

  create_table "coffee_types", force: :cascade do |t|
    t.string "name", limit: 50
    t.string "image_url"
    t.integer "calories"
    t.decimal "price", precision: 5, scale: 2
    t.integer "discounted_percent"
    t.string "description", limit: 255
  end

  add_foreign_key "cart_items", "coffee_types"
  add_foreign_key "coffee_type_ingredients", "coffee_ingredients"
  add_foreign_key "coffee_type_ingredients", "coffee_types"
end
