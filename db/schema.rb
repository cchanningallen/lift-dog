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

ActiveRecord::Schema.define(version: 20140427034936) do

  create_table "activities", force: true do |t|
    t.integer  "collector_id"
    t.text     "name"
    t.text     "mod"
    t.integer  "reps"
    t.integer  "weight"
    t.float    "distance"
    t.integer  "calories"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "datapoint_id"
  end

  add_index "activities", ["collector_id"], name: "index_activities_on_collector_id", using: :btree
  add_index "activities", ["datapoint_id"], name: "index_activities_on_datapoint_id", using: :btree

  create_table "collections", force: true do |t|
    t.integer  "exercise_id"
    t.text     "name"
    t.integer  "score"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "collections", ["exercise_id"], name: "index_collections_on_exercise_id", using: :btree

  create_table "datapoints", force: true do |t|
    t.integer  "exercise_id"
    t.integer  "quantity"
    t.text     "unit"
    t.text     "category"
    t.text     "name"
    t.text     "subname"
    t.integer  "weight"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "datapoints", ["exercise_id"], name: "index_datapoints_on_exercise_id", using: :btree

  create_table "exercises", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

end
