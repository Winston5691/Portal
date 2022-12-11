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

ActiveRecord::Schema[7.0].define(version: 2022_12_11_112657) do
  create_table "appointments", force: :cascade do |t|
    t.string "name"
    t.string "note"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "courses", force: :cascade do |t|
    t.string "name"
    t.integer "results_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["results_id"], name: "index_courses_on_results_id"
  end

  create_table "results", force: :cascade do |t|
    t.integer "percentage"
    t.integer "course_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "student_id"
    t.index ["course_id"], name: "index_results_on_course_id"
    t.index ["student_id"], name: "index_results_on_student_id"
  end

# Could not dump table "students" because of following StandardError
#   Unknown type 'uuid' for column 'course_id'

  create_table "tutors", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.integer "course_id"
    t.integer "student_id"
    t.integer "appointment_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "user_id"
    t.index ["appointment_id"], name: "index_tutors_on_appointment_id"
    t.index ["course_id"], name: "index_tutors_on_course_id"
    t.index ["student_id"], name: "index_tutors_on_student_id"
    t.index ["user_id"], name: "index_tutors_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "role"
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
