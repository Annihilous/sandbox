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

ActiveRecord::Schema[7.2].define(version: 2025_03_28_231736) do
  create_table "balatro_card_balatro_hands", force: :cascade do |t|
    t.integer "balatro_card_id", null: false
    t.integer "balatro_hand_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["balatro_card_id"], name: "index_balatro_card_balatro_hands_on_balatro_card_id"
    t.index ["balatro_hand_id"], name: "index_balatro_card_balatro_hands_on_balatro_hand_id"
  end

  create_table "balatro_cards", force: :cascade do |t|
    t.integer "name"
    t.integer "suit"
    t.integer "chips"
    t.integer "mult", default: 0, null: false
    t.integer "xmult", default: 0, null: false
    t.integer "trigger_count", default: 1, null: false
    t.boolean "is_debuffed", default: false, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "balatro_hand_types", force: :cascade do |t|
    t.string "name"
    t.integer "mult_base"
    t.integer "mult_increase"
    t.integer "chip_base"
    t.integer "chip_increase"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "balatro_hands", force: :cascade do |t|
    t.string "name"
    t.integer "balatro_hand_type_id", null: false
    t.integer "chip_total"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["balatro_hand_type_id"], name: "index_balatro_hands_on_balatro_hand_type_id"
  end

  create_table "sudoku_boards", force: :cascade do |t|
    t.integer "grid_size"
    t.text "grid_content"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "sudoku_solvers", force: :cascade do |t|
    t.text "unsolved_grid"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "balatro_card_balatro_hands", "balatro_cards"
  add_foreign_key "balatro_card_balatro_hands", "balatro_hands"
  add_foreign_key "balatro_hands", "balatro_hand_types"
end
