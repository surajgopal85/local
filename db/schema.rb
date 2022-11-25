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

ActiveRecord::Schema[7.0].define(version: 2022_11_25_191829) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "experience_tags", force: :cascade do |t|
    t.bigint "tag_id", null: false
    t.bigint "experience_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["experience_id"], name: "index_experience_tags_on_experience_id"
    t.index ["tag_id"], name: "index_experience_tags_on_tag_id"
  end

  create_table "experiences", force: :cascade do |t|
    t.text "description"
    t.string "location"
    t.string "image_url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "local_id"
    t.string "name"
    t.float "latitude"
    t.float "longitude"
    t.index ["local_id"], name: "index_experiences_on_local_id"
  end

  create_table "messages", force: :cascade do |t|
    t.string "content"
    t.bigint "experience_id", null: false
    t.bigint "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["experience_id"], name: "index_messages_on_experience_id"
    t.index ["user_id"], name: "index_messages_on_user_id"
  end

  create_table "preferences", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "tag_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["tag_id"], name: "index_preferences_on_tag_id"
    t.index ["user_id"], name: "index_preferences_on_user_id"
  end

  create_table "tags", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "trip_experiences", force: :cascade do |t|
    t.date "experience_date"
    t.bigint "experience_id", null: false
    t.bigint "trip_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["experience_id"], name: "index_trip_experiences_on_experience_id"
    t.index ["trip_id"], name: "index_trip_experiences_on_trip_id"
  end

  create_table "trips", force: :cascade do |t|
    t.string "city"
    t.date "start_date"
    t.date "end_date"
    t.bigint "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_trips_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "name"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "experience_tags", "experiences"
  add_foreign_key "experience_tags", "tags"
  add_foreign_key "experiences", "users", column: "local_id"
  add_foreign_key "messages", "experiences"
  add_foreign_key "messages", "users"
  add_foreign_key "preferences", "tags"
  add_foreign_key "preferences", "users"
  add_foreign_key "trip_experiences", "experiences"
  add_foreign_key "trip_experiences", "trips"
  add_foreign_key "trips", "users"
end
