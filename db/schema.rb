# This file is auto-generated from the current state of the database. Instead of editing this file, 
# please use the migrations feature of Active Record to incrementally modify your database, and
# then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your database schema. If you need
# to create the application database on another system, you should be using db:schema:load, not running
# all the migrations from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20090221114630) do

  create_table "bank_accounts", :force => true do |t|
    t.string   "account_number", :limit => 10,  :default => "", :null => false
    t.string   "description",    :limit => 100, :default => ""
    t.datetime "created_on"
    t.datetime "updated_on"
  end

  create_table "categories", :force => true do |t|
    t.string   "name"
    t.integer  "parent_id"
    t.datetime "created_on"
    t.datetime "updated_on"
  end

  create_table "creditors", :force => true do |t|
    t.string   "name",       :limit => 100, :default => "", :null => false
    t.string   "city",       :limit => 100
    t.string   "website",    :limit => 100
    t.text     "notes"
    t.datetime "created_on"
    t.datetime "updated_on"
  end

  create_table "expenses", :force => true do |t|
    t.integer  "upload_detail_id"
    t.integer  "bank_account_id"
    t.date     "boekdatum",                         :null => false
    t.date     "valutadatum",                       :null => false
    t.float    "bedrag",           :default => 0.0, :null => false
    t.integer  "payment_type_id"
    t.integer  "creditor_id"
    t.integer  "category_id"
    t.integer  "person_id"
    t.datetime "created_on"
    t.datetime "updated_on"
    t.text     "info"
    t.string   "image"
    t.integer  "main_category_id"
  end

  add_index "expenses", ["bank_account_id"], :name => "bank_account_id"
  add_index "expenses", ["category_id"], :name => "category_id"
  add_index "expenses", ["creditor_id"], :name => "creditor_id"
  add_index "expenses", ["payment_type_id"], :name => "payment_type_id"
  add_index "expenses", ["person_id"], :name => "person_id"
  add_index "expenses", ["upload_detail_id"], :name => "upload_detail_id"

  create_table "payment_types", :force => true do |t|
    t.string   "name",        :limit => 3
    t.string   "description"
    t.datetime "created_on"
    t.datetime "updated_on"
  end

  create_table "people", :force => true do |t|
    t.string   "name"
    t.string   "cardnumber", :limit => 3
    t.datetime "created_on"
    t.datetime "updated_on"
  end

  create_table "preset_expenses", :force => true do |t|
    t.string   "tag"
    t.integer  "creditor_id"
    t.integer  "category_id"
    t.float    "amount"
    t.text     "notes"
    t.datetime "created_on"
    t.datetime "updated_on"
  end

  add_index "preset_expenses", ["category_id"], :name => "category_id"
  add_index "preset_expenses", ["creditor_id"], :name => "creditor_id"

  create_table "schema_info", :id => false, :force => true do |t|
    t.integer "version"
  end

  create_table "upload_details", :force => true do |t|
    t.string   "rekeningnummer",       :limit => 15, :default => ""
    t.string   "ten_laste_van",        :limit => 50, :default => ""
    t.string   "boekdatum",            :limit => 10, :default => ""
    t.string   "valutadatum",          :limit => 10, :default => ""
    t.string   "bedrag",               :limit => 50, :default => ""
    t.string   "munt_v_d_rekening",    :limit => 50, :default => ""
    t.string   "begunstigde",          :limit => 50, :default => ""
    t.string   "begunstigde_rekening", :limit => 50, :default => ""
    t.string   "mutatie_omschrijving", :limit => 50, :default => ""
    t.string   "regel_1",              :limit => 50, :default => ""
    t.string   "regel_2",              :limit => 50, :default => ""
    t.string   "regel_3",              :limit => 50, :default => ""
    t.string   "regel_4",              :limit => 50, :default => ""
    t.string   "regel_5",              :limit => 50, :default => ""
    t.integer  "upload_id",                          :default => 0,  :null => false
    t.datetime "created_on"
    t.datetime "updated_on"
  end

  add_index "upload_details", ["upload_id"], :name => "upload_id"

  create_table "uploads", :force => true do |t|
    t.string   "filename"
    t.binary   "file"
    t.date     "period_start",                     :null => false
    t.date     "period_end",                       :null => false
    t.float    "balance_start",   :default => 0.0, :null => false
    t.float    "balance_end",     :default => 0.0, :null => false
    t.integer  "bank_account_id"
    t.datetime "created_on"
    t.datetime "updated_on"
  end

  add_index "uploads", ["bank_account_id"], :name => "bank_account_id"

end
