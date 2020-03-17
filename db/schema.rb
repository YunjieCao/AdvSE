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

ActiveRecord::Schema.define(version: 20200315221255) do

  create_table "addresses", force: :cascade do |t|
    t.string  "line1",        limit: 45,             null: false
    t.string  "line2",        limit: 45
    t.string  "city",         limit: 45,             null: false
    t.string  "state",        limit: 45,             null: false
    t.string  "country",      limit: 45,             null: false
    t.string  "postal_code",  limit: 45,             null: false
    t.string  "phone_number", limit: 45,             null: false
    t.integer "user_id",      limit: 4,              null: false
    t.integer "status",       limit: 4,  default: 1, null: false
  end

  add_index "addresses", ["user_id"], name: "user_id_idx", using: :btree

  create_table "requests", force: :cascade do |t|
    t.string   "title",                   limit: 45,                                         null: false
    t.text     "description",             limit: 255
    t.string   "img_url",                 limit: 1024
    t.integer  "requester_id",            limit: 4,                                          null: false
    t.integer  "carrier_id",              limit: 4
    t.integer  "status",                  limit: 4,                            default: 0,   null: false
    t.integer  "source_addr_id",          limit: 4,                                          null: false
    t.integer  "dest_addr_id",            limit: 4,                                          null: false
    t.datetime "created_at",                                                                 null: false
    t.datetime "expected_delivery_start",                                                    null: false
    t.datetime "expected_delivery_end",                                                      null: false
    t.decimal  "value",                                precision: 8, scale: 2, default: 0.0, null: false
  end

  add_index "requests", ["carrier_id"], name: "FK_carrier_id_idx", using: :btree
  add_index "requests", ["dest_addr_id"], name: "FK_dest_addr_id_idx", using: :btree
  add_index "requests", ["requester_id"], name: "FK_requester_id_idx", using: :btree
  add_index "requests", ["source_addr_id"], name: "FK_source_addr_id_idx", using: :btree

  create_table "reviews", primary_key: "order_id", force: :cascade do |t|
    t.integer "ratings",  limit: 4
    t.string  "comments", limit: 200
  end

  create_table "task_applications", force: :cascade do |t|
    t.integer  "order_id",   limit: 4, null: false
    t.integer  "user_id",    limit: 4, null: false
    t.datetime "created_at",           null: false
  end

  add_index "task_applications", ["order_id", "user_id"], name: "uniq", unique: true, using: :btree
  add_index "task_applications", ["user_id"], name: "FK_user_id_idx", using: :btree

  create_table "user_profiles", force: :cascade do |t|
    t.string   "name",            limit: 20,              null: false
    t.string   "email",           limit: 45,              null: false
    t.string   "occupation",      limit: 45
    t.integer  "verified",        limit: 4,   default: 0, null: false
    t.string   "password_digest", limit: 255,             null: false
    t.datetime "created_at",                              null: false
    t.datetime "updated_at",                              null: false
  end

  add_index "user_profiles", ["email"], name: "index_user_profiles_on_email", unique: true, using: :btree

  create_table "user_verifications", force: :cascade do |t|
    t.integer  "user_id",    limit: 4, null: false
    t.integer  "status",     limit: 4, null: false
    t.datetime "start_date",           null: false
    t.datetime "end_date",             null: false
  end

  add_index "user_verifications", ["user_id"], name: "FK_verif_user_id_idx", using: :btree

  add_foreign_key "addresses", "user_profiles", column: "user_id", name: "FK_add_user_id"
  add_foreign_key "requests", "addresses", column: "dest_addr_id", name: "FK_req_dest_addr_id"
  add_foreign_key "requests", "addresses", column: "source_addr_id", name: "FK_req_source_addr_id"
  add_foreign_key "requests", "user_profiles", column: "carrier_id", name: "FK_req_carrier_id"
  add_foreign_key "requests", "user_profiles", column: "requester_id", name: "FK_req_requester_id"
  add_foreign_key "reviews", "requests", column: "order_id", name: "fk_reviews_1"
  add_foreign_key "task_applications", "requests", column: "order_id", name: "FK_app_order_id"
  add_foreign_key "task_applications", "user_profiles", column: "user_id", name: "FK_app_user_id"
  add_foreign_key "user_verifications", "user_profiles", column: "user_id", name: "FK_verif_user_id"
end
