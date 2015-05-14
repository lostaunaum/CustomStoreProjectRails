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

ActiveRecord::Schema.define(version: 20150513171724) do

  create_table "customers", force: :cascade do |t|
    t.string   "first_name",        limit: 255
    t.string   "last_name",         limit: 255
    t.string   "customer_address1", limit: 255
    t.string   "customer_address2", limit: 255
    t.string   "customer_state",    limit: 255
    t.string   "customer_zip",      limit: 255
    t.datetime "created_at",                    null: false
    t.datetime "updated_at",                    null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "items", force: :cascade do |t|
    t.integer  "order_id"
    t.string   "item_sku"
    t.integer  "item_weight"     
    t.string   "item_image"     
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "orders", force: :cascade do |t|
    t.integer  "customer_id"
    t.string   "order_number"
    t.text     "order_date"      
    t.string   "order_status"       
    t.datetime "order_modified_date"     
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "first_name",        limit: 255
    t.string   "last_name",         limit: 255
    t.string   "customer_address1", limit: 255
    t.string   "customer_address2", limit: 255
    t.string   "customer_state",    limit: 255
    t.string   "customer_zip",      limit: 255
    t.datetime "created_at",                    null: false
    t.datetime "updated_at",                    null: false
  end
end
