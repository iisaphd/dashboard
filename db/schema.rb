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

ActiveRecord::Schema.define(version: 20151213145460) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "acclocks", force: :cascade do |t|
    t.string   "app_transactions"
    t.integer  "user_login_counts"
    t.datetime "timestamp"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
  end

  create_table "acct_create_times", force: :cascade do |t|
    t.string   "user_type"
    t.datetime "creation_date_time"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
  end

  create_table "acct_creates", force: :cascade do |t|
    t.string   "user_type"
    t.string   "creation_date_time"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
  end

  create_table "accts", force: :cascade do |t|
    t.string   "user_type"
    t.datetime "creation_date_time"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
  end

  create_table "calls", force: :cascade do |t|
    t.datetime "interval"
    t.datetime "avg_wait_time"
    t.datetime "max_wait_time"
    t.datetime "avg_handle_time"
    t.integer  "calls_received"
    t.integer  "calls_answered"
    t.integer  "return_no_answer"
    t.integer  "abandoned_calls"
    t.float    "pct_abandons"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  create_table "loginfailures", force: :cascade do |t|
    t.integer  "count"
    t.datetime "timestamp"
    t.float    "avgtime"
    t.string   "responsecode"
    t.string   "result"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "notices", force: :cascade do |t|
    t.string   "template_name"
    t.string   "template_id"
    t.string   "communication_type"
    t.integer  "count"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
  end

  create_table "noticestats", force: :cascade do |t|
    t.string   "notice_template_name"
    t.string   "notice_template_id"
    t.integer  "notices_triggered"
    t.integer  "esb_pickedup_count"
    t.integer  "esb_print_count"
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
  end

  create_table "stuckapps", force: :cascade do |t|
    t.integer  "missing"
    t.integer  "inedit"
    t.integer  "successful"
    t.integer  "admin"
    t.integer  "noevidence"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tickets", force: :cascade do |t|
    t.string   "type"
    t.integer  "critical"
    t.float    "critical_age"
    t.integer  "high"
    t.float    "high_age"
    t.integer  "medium"
    t.float    "medium_age"
    t.integer  "low"
    t.float    "low_age"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "visits", force: :cascade do |t|
    t.string   "country"
    t.datetime "visited_at"
    t.decimal  "load_time"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
