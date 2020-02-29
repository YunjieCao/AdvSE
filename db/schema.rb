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

ActiveRecord::Schema.define(version: 20111119180638) do

  create_table "addresses", primary_key: "address_id", force: :cascade do |t|
    t.string "line1",        limit: 45
    t.string "line2",        limit: 45
    t.string "city",         limit: 45
    t.string "state",        limit: 45
    t.string "country",      limit: 45
    t.string "postal_code",  limit: 45
    t.string "phone_number", limit: 45
    t.string "user_id",      limit: 45
  end

  create_table "movies", force: :cascade do |t|
    t.string   "title",        limit: 255
    t.string   "rating",       limit: 255
    t.text     "description",  limit: 65535
    t.datetime "release_date"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "requests", force: :cascade do |t|
    t.string   "title",                   limit: 45
    t.text     "description",             limit: 255
    t.string   "img_url",                 limit: 1024
    t.integer  "requester_id",            limit: 4
    t.integer  "carrier_id",              limit: 4
    t.integer  "status",                  limit: 4
    t.integer  "source_addr_id",          limit: 4
    t.integer  "dest_addr_id",            limit: 4
    t.datetime "create_time_stampmp"
    t.datetime "expected_delivery_start"
    t.datetime "expected_delivery_end"
  end

  create_table "user_profiles", force: :cascade do |t|
    t.string  "name",       limit: 20, null: false
    t.string  "email",      limit: 45
    t.string  "occupation", limit: 45
    t.integer "verified",   limit: 4
  end

  create_table "user_verifications", id: false, force: :cascade do |t|
    t.integer "verification_id", limit: 4,  null: false
    t.integer "user_id",         limit: 4,  null: false
    t.integer "status",          limit: 4
    t.date    "start_date"
    t.string  "end_date",        limit: 45
  end

end
