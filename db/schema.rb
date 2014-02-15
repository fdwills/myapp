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

ActiveRecord::Schema.define(version: 20140214131949) do

  create_table "comments", force: true do |t|
    t.integer  "user_id",              default: 0
    t.integer  "post_id",                          null: false
    t.string   "title",                            null: false
    t.binary   "content",                          null: false
    t.integer  "state",      limit: 1, default: 0, null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "inforamtions", force: true do |t|
    t.string   "title",      null: false
    t.binary   "content",    null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "posts", force: true do |t|
    t.string   "title",                            null: false
    t.integer  "user_id",                          null: false
    t.binary   "content",                          null: false
    t.integer  "state",      limit: 1, default: 0
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "resources", force: true do |t|
    t.integer  "user_id",                            null: false
    t.string   "title",                              null: false
    t.integer  "state",        limit: 1, default: 0, null: false
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "avatar"
    t.binary   "introduction"
    t.integer  "s_type",       limit: 1, default: 0, null: false
  end

  create_table "users", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "password_digest", null: false
    t.string   "name",            null: false
    t.string   "email",           null: false
    t.string   "introduction"
    t.string   "likes"
    t.string   "pref"
    t.string   "homepage"
    t.datetime "birthday"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["name"], name: "index_users_on_name", unique: true, using: :btree

end
