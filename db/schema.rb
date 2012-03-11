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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20120307134110) do

  create_table "categories", :force => true do |t|
    t.string   "type"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "experts", :force => true do |t|
    t.string   "name"
    t.string   "department"
    t.string   "institution"
    t.string   "designation"
    t.string   "expertise"
    t.string   "telephone"
    t.string   "fax"
    t.string   "email"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "tech_profiles", :force => true do |t|
    t.integer  "id_no"
    t.string   "title"
    t.string   "category"
    t.string   "status"
    t.text     "abstract"
    t.text     "description"
    t.text     "prototype"
    t.text     "competitive_adv"
    t.text     "market_potential"
    t.text     "ip_protection"
    t.text     "dev_status_plan"
    t.string   "contact"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "name"
    t.string   "email"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
    t.string   "password_digest"
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true

end
