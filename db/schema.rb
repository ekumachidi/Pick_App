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

<<<<<<< HEAD
ActiveRecord::Schema.define(version: 20151118104203) do
=======
<<<<<<< HEAD
ActiveRecord::Schema.define(version: 20151118104203) do
=======
ActiveRecord::Schema.define(version: 20151118111520) do
>>>>>>> origin/master
>>>>>>> origin/master

  create_table "admins", force: :cascade do |t|
    t.string   "name"
    t.string   "password"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

<<<<<<< HEAD
=======
<<<<<<< HEAD
=======
  create_table "assignments", force: :cascade do |t|
    t.integer  "package_id"
    t.integer  "courier_id"
    t.integer  "admin_id"
    t.boolean  "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "assignments", ["admin_id"], name: "index_assignments_on_admin_id"
  add_index "assignments", ["courier_id"], name: "index_assignments_on_courier_id"
  add_index "assignments", ["package_id"], name: "index_assignments_on_package_id"

>>>>>>> origin/master
>>>>>>> origin/master
  create_table "couriers", force: :cascade do |t|
    t.string   "name"
    t.string   "location"
    t.string   "phone"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "packages", force: :cascade do |t|
    t.string   "tracking_code", null: false
    t.integer  "weight_kg"
    t.integer  "user_id",       null: false
    t.string   "vendor",        null: false
    t.string   "location",      null: false
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  add_index "packages", ["user_id"], name: "index_packages_on_user_id"

  create_table "payments", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.string   "address"
    t.string   "phone"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
