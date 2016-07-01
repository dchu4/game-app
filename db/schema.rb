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

ActiveRecord::Schema.define(version: 20160620022928) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "boards", force: :cascade do |t|
    t.string   "tile_1"
    t.string   "tile_2"
    t.string   "tile_3"
    t.string   "tile_4"
    t.string   "tile_5"
    t.string   "tile_6"
    t.string   "tile_7"
    t.string   "tile_8"
    t.string   "tile_9"
    t.string   "tile_10"
    t.string   "tile_11"
    t.string   "tile_12"
    t.string   "tile_13"
    t.string   "tile_14"
    t.string   "tile_15"
    t.string   "tile_16"
    t.string   "tile_17"
    t.string   "tile_18"
    t.string   "tile_19"
    t.string   "tile_20"
    t.string   "tile_21"
    t.string   "tile_22"
    t.string   "tile_23"
    t.string   "tile_24"
    t.string   "tile_25"
    t.string   "tile_26"
    t.string   "tile_27"
    t.string   "tile_28"
    t.string   "tile_29"
    t.string   "tile_30"
    t.string   "tile_31"
    t.string   "tile_32"
    t.string   "tile_33"
    t.string   "tile_34"
    t.string   "tile_35"
    t.string   "tile_36"
    t.string   "tile_37"
    t.string   "tile_38"
    t.string   "tile_39"
    t.string   "tile_40"
    t.string   "tile_41"
    t.string   "tile_42"
    t.string   "tile_43"
    t.string   "tile_44"
    t.string   "tile_45"
    t.string   "tile_46"
    t.string   "tile_47"
    t.string   "tile_48"
    t.string   "tile_49"
    t.string   "tile_50"
    t.string   "tile_51"
    t.string   "tile_52"
    t.string   "tile_53"
    t.string   "tile_54"
    t.string   "tile_55"
    t.string   "tile_56"
    t.string   "tile_57"
    t.string   "tile_58"
    t.string   "tile_59"
    t.string   "tile_60"
    t.string   "tile_61"
    t.string   "tile_62"
    t.string   "tile_63"
    t.string   "tile_64"
    t.string   "tile_65"
    t.string   "tile_66"
    t.string   "tile_67"
    t.string   "tile_68"
    t.string   "tile_69"
    t.string   "tile_70"
    t.string   "tile_71"
    t.string   "tile_72"
    t.string   "tile_73"
    t.string   "tile_74"
    t.string   "tile_75"
    t.string   "tile_76"
    t.string   "tile_77"
    t.string   "tile_78"
    t.string   "tile_79"
    t.string   "tile_80"
    t.string   "tile_81"
    t.string   "tile_82"
    t.string   "tile_83"
    t.string   "tile_84"
    t.string   "tile_85"
    t.string   "tile_86"
    t.string   "tile_87"
    t.string   "tile_88"
    t.string   "tile_89"
    t.string   "tile_90"
    t.string   "tile_91"
    t.string   "tile_92"
    t.string   "tile_93"
    t.string   "tile_94"
    t.string   "tile_95"
    t.string   "tile_96"
    t.string   "tile_97"
    t.string   "tile_98"
    t.string   "tile_99"
    t.string   "tile_100"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "character_items", force: :cascade do |t|
    t.integer  "character_id"
    t.integer  "item_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.integer  "quantity"
    t.boolean  "is_worn"
  end

  create_table "characters", force: :cascade do |t|
    t.string   "character_class"
    t.integer  "attack"
    t.integer  "defense"
    t.integer  "magic_attack"
    t.integer  "magic_defense"
    t.integer  "str"
    t.integer  "int"
    t.integer  "dex"
    t.integer  "vit"
    t.integer  "luk"
    t.string   "helm"
    t.string   "l_hand"
    t.string   "r_hand"
    t.string   "body_armor"
    t.string   "gloves"
    t.string   "shoes"
    t.string   "leg_armor"
    t.boolean  "is_npc"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.string   "character_name"
  end

  create_table "game_boards", force: :cascade do |t|
    t.integer  "board_id"
    t.integer  "game_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "games", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "character_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "items", force: :cascade do |t|
    t.string   "item_type"
    t.string   "cure_status"
    t.integer  "attack"
    t.integer  "defense"
    t.integer  "magic_attack"
    t.integer  "magic_defense"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.integer  "recovery_amount"
    t.string   "name"
  end

  create_table "users", force: :cascade do |t|
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

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

end
