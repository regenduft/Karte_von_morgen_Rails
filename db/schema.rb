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

ActiveRecord::Schema.define(version: 20141109203817) do

  create_table "categories", force: :cascade do |t|
    t.integer  "parent_id"
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "categories", ["parent_id"], name: "index_categories_on_parent_id"

  create_table "entries", force: :cascade do |t|
    t.string   "name"
    t.string   "description"
    t.string   "city"
    t.string   "zip"
    t.string   "street"
    t.string   "phone"
    t.string   "email"
    t.string   "url"
    t.string   "position"
    t.string   "openingHours"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "has_categories", id: false, force: :cascade do |t|
    t.integer  "entry_id"
    t.integer  "category_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "has_categories", ["category_id"], name: "index_has_categories_on_category_id"
  add_index "has_categories", ["entry_id"], name: "index_has_categories_on_entry_id"

end
