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

ActiveRecord::Schema.define(version: 20150325224830) do

  create_table "ads", force: :cascade do |t|
    t.string   "name",          null: false
    t.integer  "price",         null: false
    t.string   "lister",        null: false
    t.string   "contact_phone"
    t.string   "contact_email"
    t.string   "description"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "images", force: :cascade do |t|
    t.integer  "ad_id"
    t.string   "image_url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "images", ["ad_id"], name: "index_images_on_ad_id"

  create_table "report_attributes", force: :cascade do |t|
    t.integer  "report_id"
    t.integer  "severity",    default: 1, null: false
    t.string   "description",             null: false
    t.boolean  "result",                  null: false
    t.string   "comment"
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  add_index "report_attributes", ["report_id"], name: "index_report_attributes_on_report_id"

  create_table "reports", force: :cascade do |t|
    t.integer  "ad_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "reports", ["ad_id"], name: "index_reports_on_ad_id"

  create_table "vehicles", force: :cascade do |t|
    t.integer  "ad_id"
    t.string   "make",       null: false
    t.string   "year",       null: false
    t.string   "model",      null: false
    t.string   "mileage",    null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "vehicles", ["ad_id"], name: "index_vehicles_on_ad_id"

end
