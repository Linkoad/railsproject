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

ActiveRecord::Schema.define(version: 2019_05_11_181011) do

  create_table "following_relationships", force: :cascade do |t|
    t.integer "following_relationships_id"
    t.integer "follower_id"
    t.integer "followed_user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["followed_user_id"], name: "index_following_relationships_on_followed_user_id"
    t.index ["follower_id"], name: "index_following_relationships_on_follower_id"
    t.index ["following_relationships_id"], name: "index_following_relationships_on_following_relationships_id"
  end

  create_table "likes", force: :cascade do |t|
    t.integer "user_id"
    t.integer "shout_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["shout_id"], name: "index_likes_on_shout_id"
    t.index ["user_id", "shout_id"], name: "index_likes_on_user_id_and_shout_id", unique: true
    t.index ["user_id"], name: "index_likes_on_user_id"
  end

  create_table "photo_shouts", force: :cascade do |t|
    t.string "image_file_name"
    t.string "image_content_type"
    t.bigint "image_file_size"
    t.datetime "image_updated_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "shouts", force: :cascade do |t|
    t.integer "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "content_type", null: false
    t.integer "content_id", null: false
    t.index ["content_type", "content_id"], name: "index_shouts_on_content_type_and_content_id"
    t.index ["user_id"], name: "index_shouts_on_user_id"
  end

  create_table "text_shouts", force: :cascade do |t|
    t.string "body", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "email", null: false
    t.string "encrypted_password", limit: 128, null: false
    t.string "confirmation_token", limit: 128
    t.string "remember_token", limit: 128, null: false
    t.string "username"
    t.integer "followed_users_count", default: 0, null: false
    t.integer "followers_count", default: 0, null: false
    t.index ["email"], name: "index_users_on_email"
    t.index ["remember_token"], name: "index_users_on_remember_token"
    t.index ["username"], name: "index_users_on_username", unique: true
  end

end
