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

ActiveRecord::Schema.define(version: 20141106222245) do

  create_table "imageobjs", force: true do |t|
    t.string   "filename"
    t.string   "private"
    t.integer  "tagobj_id"
    t.integer  "userobj_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "imageobjs", ["tagobj_id"], name: "index_imageobjs_on_tagobj_id"
  add_index "imageobjs", ["userobj_id"], name: "index_imageobjs_on_userobj_id"

  create_table "imageusrs", force: true do |t|
    t.integer  "imageobj_id"
    t.integer  "userobj_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "imageusrs", ["imageobj_id"], name: "index_imageusrs_on_imageobj_id"
  add_index "imageusrs", ["userobj_id"], name: "index_imageusrs_on_userobj_id"

  create_table "tagobjs", force: true do |t|
    t.string   "tag_string"
    t.string   "img_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "userobjs", force: true do |t|
    t.string   "name"
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

  add_index "userobjs", ["email"], name: "index_userobjs_on_email", unique: true
  add_index "userobjs", ["reset_password_token"], name: "index_userobjs_on_reset_password_token", unique: true

end
