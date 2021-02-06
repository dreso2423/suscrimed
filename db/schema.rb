# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2021_02_06_205237) do

  create_table "drugs", force: :cascade do |t|
    t.integer "price"
    t.integer "cost"
    t.string "drug_name"
    t.string "image"
    t.string "image_alt_text"
    t.string "brand"
    t.string "supplier"
    t.string "grammage"
    t.string "description"
    t.string "type"
    t.string "tags"
    t.integer "inventory"
    t.string "status"
    t.string "ean"
    t.string "active_ingredient"
    t.string "cofepris_group"
    t.string "patent_name"
    t.boolean "product_available"
    t.string "body"
    t.string "title"
    t.string "laboratory"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "invoice_details", force: :cascade do |t|
    t.integer "invoice_id", null: false
    t.integer "drug_id", null: false
    t.float "total"
    t.integer "quantity"
    t.float "subtotal"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["drug_id"], name: "index_invoice_details_on_drug_id"
    t.index ["invoice_id"], name: "index_invoice_details_on_invoice_id"
  end

  create_table "invoices", force: :cascade do |t|
    t.integer "user_id", null: false
    t.datetime "order_date"
    t.string "order_status"
    t.string "discount"
    t.boolean "fufilled"
    t.datetime "bill_date"
    t.boolean "suscription"
    t.string "frequency"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_invoices_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "invoice_details", "drugs"
  add_foreign_key "invoice_details", "invoices"
  add_foreign_key "invoices", "users"
end
