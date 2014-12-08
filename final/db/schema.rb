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

ActiveRecord::Schema.define(version: 20141207053731) do

  create_table "accesses", force: true do |t|
    t.integer  "track_id"
    t.integer  "user_id"
    t.integer  "event_id"
    t.integer  "image_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "accesses", ["event_id"], name: "index_accesses_on_event_id"
  add_index "accesses", ["image_id"], name: "index_accesses_on_image_id"
  add_index "accesses", ["track_id"], name: "index_accesses_on_track_id"
  add_index "accesses", ["user_id"], name: "index_accesses_on_user_id"

  create_table "cars", force: true do |t|
    t.string   "car_make"
    t.string   "car_model"
    t.integer  "car_year"
    t.float    "car_displacement"
    t.integer  "car_weight"
    t.string   "car_desc"
    t.integer  "image_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "cars", ["image_id"], name: "index_cars_on_image_id"

  create_table "events", force: true do |t|
    t.string   "event_name"
    t.string   "event_desc"
    t.string   "event_model"
    t.integer  "event_year"
    t.float    "event_displacement"
    t.integer  "event_weight"
    t.integer  "user_id"
    t.integer  "track_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "events", ["track_id"], name: "index_events_on_track_id"
  add_index "events", ["user_id"], name: "index_events_on_user_id"

  create_table "homes", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "images", force: true do |t|
    t.string   "image_fname"
    t.integer  "track_id"
    t.integer  "user_id"
    t.integer  "car_id"
    t.integer  "event_id"
    t.integer  "access_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "images", ["access_id"], name: "index_images_on_access_id"
  add_index "images", ["car_id"], name: "index_images_on_car_id"
  add_index "images", ["event_id"], name: "index_images_on_event_id"
  add_index "images", ["track_id"], name: "index_images_on_track_id"
  add_index "images", ["user_id"], name: "index_images_on_user_id"

  create_table "tracks", force: true do |t|
    t.string   "track_name"
    t.string   "track_location"
    t.string   "track_desc"
    t.integer  "image_id"
    t.integer  "event_id"
    t.integer  "access_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "tracks", ["access_id"], name: "index_tracks_on_access_id"
  add_index "tracks", ["event_id"], name: "index_tracks_on_event_id"
  add_index "tracks", ["image_id"], name: "index_tracks_on_image_id"

end
