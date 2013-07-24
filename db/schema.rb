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

ActiveRecord::Schema.define(version: 20130723110609) do

  create_table "tests", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "tours", force: true do |t|
    t.datetime "date"
    t.integer  "tour_id"
    t.string   "about"
    t.integer  "available"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "type"
    t.date     "depature_date"
    t.integer  "days"
  end

  create_table "users", force: true do |t|
    t.string   "name"
    t.string   "address"
    t.string   "country"
    t.string   "city"
    t.string   "tel"
    t.string   "mobile"
    t.string   "email_id"
    t.integer  "verified_tour"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "password_hash"
    t.string   "password_salt"
    t.string   "password"
  end

end
