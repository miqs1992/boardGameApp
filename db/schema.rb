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

ActiveRecord::Schema.define(version: 2019_02_24_172019) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "games", force: :cascade do |t|
    t.string "name", null: false
    t.integer "min_players", default: 1, null: false
    t.integer "max_players", default: 1, null: false
    t.integer "opt_players", default: 1, null: false
    t.integer "difficulty", default: 1, null: false
    t.integer "interaction", default: 1, null: false
    t.integer "complexity", default: 1, null: false
    t.integer "duration", default: 1, null: false
    t.string "link"
    t.integer "mark", default: 1, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["name"], name: "index_games_on_name"
  end

  create_table "games_lists", force: :cascade do |t|
    t.bigint "game_id"
    t.bigint "user_id"
    t.string "name", null: false
    t.boolean "public_access", default: true, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["game_id"], name: "index_games_lists_on_game_id"
    t.index ["user_id", "game_id"], name: "index_games_lists_on_user_id_and_game_id", unique: true
    t.index ["user_id"], name: "index_games_lists_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "games_lists", "games"
  add_foreign_key "games_lists", "users"
end
