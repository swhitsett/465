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

ActiveRecord::Schema.define(version: 20141111053500) do

  create_table "accesses", force: true do |t|
    t.integer  "image_id"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "accesses", ["image_id"], name: "index_accesses_on_image_id"
  add_index "accesses", ["user_id"], name: "index_accesses_on_user_id"

  create_table "images", force: true do |t|
    t.string   "filename"
    t.string   "private"
    t.integer  "user_id"
    t.integer  "tag_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "images", ["tag_id"], name: "index_images_on_tag_id"
  add_index "images", ["user_id"], name: "index_images_on_user_id"

  create_table "tags", force: true do |t|
    t.string   "tag_string"
    t.integer  "image_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "tags", ["image_id"], name: "index_tags_on_image_id"

end
