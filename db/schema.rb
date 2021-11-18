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

ActiveRecord::Schema.define(version: 2021_11_18_151956) do

  create_table "manufacturers", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "video_card_products", force: :cascade do |t|
    t.integer "video_card_id"
    t.string "title"
    t.integer "min_price"
    t.integer "max_price"
    t.string "image_url"
    t.string "reference_url"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["video_card_id"], name: "index_video_card_products_on_video_card_id"
  end

  create_table "video_cards", force: :cascade do |t|
    t.integer "manufacturer_id"
    t.string "gpu_name"
    t.string "memory_capacity"
    t.string "memory_frequency"
    t.string "memory_type"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["manufacturer_id"], name: "index_video_cards_on_manufacturer_id"
  end

  add_foreign_key "video_card_products", "video_cards"
  add_foreign_key "video_cards", "manufacturers"
end
