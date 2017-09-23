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

ActiveRecord::Schema.define(version: 20170923041649) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "employees", force: :cascade do |t|
    t.string "name"
    t.string "username"
  end

  create_table "hazards", force: :cascade do |t|
    t.string "name"
    t.string "icon_path"
    t.bigint "safety_report_id"
    t.index ["safety_report_id"], name: "index_hazards_on_safety_report_id"
  end

  create_table "prevention_actions", force: :cascade do |t|
    t.string "name"
    t.string "icon_path"
    t.bigint "hazard_id"
    t.index ["hazard_id"], name: "index_prevention_actions_on_hazard_id"
  end

  create_table "safety_reports", force: :cascade do |t|
    t.bigint "employee_id"
    t.string "task"
    t.index ["employee_id"], name: "index_safety_reports_on_employee_id"
  end

  create_table "severity_values", force: :cascade do |t|
    t.float "value"
    t.bigint "hazard_id"
    t.index ["hazard_id"], name: "index_severity_values_on_hazard_id"
  end

end
