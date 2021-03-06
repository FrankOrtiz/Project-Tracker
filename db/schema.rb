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

ActiveRecord::Schema.define(version: 20140626201408) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "projects", force: true do |t|
    t.string   "name"
    t.text     "description"
    t.text     "who"
    t.text     "how"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "editor"
    t.datetime "latest_updated"
    t.string   "author"
  end

  create_table "updates", force: true do |t|
    t.text     "who"
    t.text     "description"
    t.integer  "project_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "project_edit"
  end

  add_index "updates", ["project_id"], name: "index_updates_on_project_id", using: :btree

  create_table "users", force: true do |t|
    t.string   "username"
    t.string   "password_digest"
    t.string   "name"
    t.string   "email"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["username"], name: "index_users_on_username", unique: true, using: :btree

  create_table "watchings", force: true do |t|
    t.integer  "project_id"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "watchings", ["project_id"], name: "index_watchings_on_project_id", using: :btree
  add_index "watchings", ["user_id"], name: "index_watchings_on_user_id", using: :btree

end
