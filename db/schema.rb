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

ActiveRecord::Schema.define(version: 2018_06_24_121739) do

  create_table "trainers", force: :cascade do |t|
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
    t.string "image"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "username"
    t.string "first_name"
    t.string "last_name"
    t.string "first_name_kana"
    t.string "last_name_kana"
    t.date "birth_date"
    t.string "company"
    t.text "description"
    t.string "qualification"
    t.index ["email"], name: "index_trainers_on_email", unique: true
    t.index ["reset_password_token"], name: "index_trainers_on_reset_password_token", unique: true
  end

  create_table "trainingactuals", force: :cascade do |t|
    t.integer "trainingmenu_id"
    t.integer "trainingitem_id"
    t.integer "time"
    t.boolean "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.float "weight"
    t.integer "sets"
    t.string "trainingname"
    t.index ["trainingitem_id"], name: "index_trainingactuals_on_trainingitem_id"
    t.index ["trainingmenu_id"], name: "index_trainingactuals_on_trainingmenu_id"
  end

  create_table "trainingitems", force: :cascade do |t|
    t.string "name"
    t.string "part"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "trainer_id"
    t.index ["trainer_id"], name: "index_trainingitems_on_trainer_id"
  end

  create_table "trainingmenus", force: :cascade do |t|
    t.date "date"
    t.string "menu"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "user_id"
    t.index ["user_id"], name: "index_trainingmenus_on_user_id"
  end

  create_table "userbodies", force: :cascade do |t|
    t.string "date"
    t.float "weight"
    t.float "bodyfat"
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
    t.integer "trainer_id"
    t.string "username"
    t.string "first_name"
    t.string "last_name"
    t.string "first_name_kana"
    t.string "last_name_kana"
    t.string "image_id"
    t.date "birth_date"
    t.float "goalweight"
    t.date "goaldate"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
    t.index ["trainer_id"], name: "index_users_on_trainer_id"
  end

  create_table "weights", force: :cascade do |t|
    t.integer "user_id"
    t.date "date"
    t.float "weightactual"
    t.float "weightplan"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_weights_on_user_id"
  end

end
