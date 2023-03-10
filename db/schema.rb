# frozen_string_literal: true

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

ActiveRecord::Schema[7.0].define(version: 20_230_213_131_332) do
  create_table 'costomers', force: :cascade do |t|
    t.string 'name'
    t.string 'email'
    t.string 'contact'
    t.integer 'password'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
  end

  create_table 'inventories', force: :cascade do |t|
    t.string 'item_name'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
  end

  create_table 'invoices', force: :cascade do |t|
    t.integer 'total_price'
    t.integer 'costomer_id', null: false
    t.integer 'item_id', null: false
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
    t.string 'quantity'
    t.index ['costomer_id'], name: 'index_invoices_on_costomer_id'
    t.index ['item_id'], name: 'index_invoices_on_item_id'
  end

  create_table 'items', force: :cascade do |t|
    t.string 'name'
    t.float 'price'
    t.string 'rating'
    t.integer 'inventory_id', null: false
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
    t.index ['inventory_id'], name: 'index_items_on_inventory_id'
  end

  create_table 'stocks', force: :cascade do |t|
    t.string 'quantity'
    t.integer 'item_id', null: false
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
    t.index ['item_id'], name: 'index_stocks_on_item_id'
  end

  create_table 'users', force: :cascade do |t|
    t.string 'email', default: '', null: false
    t.string 'encrypted_password', default: '', null: false
    t.string 'reset_password_token'
    t.datetime 'reset_password_sent_at'
    t.datetime 'remember_created_at'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
    t.index ['email'], name: 'index_users_on_email', unique: true
    t.index ['reset_password_token'], name: 'index_users_on_reset_password_token', unique: true
  end

  add_foreign_key 'invoices', 'costomers'
  add_foreign_key 'invoices', 'items'
  add_foreign_key 'items', 'inventories'
  add_foreign_key 'stocks', 'items'
end
