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

  create_table "has_tags", id: false, force: true do |t|
    t.integer  "location_id"
    t.integer  "tag_id"
    t.integer  "percentage"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "has_tags", ["location_id"], name: "index_has_tags_on_location_id"
  add_index "has_tags", ["tag_id"], name: "index_has_tags_on_tag_id"

  create_table "links", force: true do |t|
    t.integer  "location_id"
    t.string   "lang"
    t.string   "tag"
    t.string   "url"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "links", ["location_id"], name: "index_links_on_location_id"

  create_table "locations", force: true do |t|
    t.string   "name"
    t.string   "lang"
    t.string   "country"
    t.string   "province"
    t.string   "city"
    t.string   "zip"
    t.string   "street"
    t.string   "houseNumber"
    t.string   "phone"
    t.integer  "createdBy"
    t.integer  "modifiedBy"
    t.string   "position"
    t.string   "icon"
    t.string   "openingHours"
    t.string   "description"
    t.string   "type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "tag_is_a", id: false, force: true do |t|
    t.integer "tag_id"
    t.integer "parent_id"
    t.integer "position"
  end

  add_index "tag_is_a", ["parent_id"], name: "index_tag_is_a_on_parent_id"
  add_index "tag_is_a", ["tag_id"], name: "index_tag_is_a_on_tag_id"

  create_table "tags", force: true do |t|
    t.string   "type"
    t.string   "cssClass"
    t.string   "icon"
    t.string   "values"
    t.string   "foreignId"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
