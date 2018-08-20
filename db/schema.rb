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

ActiveRecord::Schema.define(version: 2018_08_20_022938) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "accomodations", force: :cascade do |t|
    t.bigint "address_id"
    t.bigint "musician_id"
    t.datetime "arrival"
    t.datetime "departure"
    t.string "co"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "notes"
    t.index ["address_id"], name: "index_accomodations_on_address_id"
    t.index ["musician_id"], name: "index_accomodations_on_musician_id"
  end

  create_table "addresses", force: :cascade do |t|
    t.string "name"
    t.string "nickname"
    t.string "address1"
    t.string "address2"
    t.string "city"
    t.string "state"
    t.string "zip"
    t.string "phone"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "airlines", force: :cascade do |t|
    t.string "name"
    t.string "nickname"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "assignments", force: :cascade do |t|
    t.string "name"
    t.bigint "task_id"
    t.bigint "event_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["event_id"], name: "index_assignments_on_event_id"
    t.index ["task_id"], name: "index_assignments_on_task_id"
  end

  create_table "composers", force: :cascade do |t|
    t.string "name"
    t.string "nickname"
    t.string "lifetime"
    t.string "fullname"
    t.string "notes"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "concerts", force: :cascade do |t|
    t.string "name"
    t.datetime "startTime"
    t.string "location"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "discussions", force: :cascade do |t|
    t.datetime "date"
    t.string "color"
    t.boolean "resolved"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "event_teams", force: :cascade do |t|
    t.bigint "event_id"
    t.bigint "team_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["event_id"], name: "index_event_teams_on_event_id"
    t.index ["team_id"], name: "index_event_teams_on_team_id"
  end

  create_table "events", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.datetime "start"
    t.datetime "end"
    t.bigint "type_id"
    t.bigint "location_id"
    t.string "notes"
    t.string "color"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "heads"
    t.index ["location_id"], name: "index_events_on_location_id"
    t.index ["type_id"], name: "index_events_on_type_id"
  end

  create_table "flights", force: :cascade do |t|
    t.bigint "musician_id"
    t.bigint "airline_id"
    t.string "flight"
    t.string "from"
    t.datetime "departure"
    t.string "destination"
    t.datetime "arrival"
    t.text "notes"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "confirmation"
    t.index ["airline_id"], name: "index_flights_on_airline_id"
    t.index ["musician_id"], name: "index_flights_on_musician_id"
  end

  create_table "instructions", force: :cascade do |t|
    t.string "name"
    t.bigint "task_id"
    t.bigint "event_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["event_id"], name: "index_instructions_on_event_id"
    t.index ["task_id"], name: "index_instructions_on_task_id"
  end

  create_table "instruments", force: :cascade do |t|
    t.text "name"
    t.integer "order"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "locations", force: :cascade do |t|
    t.string "name"
    t.string "nickname"
    t.string "color"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "movements", force: :cascade do |t|
    t.string "name"
    t.integer "order"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "piece_id"
    t.index ["piece_id"], name: "index_movements_on_piece_id"
  end

  create_table "musicians", force: :cascade do |t|
    t.string "name"
    t.string "first"
    t.string "last"
    t.string "old_instrument"
    t.string "notes"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "instrument_id"
  end

  create_table "performances", force: :cascade do |t|
    t.bigint "concert_id"
    t.integer "order"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "piece_id"
    t.index ["concert_id"], name: "index_performances_on_concert_id"
    t.index ["piece_id"], name: "index_performances_on_piece_id"
  end

  create_table "performers", force: :cascade do |t|
    t.string "listing"
    t.bigint "concert_id"
    t.bigint "musician_id"
    t.string "instrument"
    t.integer "order"
    t.date "concert_date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "piece_id"
    t.index ["concert_id"], name: "index_performers_on_concert_id"
    t.index ["musician_id"], name: "index_performers_on_musician_id"
    t.index ["piece_id"], name: "index_performers_on_piece_id"
  end

  create_table "pieces", force: :cascade do |t|
    t.string "name"
    t.bigint "composer_id"
    t.integer "arranger"
    t.string "opus"
    t.text "year_composed"
    t.string "full_title"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["composer_id"], name: "index_pieces_on_composer_id"
  end

  create_table "sales_reports", force: :cascade do |t|
    t.datetime "date"
    t.bigint "vendor_id"
    t.datetime "concert"
    t.bigint "ticket_category_id"
    t.text "description"
    t.integer "count"
    t.integer "unit_price"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["ticket_category_id"], name: "index_sales_reports_on_ticket_category_id"
    t.index ["vendor_id"], name: "index_sales_reports_on_vendor_id"
  end

  create_table "sheets", force: :cascade do |t|
    t.text "note"
    t.string "pad_id"
    t.string "pad_type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "task_types", force: :cascade do |t|
    t.text "name"
    t.integer "order"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tasks", force: :cascade do |t|
    t.bigint "task_type_id"
    t.bigint "type_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["task_type_id"], name: "index_tasks_on_task_type_id"
    t.index ["type_id"], name: "index_tasks_on_type_id"
  end

  create_table "team_musicians", force: :cascade do |t|
    t.bigint "team_id"
    t.bigint "musician_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "instrument_id"
    t.index ["musician_id"], name: "index_team_musicians_on_musician_id"
    t.index ["team_id"], name: "index_team_musicians_on_team_id"
  end

  create_table "teams", force: :cascade do |t|
    t.string "nickname"
    t.string "color"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "ticket_categories", force: :cascade do |t|
    t.text "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "types", force: :cascade do |t|
    t.string "name"
    t.string "nickname"
    t.string "color"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string "current_sign_in_ip"
    t.string "last_sign_in_ip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "vendors", force: :cascade do |t|
    t.text "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "accomodations", "addresses"
  add_foreign_key "accomodations", "musicians"
  add_foreign_key "assignments", "events"
  add_foreign_key "assignments", "tasks"
  add_foreign_key "event_teams", "events"
  add_foreign_key "event_teams", "teams"
  add_foreign_key "events", "locations"
  add_foreign_key "events", "types"
  add_foreign_key "flights", "airlines"
  add_foreign_key "flights", "musicians"
  add_foreign_key "instructions", "events"
  add_foreign_key "instructions", "tasks"
  add_foreign_key "movements", "pieces"
  add_foreign_key "performances", "concerts"
  add_foreign_key "performances", "pieces"
  add_foreign_key "performers", "concerts"
  add_foreign_key "performers", "musicians"
  add_foreign_key "performers", "pieces"
  add_foreign_key "pieces", "composers"
  add_foreign_key "sales_reports", "ticket_categories"
  add_foreign_key "sales_reports", "vendors"
  add_foreign_key "tasks", "task_types"
  add_foreign_key "tasks", "types"
  add_foreign_key "team_musicians", "musicians"
  add_foreign_key "team_musicians", "teams"
end
