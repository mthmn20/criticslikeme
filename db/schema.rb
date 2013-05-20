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


ActiveRecord::Schema.define(:version => 20130520022821) do

  create_table "connections", :force => true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "l_id"
    t.string   "profile_url"
    t.string   "location"
    t.string   "headline_string"
    t.string   "picture_url"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
    t.string   "full_name"
  end

  create_table "connections_users", :id => false, :force => true do |t|
    t.integer "user_id"
    t.integer "connection_id"
  end

  create_table "events", :force => true do |t|
    t.string   "name"
    t.datetime "date"
    t.text     "details"
    t.datetime "created_at",          :null => false
    t.datetime "updated_at",          :null => false
    t.integer  "admin_id"
    t.string   "token"
    t.string   "banner_file_name"
    t.string   "banner_content_type"
    t.integer  "banner_file_size"
    t.datetime "banner_updated_at"
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

<<<<<<< HEAD
=======
  create_table "metrics", :force => true do |t|
    t.string   "ipaddress"
    t.integer  "user_id"
    t.string   "location"
    t.string   "user_agent"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "notifications", :force => true do |t|
    t.string   "type"
    t.text     "body"
    t.string   "subject",              :default => ""
    t.integer  "sender_id"
    t.string   "sender_type"
    t.integer  "conversation_id"
    t.boolean  "draft",                :default => false
    t.datetime "updated_at",                              :null => false
    t.datetime "created_at",                              :null => false
    t.integer  "notified_object_id"
    t.string   "notified_object_type"
    t.string   "notification_code"
    t.string   "attachment"
    t.boolean  "global",               :default => false
    t.datetime "expires"
  end

  add_index "notifications", ["conversation_id"], :name => "index_notifications_on_conversation_id"

>>>>>>> 1a0507c14d2d933739fdb3b2f86b42fd1051c3de
  create_table "ratings", :force => true do |t|
    t.integer  "stars"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
    t.integer  "user_id"
    t.integer  "interest_id"
    t.text     "review"
  end

  create_table "users", :force => true do |t|
    t.datetime "created_at",        :null => false
    t.datetime "updated_at",        :null => false
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
    t.string   "location_string"
    t.text     "jobs"
    t.text     "schools"
    t.text     "school_names"
    t.text     "company_names"
    t.text     "languages"
  end

end
