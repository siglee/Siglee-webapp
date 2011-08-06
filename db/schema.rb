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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20110508234327) do

  create_table "expenditure_accounts", :force => true do |t|
    t.string   "name",                                        :null => false
    t.float    "allocation",                :default => 0.0
    t.float    "spent",                     :default => 0.0
    t.string   "account_type", :limit => 1, :default => "M"
    t.boolean  "rollover",                  :default => true
    t.integer  "month",        :limit => 1
    t.integer  "halfyear",     :limit => 1
    t.integer  "year",         :limit => 2
    t.integer  "quarter",      :limit => 1
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "expenditure_categories", :force => true do |t|
    t.string   "name",                                     :null => false
    t.float    "allocation",             :default => 0.0
    t.float    "spent",                  :default => 0.0
    t.boolean  "rollover",               :default => true
    t.integer  "expenditure_account_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "expenditure_categories", ["expenditure_account_id"], :name => "fk_category_account"

  create_table "expenditure_items", :force => true do |t|
    t.string   "name",                                         :null => false
    t.string   "description"
    t.float    "spent",                       :default => 0.0
    t.integer  "expenditure_account_id"
    t.integer  "expenditure_sub_category_id"
    t.integer  "expenditure_category_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "expenditure_items", ["expenditure_account_id"], :name => "fk_item_account"
  add_index "expenditure_items", ["expenditure_category_id"], :name => "fk_item_category"
  add_index "expenditure_items", ["expenditure_sub_category_id"], :name => "fk_item_subcategory"

  create_table "expenditure_sub_categories", :force => true do |t|
    t.string   "name",                                      :null => false
    t.float    "allocation",              :default => 0.0
    t.float    "spent",                   :default => 0.0
    t.boolean  "rollover",                :default => true
    t.integer  "expenditure_category_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "expenditure_sub_categories", ["expenditure_category_id"], :name => "fk_subcategory_category"

  create_table "tasks", :force => true do |t|
    t.string   "ame"
    t.string   "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
