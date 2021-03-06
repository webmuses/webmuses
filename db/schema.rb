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

ActiveRecord::Schema.define(version: 20170209204904) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "active_admin_comments", force: :cascade do |t|
    t.string   "resource_id",   null: false
    t.string   "resource_type", null: false
    t.string   "author_type"
    t.integer  "author_id"
    t.text     "body"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "namespace"
    t.index ["author_type", "author_id"], name: "index_active_admin_comments_on_author_type_and_author_id", using: :btree
    t.index ["namespace"], name: "index_active_admin_comments_on_namespace", using: :btree
    t.index ["resource_type", "resource_id"], name: "index_active_admin_comments_on_resource_type_and_resource_id", using: :btree
  end

  create_table "admin_users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.index ["email"], name: "index_admin_users_on_email", unique: true, using: :btree
    t.index ["reset_password_token"], name: "index_admin_users_on_reset_password_token", unique: true, using: :btree
  end

  create_table "articles", force: :cascade do |t|
    t.string   "title"
    t.string   "url"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "event_type_id"
    t.index ["event_type_id"], name: "index_articles_on_event_type_id", using: :btree
  end

  create_table "coaches", force: :cascade do |t|
    t.text     "description_pl"
    t.string   "name"
    t.string   "photo"
    t.boolean  "visible"
    t.string   "twitter"
    t.string   "url"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.text     "description_en"
    t.boolean  "awwwesomes",     default: false
  end

  create_table "events", force: :cascade do |t|
    t.string   "name"
    t.string   "headline"
    t.text     "description_pl"
    t.datetime "start_at"
    t.datetime "end_at"
    t.string   "fb_url"
    t.string   "registration_url"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "date_description"
    t.string   "price"
    t.text     "description_en"
    t.integer  "place_id"
    t.integer  "event_type_id"
    t.index ["event_type_id"], name: "index_events_on_event_type_id", using: :btree
    t.index ["place_id"], name: "index_events_on_place_id", using: :btree
  end

  create_table "muses", force: :cascade do |t|
    t.string   "name"
    t.text     "description_pl"
    t.boolean  "visible"
    t.string   "photo_url"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "title_pl"
    t.string   "twitter"
    t.text     "description_en"
    t.string   "title_en"
    t.boolean  "awwwesomes",     default: false
  end

  create_table "partners", force: :cascade do |t|
    t.string   "image"
    t.string   "name"
    t.text     "description_pl"
    t.string   "url"
    t.integer  "position"
    t.boolean  "visible"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "category",       default: "normal"
    t.text     "description_en"
  end

  create_table "places", force: :cascade do |t|
    t.string   "name"
    t.string   "icon"
    t.string   "address"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
