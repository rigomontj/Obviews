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

ActiveRecord::Schema.define(version: 20180314135325) do

  create_table "archived_boards", force: :cascade do |t|
    t.integer "user_id"
    t.integer "candidate_1_id"
    t.integer "candidate_2_id"
    t.integer "lock"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.text "candidate_1_picture"
    t.string "candidate_1_firstname"
    t.string "candidate_1_lastname"
    t.text "candidate_1_bio"
    t.text "candidate_2_picture"
    t.string "candidate_2_firstname"
    t.string "candidate_2_lastname"
    t.text "candidate_2_bio"
  end

  create_table "boards", force: :cascade do |t|
    t.integer "candidate_1_id"
    t.integer "candidate_2_id"
    t.integer "lock"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "user_id"
  end

  create_table "matches", force: :cascade do |t|
    t.integer "candidate_1_id"
    t.integer "candidate_2_id"
    t.integer "lock"
    t.text "candidate_1_picture"
    t.string "candidate_1_firstname"
    t.string "candidate_1_lastname"
    t.text "candidate_1_bio"
    t.text "candidate_2_picture"
    t.string "candidate_2_firstname"
    t.string "candidate_2_lastname"
    t.text "candidate_2_bio"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string "current_sign_in_ip"
    t.string "last_sign_in_ip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "firstname"
    t.string "lastname"
    t.text "bio"
    t.string "phone"
    t.integer "match_count"
    t.integer "score"
    t.string "city"
    t.integer "gender"
    t.text "picture"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
