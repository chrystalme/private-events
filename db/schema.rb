# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

<<<<<<< HEAD
ActiveRecord::Schema.define(version: 2021_03_03_095030) do

  create_table "events", force: :cascade do |t|
    t.string "description"
    t.datetime "event_date"
=======
ActiveRecord::Schema.define(version: 2021_03_05_105405) do

  create_table "event_attendances", force: :cascade do |t|
    t.integer "attendee_id"
    t.integer "attended_event_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["attended_event_id"], name: "index_event_attendances_on_attended_event_id"
    t.index ["attendee_id"], name: "index_event_attendances_on_attendee_id"
  end

  create_table "events", force: :cascade do |t|
    t.string "title"
    t.text "description"
    t.string "location"
    t.datetime "date"
>>>>>>> dd4ec7d55667483125df01c863d8106849ec84e5
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "creator_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
<<<<<<< HEAD
    t.string "username"
=======
>>>>>>> dd4ec7d55667483125df01c863d8106849ec84e5
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
