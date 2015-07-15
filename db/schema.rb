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

ActiveRecord::Schema.define(version: 20150715131629) do

  create_table "events", force: :cascade do |t|
    t.string   "name"
    t.text     "about"
    t.date     "start_date"
    t.date     "end_date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "transits", force: :cascade do |t|
    t.string   "mode"
    t.integer  "distance"
    t.integer  "co_output"
    t.integer  "passengers"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.integer  "volunteer_id"
  end

  add_index "transits", ["volunteer_id"], name: "index_transits_on_volunteer_id"

  create_table "volunteers", force: :cascade do |t|
    t.string   "name"
    t.string   "surname"
    t.string   "email"
    t.string   "gender"
    t.integer  "co_weight"
    t.integer  "tree_offset"
    t.integer  "rand_offset"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.integer  "event_id"
    t.integer  "transit_id"
  end

  add_index "volunteers", ["event_id"], name: "index_volunteers_on_event_id"
  add_index "volunteers", ["transit_id"], name: "index_volunteers_on_transit_id"

end
