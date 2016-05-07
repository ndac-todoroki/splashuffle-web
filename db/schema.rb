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

ActiveRecord::Schema.define(version: 20160128041915) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "clothing", force: :cascade do |t|
    t.string   "name_ja"
    t.string   "name_en"
    t.string   "image_path"
    t.string   "image_url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["name_en"], name: "index_clothing_on_name_en", unique: true, using: :btree
    t.index ["name_ja"], name: "index_clothing_on_name_ja", unique: true, using: :btree
  end

  create_table "clothing_tags", id: false, force: :cascade do |t|
    t.integer "clothing_id", null: false
    t.integer "tag_id",      null: false
    t.index ["clothing_id"], name: "index_clothing_tags_on_clothing_id", using: :btree
    t.index ["tag_id"], name: "index_clothing_tags_on_tag_id", using: :btree
  end

  create_table "headgear", force: :cascade do |t|
    t.string   "name_ja"
    t.string   "name_en"
    t.string   "image_path"
    t.string   "image_url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["name_en"], name: "index_headgear_on_name_en", unique: true, using: :btree
    t.index ["name_ja"], name: "index_headgear_on_name_ja", unique: true, using: :btree
  end

  create_table "headgear_tags", id: false, force: :cascade do |t|
    t.integer "headgear_id", null: false
    t.integer "tag_id",      null: false
    t.index ["headgear_id"], name: "index_headgear_tags_on_headgear_id", using: :btree
    t.index ["tag_id"], name: "index_headgear_tags_on_tag_id", using: :btree
  end

  create_table "rules", force: :cascade do |t|
    t.string   "name_ja"
    t.string   "name_en"
    t.string   "image_path"
    t.string   "image_url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["name_en"], name: "index_rules_on_name_en", unique: true, using: :btree
    t.index ["name_ja"], name: "index_rules_on_name_ja", unique: true, using: :btree
  end

  create_table "shoes", force: :cascade do |t|
    t.string   "name_ja"
    t.string   "name_en"
    t.string   "image_path"
    t.string   "image_url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["name_en"], name: "index_shoes_on_name_en", unique: true, using: :btree
    t.index ["name_ja"], name: "index_shoes_on_name_ja", unique: true, using: :btree
  end

  create_table "shoes_tags", id: false, force: :cascade do |t|
    t.integer "shoe_id", null: false
    t.integer "tag_id",  null: false
    t.index ["shoe_id"], name: "index_shoes_tags_on_shoe_id", using: :btree
    t.index ["tag_id"], name: "index_shoes_tags_on_tag_id", using: :btree
  end

  create_table "stages", force: :cascade do |t|
    t.string   "name_ja"
    t.string   "name_en"
    t.string   "image_path"
    t.string   "image_url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["name_en"], name: "index_stages_on_name_en", unique: true, using: :btree
    t.index ["name_ja"], name: "index_stages_on_name_ja", unique: true, using: :btree
  end

  create_table "tags", force: :cascade do |t|
    t.string   "name_ja"
    t.string   "name_en"
    t.string   "image_path"
    t.string   "image_url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["name_en"], name: "index_tags_on_name_en", unique: true, using: :btree
    t.index ["name_ja"], name: "index_tags_on_name_ja", unique: true, using: :btree
  end

  create_table "tags_weapons", force: :cascade do |t|
    t.integer  "tag_id",     null: false
    t.integer  "weapon_id",  null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["tag_id"], name: "index_tags_weapons_on_tag_id", using: :btree
    t.index ["weapon_id"], name: "index_tags_weapons_on_weapon_id", using: :btree
  end

  create_table "weapons", force: :cascade do |t|
    t.string   "name_ja"
    t.string   "name_en"
    t.string   "image_path"
    t.string   "image_url"
    t.integer  "range"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["name_en"], name: "index_weapons_on_name_en", unique: true, using: :btree
    t.index ["name_ja"], name: "index_weapons_on_name_ja", unique: true, using: :btree
  end

  add_foreign_key "clothing_tags", "clothing"
  add_foreign_key "clothing_tags", "tags"
  add_foreign_key "headgear_tags", "headgear"
  add_foreign_key "headgear_tags", "tags"
  add_foreign_key "shoes_tags", "shoes"
  add_foreign_key "shoes_tags", "tags"
  add_foreign_key "tags_weapons", "tags"
  add_foreign_key "tags_weapons", "weapons"
end
