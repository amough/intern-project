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

ActiveRecord::Schema.define(version: 2019_06_21_062249) do

  create_table "mcqquestions", force: :cascade do |t|
    t.text "Question"
    t.text "Option_A"
    t.text "Option_B"
    t.text "Option_c"
    t.text "Option_D"
    t.text "Correct_Option"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tests", force: :cascade do |t|
    t.string "user_id"
    t.string "ans1"
    t.string "ans2"
    t.string "ans3"
    t.string "ans4"
    t.string "ans5"
    t.string "ans6"
    t.string "ans7"
    t.string "ans8"
    t.string "ans9"
    t.string "ans10"
    t.integer "marks"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email"
    t.string "password_digest"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
  end

end
