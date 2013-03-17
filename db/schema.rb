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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20130317145309) do

  create_table "active_admin_comments", :force => true do |t|
    t.string    "resource_id",   :null => false
    t.string    "resource_type", :null => false
    t.integer   "author_id"
    t.string    "author_type"
    t.text      "body"
    t.timestamp "created_at",    :null => false
    t.timestamp "updated_at",    :null => false
    t.string    "namespace"
  end

  add_index "active_admin_comments", ["author_type", "author_id"], :name => "index_active_admin_comments_on_author_type_and_author_id"
  add_index "active_admin_comments", ["namespace"], :name => "index_active_admin_comments_on_namespace"
  add_index "active_admin_comments", ["resource_type", "resource_id"], :name => "index_admin_notes_on_resource_type_and_resource_id"

  create_table "admin_users", :force => true do |t|
    t.string    "email",                  :default => "", :null => false
    t.string    "encrypted_password",     :default => "", :null => false
    t.string    "reset_password_token"
    t.timestamp "reset_password_sent_at"
    t.timestamp "remember_created_at"
    t.integer   "sign_in_count",          :default => 0
    t.timestamp "current_sign_in_at"
    t.timestamp "last_sign_in_at"
    t.string    "current_sign_in_ip"
    t.string    "last_sign_in_ip"
    t.timestamp "created_at",                             :null => false
    t.timestamp "updated_at",                             :null => false
  end

  add_index "admin_users", ["email"], :name => "index_admin_users_on_email", :unique => true
  add_index "admin_users", ["reset_password_token"], :name => "index_admin_users_on_reset_password_token", :unique => true

  create_table "coaches", :force => true do |t|
    t.text      "description"
    t.string    "name"
    t.string    "photo"
    t.boolean   "visible"
    t.string    "twitter"
    t.string    "url"
    t.timestamp "created_at",  :null => false
    t.timestamp "updated_at",  :null => false
  end

  create_table "events", :force => true do |t|
    t.string    "name"
    t.string    "headline"
    t.text      "description"
    t.string    "location"
    t.timestamp "start_at"
    t.timestamp "end_at"
    t.string    "fb_url"
    t.string    "registration_url"
    t.timestamp "created_at",                            :null => false
    t.timestamp "updated_at",                            :null => false
    t.string    "date_description"
    t.string    "price"
    t.string    "state",            :default => "draft"
  end

  create_table "muses", :force => true do |t|
    t.string    "name"
    t.text      "description"
    t.boolean   "visible"
    t.string    "photo_url"
    t.timestamp "created_at",  :null => false
    t.timestamp "updated_at",  :null => false
    t.string    "title"
    t.string    "twitter"
  end

  create_table "partners", :force => true do |t|
    t.string    "image"
    t.string    "name"
    t.text      "description"
    t.string    "url"
    t.integer   "position"
    t.boolean   "visible"
    t.timestamp "created_at",  :null => false
    t.timestamp "updated_at",  :null => false
  end

end
