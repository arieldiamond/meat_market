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

ActiveRecord::Schema.define(version: 20140626232755) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "animals", force: true do |t|
    t.string   "animal"
    t.string   "meat_name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "meatcuts", force: true do |t|
    t.string   "cut_name"
    t.integer  "primal_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "pins", force: true do |t|
    t.integer  "user_id"
    t.integer  "recipe_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "primals", force: true do |t|
    t.string   "anatomy"
    t.integer  "animal_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "recipes", force: true do |t|
    t.string   "title"
    t.string   "directions"
    t.string   "ingredients"
    t.integer  "creator_id"
    t.integer  "meatcut_id"
    t.integer  "technique_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "techniques", force: true do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "username"
    t.string   "email"
    t.string   "password"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
