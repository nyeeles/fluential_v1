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

ActiveRecord::Schema.define(version: 20140712191216) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "data_points", force: true do |t|
    t.integer  "subscribers"
    t.date     "date"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "influencer_id"
    t.integer  "views",         limit: 8
  end

  add_index "data_points", ["influencer_id"], name: "index_data_points_on_influencer_id", using: :btree

  create_table "influencers", force: true do |t|
    t.text     "username"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.text     "about"
    t.text     "thumbnail"
  end

end
