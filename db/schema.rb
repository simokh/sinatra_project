# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20200808224221) do

  create_table "jerseys", force: :cascade do |t|
    t.string  "club_name"
    t.integer "number"
    t.string  "user_id"
    t.string  "league_id"
  end

  create_table "leagues", force: :cascade do |t|
    t.string "league_name"
    t.string "league_country"
  end

  create_table "users", force: :cascade do |t|
    t.string "user_name"
    t.string "email"
    t.text   "password_digest"
  end

end
