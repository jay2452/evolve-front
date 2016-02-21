# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20160221070130) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "access_tokens", force: :cascade do |t|
    t.integer  "user_id",                null: false
    t.string   "token",      limit: 255, null: false
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "admins", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  add_index "admins", ["email"], name: "index_admins_on_email", unique: true, using: :btree
  add_index "admins", ["reset_password_token"], name: "index_admins_on_reset_password_token", unique: true, using: :btree

  create_table "admins_roles", id: false, force: :cascade do |t|
    t.integer "admin_id"
    t.integer "role_id"
  end

  add_index "admins_roles", ["admin_id", "role_id"], name: "index_admins_roles_on_admin_id_and_role_id", using: :btree

  create_table "appointments", force: :cascade do |t|
    t.integer  "doctor_id",                                    null: false
    t.integer  "clinic_id",                                    null: false
    t.string   "email",            limit: 255,                 null: false
    t.datetime "appointment_time",                             null: false
    t.string   "phone",            limit: 20,                  null: false
    t.string   "name",             limit: 255,                 null: false
    t.text     "description"
    t.string   "otp",              limit: 5
    t.integer  "verified",                     default: 0,     null: false
    t.integer  "user_id"
    t.boolean  "cancel",                       default: false
  end

  create_table "clinic_facilities", force: :cascade do |t|
    t.integer "clinic_id",             null: false
    t.string  "facility",  limit: 255, null: false
  end

  create_table "clinics", force: :cascade do |t|
    t.string "name",        limit: 255, null: false
    t.float  "x_coord"
    t.float  "y_coord"
    t.string "address",     limit: 255
    t.string "email",       limit: 255
    t.text   "description"
    t.string "photo",       limit: 255
  end

  create_table "doctor_clinic", force: :cascade do |t|
    t.integer "doctor_id", null: false
    t.integer "clinic_id", null: false
  end

  create_table "doctor_contacts", force: :cascade do |t|
    t.integer "doctor_id",              null: false
    t.string  "contact_no", limit: 255, null: false
  end

  create_table "doctor_specialization", force: :cascade do |t|
    t.integer "doctor_id", null: false
    t.integer "spec_id",   null: false
  end

  create_table "doctors", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.string   "name"
    t.string   "reg_id"
    t.text     "address"
    t.text     "description"
  end

  add_index "doctors", ["email"], name: "index_doctors_on_email", unique: true, using: :btree
  add_index "doctors", ["reset_password_token"], name: "index_doctors_on_reset_password_token", unique: true, using: :btree

  create_table "migrations", id: false, force: :cascade do |t|
    t.string  "migration", limit: 255, null: false
    t.integer "batch",                 null: false
  end

  create_table "photos", force: :cascade do |t|
    t.integer  "user_id",                 null: false
    t.datetime "photo_date",              null: false
    t.string   "name",        limit: 255, null: false
    t.text     "description"
    t.float    "lat"
    t.float    "lon"
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  create_table "roles", force: :cascade do |t|
    t.string   "name"
    t.integer  "resource_id"
    t.string   "resource_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "roles", ["name", "resource_type", "resource_id"], name: "index_roles_on_name_and_resource_type_and_resource_id", using: :btree
  add_index "roles", ["name"], name: "index_roles_on_name", using: :btree

  create_table "school_activities", force: :cascade do |t|
    t.string "activity_name", limit: 255, null: false
  end

  create_table "school_affiliations", force: :cascade do |t|
    t.string "affiliation", limit: 255, null: false
  end

  create_table "school_images", force: :cascade do |t|
    t.string "image_url"
  end

  create_table "school_school_activity", force: :cascade do |t|
    t.integer "school_id"
    t.integer "school_activity_id"
  end

  create_table "school_school_affiliation", force: :cascade do |t|
    t.integer "school_id"
    t.integer "school_affiliation_id"
  end

  create_table "school_school_type", force: :cascade do |t|
    t.integer "school_id"
    t.integer "school_type_id"
  end

  create_table "school_types", force: :cascade do |t|
    t.string "type_name", limit: 255, null: false
  end

  create_table "schools", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  add_index "schools", ["email"], name: "index_schools_on_email", unique: true, using: :btree
  add_index "schools", ["reset_password_token"], name: "index_schools_on_reset_password_token", unique: true, using: :btree

  create_table "specializations", force: :cascade do |t|
    t.string "detail", limit: 255, null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "name",           limit: 255
    t.string   "phone",          limit: 15,  null: false
    t.string   "email",          limit: 255, null: false
    t.string   "password",       limit: 60
    t.string   "otp",            limit: 5,   null: false
    t.string   "remember_token", limit: 100
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
  end

  add_index "users", ["email"], name: "users_email_unique", unique: true, using: :btree

  add_foreign_key "access_tokens", "users", name: "access_tokens_user_id_foreign", on_delete: :cascade
  add_foreign_key "appointments", "clinics", name: "appointments_clinic_id_foreign"
  add_foreign_key "appointments", "doctors", name: "appointments_doctor_id_foreign"
  add_foreign_key "clinic_facilities", "clinics", name: "clinic_facilities_clinic_id_foreign"
  add_foreign_key "doctor_clinic", "clinics", name: "doctor_clinic_clinic_id_foreign"
  add_foreign_key "doctor_clinic", "doctors", name: "doctor_clinic_doctor_id_foreign"
  add_foreign_key "doctor_contacts", "doctors", name: "doctor_contacts_doctor_id_foreign"
  add_foreign_key "doctor_specialization", "doctors", name: "doctor_specialization_doctor_id_foreign"
  add_foreign_key "doctor_specialization", "specializations", column: "spec_id", name: "doctor_specialization_spec_id_foreign"
  add_foreign_key "photos", "users", name: "photos_user_id_foreign", on_delete: :cascade
  add_foreign_key "school_school_activity", "school_activities"
  add_foreign_key "school_school_affiliation", "school_affiliations"
  add_foreign_key "school_school_type", "school_types"
end
