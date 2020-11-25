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

ActiveRecord::Schema.define(version: 2020_11_25_145115) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "active_storage_attachments", force: :cascade do |t|
    t.string "name", null: false
    t.string "record_type", null: false
    t.bigint "record_id", null: false
    t.bigint "blob_id", null: false
    t.datetime "created_at", null: false
    t.index ["blob_id"], name: "index_active_storage_attachments_on_blob_id"
    t.index ["record_type", "record_id", "name", "blob_id"], name: "index_active_storage_attachments_uniqueness", unique: true
  end

  create_table "active_storage_blobs", force: :cascade do |t|
    t.string "key", null: false
    t.string "filename", null: false
    t.string "content_type"
    t.text "metadata"
    t.bigint "byte_size", null: false
    t.string "checksum", null: false
    t.datetime "created_at", null: false
    t.index ["key"], name: "index_active_storage_blobs_on_key", unique: true
  end

  create_table "cooking_methods", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "main_categories", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "meals", force: :cascade do |t|
    t.bigint "main_category_id", null: false
    t.bigint "cooking_method_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "name"
    t.index ["cooking_method_id"], name: "index_meals_on_cooking_method_id"
    t.index ["main_category_id"], name: "index_meals_on_main_category_id"
  end

  create_table "ratings", force: :cascade do |t|
    t.text "comment"
    t.integer "note"
    t.bigint "user_selection_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_selection_id"], name: "index_ratings_on_user_selection_id"
  end

  create_table "suggestions", force: :cascade do |t|
    t.bigint "wine_region_id", null: false
    t.bigint "wine_type_id", null: false
    t.bigint "cooking_method_id", null: false
    t.bigint "main_category_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["cooking_method_id"], name: "index_suggestions_on_cooking_method_id"
    t.index ["main_category_id"], name: "index_suggestions_on_main_category_id"
    t.index ["wine_region_id"], name: "index_suggestions_on_wine_region_id"
    t.index ["wine_type_id"], name: "index_suggestions_on_wine_type_id"
  end

  create_table "user_selections", force: :cascade do |t|
    t.bigint "wine_id", null: false
    t.bigint "user_id", null: false
    t.bigint "meal_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["meal_id"], name: "index_user_selections_on_meal_id"
    t.index ["user_id"], name: "index_user_selections_on_user_id"
    t.index ["wine_id"], name: "index_user_selections_on_wine_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "wine_regions", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "wine_types", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "wines", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.string "price"
    t.string "millesime"
    t.string "cepage"
    t.bigint "wine_region_id", null: false
    t.bigint "wine_type_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["wine_region_id"], name: "index_wines_on_wine_region_id"
    t.index ["wine_type_id"], name: "index_wines_on_wine_type_id"
  end

  add_foreign_key "active_storage_attachments", "active_storage_blobs", column: "blob_id"
  add_foreign_key "meals", "cooking_methods"
  add_foreign_key "meals", "main_categories"
  add_foreign_key "ratings", "user_selections"
  add_foreign_key "suggestions", "cooking_methods"
  add_foreign_key "suggestions", "main_categories"
  add_foreign_key "suggestions", "wine_regions"
  add_foreign_key "suggestions", "wine_types"
  add_foreign_key "user_selections", "meals"
  add_foreign_key "user_selections", "users"
  add_foreign_key "user_selections", "wines"
  add_foreign_key "wines", "wine_regions"
  add_foreign_key "wines", "wine_types"
end
