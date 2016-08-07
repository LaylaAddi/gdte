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

ActiveRecord::Schema.define(version: 20170711111507) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "drivers", force: :cascade do |t|
    t.string   "email",                  default: "",        null: false
    t.string   "encrypted_password",     default: "",        null: false
    t.string   "first_name"
    t.string   "last_name"
    t.string   "telephone"
    t.string   "street_address_1"
    t.string   "street_address_2"
    t.string   "city"
    t.string   "state"
    t.string   "zip_code"
    t.string   "license_number"
    t.string   "license_image"
    t.string   "social_number"
    t.string   "social_image"
    t.string   "green_image"
    t.string   "medical_image"
    t.string   "cellphone"
    t.decimal  "years_of_experience"
    t.text     "info"
    t.boolean  "hazmat",                 default: false
    t.boolean  "dryvan",                 default: false
    t.boolean  "reefer",                 default: false
    t.boolean  "flatbed",                default: false
    t.date     "dob"
    t.string   "pdf"
    t.string   "employment_status",      default: "pending"
    t.string   "updated_by"
    t.string   "e_contact_name"
    t.string   "e_contact_number"
    t.text     "driver_declined"
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,         null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at",                                 null: false
    t.datetime "updated_at",                                 null: false
    t.index ["email"], name: "index_drivers_on_email", unique: true, using: :btree
    t.index ["reset_password_token"], name: "index_drivers_on_reset_password_token", unique: true, using: :btree
  end

  create_table "office_driver_comments", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "driver_id"
    t.text     "body"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["driver_id"], name: "index_office_driver_comments_on_driver_id", using: :btree
    t.index ["user_id"], name: "index_office_driver_comments_on_user_id", using: :btree
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "",           null: false
    t.string   "encrypted_password",     default: "",           null: false
    t.string   "first_name"
    t.string   "last_name"
    t.string   "office_phone"
    t.string   "extention"
    t.string   "cellphone"
    t.date     "dob"
    t.string   "office_location"
    t.string   "street_address_1"
    t.string   "street_address_2"
    t.string   "city"
    t.string   "state"
    t.string   "zip_code"
    t.string   "user_type",              default: "registered"
    t.string   "employment_status",      default: "pending"
    t.string   "updated_by"
    t.string   "e_contact_name"
    t.string   "e_contact_number"
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,            null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.string   "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string   "unconfirmed_email"
    t.integer  "failed_attempts",        default: 0,            null: false
    t.string   "unlock_token"
    t.datetime "locked_at"
    t.datetime "created_at",                                    null: false
    t.datetime "updated_at",                                    null: false
    t.index ["confirmation_token"], name: "index_users_on_confirmation_token", unique: true, using: :btree
    t.index ["email"], name: "index_users_on_email", unique: true, using: :btree
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
    t.index ["unlock_token"], name: "index_users_on_unlock_token", unique: true, using: :btree
  end

end
