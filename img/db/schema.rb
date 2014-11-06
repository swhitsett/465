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

ActiveRecord::Schema.define(version: 20141106195213) do

  create_table "imageobjs", force: true do |t|
    t.string   "filename"
    t.string   "private"
    t.string   "user_id"
    t.integer  "userobj_id"
    t.integer  "tagobj_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "imageusrs", force: true do |t|
    t.string   "img_id"
    t.string   "user_id"
    t.integer  "userobj_id"
    t.integer  "imageobj_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "tagobjs", force: true do |t|
    t.string   "tag_string"
    t.string   "img_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "userobjs", force: true do |t|
    t.string   "email"
    t.string   "enc_pwd"
    t.string   "name"
    t.integer  "imageobj_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
