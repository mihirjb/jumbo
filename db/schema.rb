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

ActiveRecord::Schema.define(:version => 20130314102003) do

  create_table "tourpackages", :force => true do |t|
    t.string   "title"
    t.text     "desc"
    t.text     "iternary"
    t.integer  "price"
    t.text     "countries"
    t.integer  "numdays"
    t.text     "landmarks"
    t.integer  "maxseats"
    t.integer  "minseats"
    t.datetime "startdate"
    t.datetime "enddate"
    t.boolean  "incairfare"
    t.boolean  "incbreakfast"
    t.boolean  "inclunch"
    t.boolean  "incsnacks"
    t.boolean  "incdinner"
    t.string   "sourcecity"
    t.text     "sourceaddress"
    t.datetime "deptime"
    t.datetime "arrtime"
    t.boolean  "active"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  create_table "travelagents", :force => true do |t|
    t.string   "email",                                 :default => "", :null => false
    t.string   "encrypted_password",     :limit => 128, :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",                         :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                                            :null => false
    t.datetime "updated_at",                                            :null => false
  end

  add_index "travelagents", ["email"], :name => "index_travelagents_on_email", :unique => true
  add_index "travelagents", ["reset_password_token"], :name => "index_travelagents_on_reset_password_token", :unique => true

end
