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

ActiveRecord::Schema.define(version: 2018_09_13_172059) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "active_storage_attachments", force: :cascade do |t|
    t.string "name", null: false
    t.string "record_type", null: false
    t.bigint "record_id", null: false
    t.bigint "blob_id", null: false
    t.datetime "created_at", null: false
    t.index ["blob_id"], name: "index_active_storage_attachments_on_blob_id"
    t.index ["record_type", "record_id", "name", "blob_id"], name: "index_active_storage_attachments_uniqueness", unique: true
  end

  create_table "active_storage_blobs", force: :cascade do |t|
    t.string "key", null: false
    t.string "filename", null: false
    t.string "content_type"
    t.text "metadata"
    t.bigint "byte_size", null: false
    t.string "checksum", null: false
    t.datetime "created_at", null: false
    t.index ["key"], name: "index_active_storage_blobs_on_key", unique: true
  end

  create_table "aplications", force: :cascade do |t|
    t.integer "project_id"
    t.integer "developer_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "developers", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "first_name"
    t.string "last_name"
    t.integer "phone_number"
    t.string "image"
    t.string "description"
    t.string "city"
    t.string "state"
    t.string "string"
    t.integer "zip"
    t.string "resume_url"
    t.string "linkedin_url"
    t.string "github_url"
    t.string "portfolio_url"
    t.index ["email"], name: "index_developers_on_email", unique: true
    t.index ["reset_password_token"], name: "index_developers_on_reset_password_token", unique: true
  end

  create_table "employers", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "first_name"
    t.string "last_name"
    t.string "company_name"
    t.string "company_url"
    t.integer "phone_number"
    t.string "image"
    t.string "description"
    t.string "city"
    t.string "state"
    t.string "string"
    t.integer "zip"
    t.datetime "deleted_at"
    t.index ["email"], name: "index_employers_on_email", unique: true
    t.index ["reset_password_token"], name: "index_employers_on_reset_password_token", unique: true
  end

  create_table "messages", force: :cascade do |t|
    t.string "subject"
    t.string "body"
    t.datetime "date"
    t.integer "developer_id"
    t.integer "employer_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "sender"
  end

  create_table "projects", force: :cascade do |t|
    t.integer "developer_id"
    t.integer "employer_id"
    t.string "project_status"
    t.string "project_name"
    t.string "project_description"
    t.string "project_review"
    t.boolean "plattform_mobile"
    t.boolean "plattform_desktop"
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

  create_table "reviews", force: :cascade do |t|
    t.string "title"
    t.integer "rating"
    t.string "review"
    t.integer "developer_id"
    t.integer "employer_id"
    t.integer "project_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
