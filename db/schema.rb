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

ActiveRecord::Schema.define(version: 2018_09_06_194612) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "developers", force: :cascade do |t|
    t.string "resume_url"
    t.string "linkedin_url"
    t.string "github_url"
    t.string "portfolio_url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "employers", force: :cascade do |t|
    t.string "company_name"
    t.string "company_name_url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "projects", force: :cascade do |t|
    t.integer "developer_id"
    t.integer "employer_id"
    t.string "project_name"
    t.string "project_desciption"
    t.string "project_review"
    t.string "project_status"
    t.boolean "plattform_desktop"
    t.boolean "plattform_mobile"
    t.boolean "platform_tablet"
    t.boolean "assets_text"
    t.boolean "assets_images"
    t.boolean "assets_videos"
    t.boolean "assets_audio"
    t.boolean "assets_database"
    t.boolean "due_date_less_then_month"
    t.boolean "due_date_one_month"
    t.boolean "due_date_three_month"
    t.boolean "due_date_plus_three_month"
    t.boolean "pages_landing_pages"
    t.boolean "pages_two_pages"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.string "first_name"
    t.string "last_name"
    t.integer "phone_number"
    t.string "role"
    t.string "image"
    t.string "description"
    t.string "city"
    t.string "state"
    t.integer "zip"
    t.string "userable_type"
    t.bigint "userable_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
    t.index ["userable_type", "userable_id"], name: "index_users_on_userable_type_and_userable_id"
  end

end
