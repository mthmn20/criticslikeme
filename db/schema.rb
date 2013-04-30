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

ActiveRecord::Schema.define(:version => 20130428235235) do

  create_table "events", :force => true do |t|
    t.string   "name"
    t.datetime "date"
    t.text     "details"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.integer  "admin_id"
    t.string   "token"
  end

  create_table "events_users", :id => false, :force => true do |t|
    t.integer "event_id"
    t.integer "user_id"
  end

  create_table "interests", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.integer  "event_id"
  end

  create_table "messages", :force => true do |t|
    t.integer  "sender_id"
    t.integer  "recipient_id"
    t.text     "content"
    t.boolean  "is_read"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  create_table "ratings", :force => true do |t|
    t.integer  "stars"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
    t.integer  "user_id"
    t.integer  "interest_id"
    t.text     "review"
  end

  create_table "users", :force => true do |t|
    t.datetime "created_at",          :null => false
    t.datetime "updated_at",          :null => false
    t.string   "name"
    t.string   "email"
    t.string   "password_digest"
    t.string   "token"
    t.string   "linkedin_authhash"
    t.string   "linkedin_token"
    t.string   "linkedin_secret"
    t.string   "picture_url"
    t.string   "first_name"
    t.string   "last_name"
    t.string   "title"
    t.string   "industry"
    t.string   "linkedin_url"
    t.string   "last_company_name_1"
    t.string   "last_title_1"
    t.string   "last_industry_1"
    t.string   "last_location_1"
    t.string   "last_company_name_2"
    t.string   "last_title_2"
    t.string   "last_industry_2"
    t.string   "last_location_2"
    t.string   "last_company_name_3"
    t.string   "last_title_3"
    t.string   "last_industry_3"
    t.string   "last_location_3"
    t.string   "location_string"
    t.string   "school_1"
    t.string   "school_2"
    t.string   "school_3"
    t.string   "company_name"
    t.string   "schools"
    t.string   "jobs"
  end

end
