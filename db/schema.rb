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

ActiveRecord::Schema.define(version: 20140225202701) do

  create_table "accounts", force: true do |t|
    t.integer  "owner_id"
    t.string   "lastname"
    t.string   "address"
    t.string   "cellphone"
    t.string   "phone"
    t.string   "observation"
    t.string   "status"
    t.string   "work"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "group_id"
  end

  add_index "accounts", ["group_id"], name: "index_accounts_on_group_id"

  create_table "groups", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "lists", force: true do |t|
    t.string   "info"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "tickets", force: true do |t|
    t.string   "subject"
    t.string   "demand"
    t.string   "private"
    t.string   "ip"
    t.string   "status"
    t.string   "local"
    t.string   "reopen"
    t.string   "closed"
    t.string   "priority"
    t.string   "account"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "assigned"
    t.integer  "group_id"
    t.integer  "account_id"
    t.string   "number_only"
  end

  add_index "tickets", ["account"], name: "index_tickets_on_account"
  add_index "tickets", ["account_id"], name: "index_tickets_on_account_id"
  add_index "tickets", ["group_id"], name: "index_tickets_on_group_id"

  create_table "users", force: true do |t|
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

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
