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

ActiveRecord::Schema.define(version: 2018_07_17_204242) do

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

  create_table "event_teams", force: :cascade do |t|
    t.integer "event_id"
    t.integer "team_id"
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
    t.integer "type_id"
    t.integer "location_id"
    t.string "notes"
    t.string "color"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["location_id"], name: "index_events_on_location_id"
    t.index ["type_id"], name: "index_events_on_type_id"
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
    t.integer "piece_id"
    t.integer "order"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["piece_id"], name: "index_movements_on_piece_id"
  end

  create_table "musicians", force: :cascade do |t|
    t.string "name"
    t.string "first"
    t.string "last"
    t.string "instrument"
    t.string "notes"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "performances", force: :cascade do |t|
    t.integer "concert_id"
    t.integer "piece_id"
    t.integer "order"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["concert_id"], name: "index_performances_on_concert_id"
    t.index ["piece_id"], name: "index_performances_on_piece_id"
  end

  create_table "performers", force: :cascade do |t|
    t.string "listing"
    t.integer "concert_id"
    t.integer "musician_id"
    t.string "instrument"
    t.integer "order"
    t.integer "piece_id"
    t.date "concert_date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["concert_id"], name: "index_performers_on_concert_id"
    t.index ["musician_id"], name: "index_performers_on_musician_id"
    t.index ["piece_id"], name: "index_performers_on_piece_id"
  end

  create_table "pieces", force: :cascade do |t|
    t.string "name"
    t.integer "composer_id"
    t.integer "arranger"
    t.string "opus"
    t.text "year_composed"
    t.string "full_title"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["composer_id"], name: "index_pieces_on_composer_id"
  end

  create_table "sheets", force: :cascade do |t|
    t.text "note"
    t.string "pad_id"
    t.string "pad_type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "teams", force: :cascade do |t|
    t.string "nickname"
    t.string "color"
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

end
