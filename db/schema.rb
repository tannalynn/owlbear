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

ActiveRecord::Schema.define(version: 20180513033746) do

  create_table "characters", force: :cascade do |t|
    t.integer  "user_id"
    t.string   "name"
    t.integer  "level"
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
    t.string   "character_class"
    t.string   "race"
    t.string   "background"
    t.string   "alignment"
    t.string   "player_name"
    t.integer  "xp"
    t.integer  "str"
    t.integer  "dex"
    t.integer  "con"
    t.integer  "intel"
    t.integer  "wis"
    t.integer  "cha"
    t.integer  "inspiration"
    t.integer  "proficiency_bonus"
    t.integer  "ac"
    t.integer  "initiative"
    t.integer  "speed"
    t.integer  "hp"
    t.integer  "hitdice_total"
    t.integer  "sklmod_acrobatics"
    t.integer  "sklmod_animalhandling"
    t.integer  "sklmod_arcana"
    t.integer  "sklmod_athletics"
    t.integer  "sklmod_deception"
    t.integer  "sklmod_history"
    t.integer  "sklmod_insight"
    t.integer  "sklmod_intimidation"
    t.integer  "sklmod_investigation"
    t.integer  "sklmod_medicine"
    t.integer  "sklmod_nature"
    t.integer  "sklmod_perception"
    t.integer  "sklmod_performance"
    t.integer  "sklmod_persuation"
    t.integer  "sklmod_religion"
    t.integer  "sklmod_sleightofhand"
    t.integer  "sklmod_stealth"
    t.integer  "sklmod_survival"
    t.text     "weapons_attacks"
    t.text     "equipment"
    t.text     "feats_notes"
    t.text     "proficiencies_languages"
    t.text     "personality_traits"
    t.text     "ideals"
    t.text     "bonds"
    t.text     "flaws"
  end

  add_index "characters", ["user_id"], name: "index_characters_on_user_id"

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.string   "email"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.string   "password_digest"
  end

end
