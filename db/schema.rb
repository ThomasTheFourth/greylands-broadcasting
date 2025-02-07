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

ActiveRecord::Schema[8.0].define(version: 2025_02_07_172928) do
  create_table "channels", force: :cascade do |t|
    t.string "name"
    t.string "url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "plays", force: :cascade do |t|
    t.integer "stream_id", null: false
    t.integer "video_id", null: false
    t.datetime "played_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["stream_id"], name: "index_plays_on_stream_id"
    t.index ["video_id"], name: "index_plays_on_video_id"
  end

  create_table "stream_videos", force: :cascade do |t|
    t.integer "stream_id", null: false
    t.integer "video_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["stream_id"], name: "index_stream_videos_on_stream_id"
    t.index ["video_id"], name: "index_stream_videos_on_video_id"
  end

  create_table "streams", force: :cascade do |t|
    t.string "title"
    t.string "performer"
    t.integer "year_released"
    t.string "record_label"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "videos", force: :cascade do |t|
    t.string "youtube_url"
    t.string "stream_url"
    t.string "backup_url"
    t.string "api_key"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "plays", "streams"
  add_foreign_key "plays", "videos"
  add_foreign_key "stream_videos", "streams"
  add_foreign_key "stream_videos", "videos"
end
