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

ActiveRecord::Schema.define(version: 20140722025412) do

  create_table "accounts", force: true do |t|
    t.string   "name",       limit: 1024, null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "briefs", force: true do |t|
    t.text    "text",          null: false
    t.date    "date",          null: false
    t.integer "department_id"
    t.integer "team_id"
    t.integer "user_id",       null: false
  end

  add_index "briefs", ["department_id"], name: "index_briefs_on_department_id"
  add_index "briefs", ["team_id"], name: "index_briefs_on_team_id"
  add_index "briefs", ["user_id"], name: "index_briefs_on_user_id"

  create_table "comments", force: true do |t|
    t.text     "text",       null: false
    t.integer  "brief_id",   null: false
    t.integer  "user_id",    null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "comments", ["brief_id"], name: "index_comments_on_brief_id"
  add_index "comments", ["user_id"], name: "index_comments_on_user_id"

  create_table "departments", force: true do |t|
    t.string   "name",       limit: 1024, null: false
    t.integer  "account_id",              null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "departments", ["account_id"], name: "index_departments_on_account_id"

  create_table "teams", force: true do |t|
    t.string   "name",          limit: 1024, null: false
    t.integer  "account_id",                 null: false
    t.integer  "department_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "teams", ["account_id"], name: "index_teams_on_account_id"
  add_index "teams", ["department_id"], name: "index_teams_on_department_id"

  create_table "users", force: true do |t|
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
    t.string   "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string   "unconfirmed_email"
    t.integer  "failed_attempts",        default: 0,  null: false
    t.string   "unlock_token"
    t.datetime "locked_at"
    t.string   "display_name"
    t.integer  "account_id",                          null: false
    t.integer  "department_id"
    t.integer  "team_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["account_id"], name: "index_users_on_account_id"
  add_index "users", ["department_id"], name: "index_users_on_department_id"
  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  add_index "users", ["team_id"], name: "index_users_on_team_id"

end
