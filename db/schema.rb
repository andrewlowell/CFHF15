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

ActiveRecord::Schema.define(version: 20150203203130) do

  create_table "registrants", force: :cascade do |t|
    t.string   "full_name"
    t.string   "email_address"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.string   "time_slot_1"
    t.string   "time_slot_2"
    t.string   "time_slot_3"
    t.string   "time_slot_4"
    t.string   "time_slot_5"
    t.string   "edit_code"
    t.integer  "children"
  end

  add_index "registrants", ["email_address"], name: "index_registrants_on_email_address", unique: true

end
