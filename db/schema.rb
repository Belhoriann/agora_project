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

ActiveRecord::Schema.define(version: 20180207021816) do

  create_table "articles", force: :cascade do |t|
    t.string   "title"
    t.text     "body"
    t.string   "author"
    t.integer  "user_id"
    t.datetime "created_at",                                       null: false
    t.datetime "updated_at",                                       null: false
    t.string   "author_work_place"
    t.string   "sub_title"
    t.string   "category_id"
    t.integer  "cached_votes_total",                 default: 0
    t.integer  "cached_votes_score",                 default: 0
    t.integer  "cached_votes_up",                    default: 0
    t.integer  "cached_votes_down",                  default: 0
    t.integer  "cached_weighted_score",              default: 0
    t.integer  "cached_weighted_total",              default: 0
    t.float    "cached_weighted_average",            default: 0.0
    t.integer  "cached_scoped_praise_votes_total",   default: 0
    t.integer  "cached_scoped_praise_votes_score",   default: 0
    t.integer  "cached_scoped_praise_votes_up",      default: 0
    t.integer  "cached_scoped_praise_votes_down",    default: 0
    t.integer  "cached_weighted_praise_score",       default: 0
    t.integer  "cached_weighted_praise_total",       default: 0
    t.float    "cached_weighted_praise_average",     default: 0.0
    t.integer  "comments_count",                     default: 0,   null: false
    t.string   "thumbnail_file_name"
    t.string   "thumbnail_content_type"
    t.integer  "thumbnail_file_size"
    t.datetime "thumbnail_updated_at"
    t.integer  "cached_scoped_bookmark_votes_total", default: 0
    t.integer  "cached_scoped_bookmark_votes_score", default: 0
    t.integer  "cached_scoped_bookmark_votes_up",    default: 0
    t.integer  "cached_scoped_bookmark_votes_down",  default: 0
    t.integer  "cached_weighted_bookmark_score",     default: 0
    t.integer  "cached_weighted_bookmark_total",     default: 0
    t.float    "cached_weighted_bookmark_average",   default: 0.0
    t.string   "doi"
    t.string   "video"
    t.string   "website"
    t.string   "podcast"
    t.string   "social"
    t.index ["cached_scoped_bookmark_votes_down"], name: "index_articles_on_cached_scoped_bookmark_votes_down"
    t.index ["cached_scoped_bookmark_votes_score"], name: "index_articles_on_cached_scoped_bookmark_votes_score"
    t.index ["cached_scoped_bookmark_votes_total"], name: "index_articles_on_cached_scoped_bookmark_votes_total"
    t.index ["cached_scoped_bookmark_votes_up"], name: "index_articles_on_cached_scoped_bookmark_votes_up"
    t.index ["cached_scoped_praise_votes_down"], name: "index_articles_on_cached_scoped_praise_votes_down"
    t.index ["cached_scoped_praise_votes_score"], name: "index_articles_on_cached_scoped_praise_votes_score"
    t.index ["cached_scoped_praise_votes_total"], name: "index_articles_on_cached_scoped_praise_votes_total"
    t.index ["cached_scoped_praise_votes_up"], name: "index_articles_on_cached_scoped_praise_votes_up"
    t.index ["cached_votes_down"], name: "index_articles_on_cached_votes_down"
    t.index ["cached_votes_score"], name: "index_articles_on_cached_votes_score"
    t.index ["cached_votes_total"], name: "index_articles_on_cached_votes_total"
    t.index ["cached_votes_up"], name: "index_articles_on_cached_votes_up"
    t.index ["cached_weighted_average"], name: "index_articles_on_cached_weighted_average"
    t.index ["cached_weighted_bookmark_average"], name: "index_articles_on_cached_weighted_bookmark_average"
    t.index ["cached_weighted_bookmark_score"], name: "index_articles_on_cached_weighted_bookmark_score"
    t.index ["cached_weighted_bookmark_total"], name: "index_articles_on_cached_weighted_bookmark_total"
    t.index ["cached_weighted_praise_average"], name: "index_articles_on_cached_weighted_praise_average"
    t.index ["cached_weighted_praise_score"], name: "index_articles_on_cached_weighted_praise_score"
    t.index ["cached_weighted_praise_total"], name: "index_articles_on_cached_weighted_praise_total"
    t.index ["cached_weighted_score"], name: "index_articles_on_cached_weighted_score"
    t.index ["cached_weighted_total"], name: "index_articles_on_cached_weighted_total"
  end

  create_table "bookmarks", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "article_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "categories", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "comments", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "article_id"
    t.text     "body"
    t.datetime "created_at",                                               null: false
    t.datetime "updated_at",                                               null: false
    t.integer  "commentable_id"
    t.string   "commentable_type"
    t.integer  "comments_count",                             default: 0,   null: false
    t.integer  "cached_scoped_bookmark_comment_votes_total", default: 0
    t.integer  "cached_scoped_bookmark_comment_votes_score", default: 0
    t.integer  "cached_scoped_bookmark_comment_votes_up",    default: 0
    t.integer  "cached_scoped_bookmark_comment_votes_down",  default: 0
    t.integer  "cached_weighted_bookmark_comment_score",     default: 0
    t.integer  "cached_weighted_bookmark_comment_total",     default: 0
    t.float    "cached_weighted_bookmark_comment_average",   default: 0.0
    t.index ["cached_scoped_bookmark_comment_votes_down"], name: "index_comments_on_cached_scoped_bookmark_comment_votes_down"
    t.index ["cached_scoped_bookmark_comment_votes_score"], name: "index_comments_on_cached_scoped_bookmark_comment_votes_score"
    t.index ["cached_scoped_bookmark_comment_votes_total"], name: "index_comments_on_cached_scoped_bookmark_comment_votes_total"
    t.index ["cached_scoped_bookmark_comment_votes_up"], name: "index_comments_on_cached_scoped_bookmark_comment_votes_up"
    t.index ["cached_weighted_bookmark_comment_average"], name: "index_comments_on_cached_weighted_bookmark_comment_average"
    t.index ["cached_weighted_bookmark_comment_score"], name: "index_comments_on_cached_weighted_bookmark_comment_score"
    t.index ["cached_weighted_bookmark_comment_total"], name: "index_comments_on_cached_weighted_bookmark_comment_total"
  end

  create_table "taggings", force: :cascade do |t|
    t.integer  "article_id"
    t.integer  "tag_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["article_id"], name: "index_taggings_on_article_id"
    t.index ["tag_id"], name: "index_taggings_on_tag_id"
  end

  create_table "tags", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                               default: "",    null: false
    t.string   "encrypted_password",                  default: "",    null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",                       default: 0,     null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                                          null: false
    t.datetime "updated_at",                                          null: false
    t.string   "full_name"
    t.string   "headline"
    t.string   "work_place"
    t.string   "linkedin"
    t.string   "avatar_file_name"
    t.string   "avatar_content_type"
    t.integer  "avatar_file_size"
    t.datetime "avatar_updated_at"
    t.boolean  "admin",                               default: false
    t.integer  "cached_scoped_following_votes_total", default: 0
    t.integer  "cached_scoped_following_votes_score", default: 0
    t.integer  "cached_scoped_following_votes_up",    default: 0
    t.integer  "cached_scoped_following_votes_down",  default: 0
    t.integer  "cached_weighted_following_score",     default: 0
    t.integer  "cached_weighted_following_total",     default: 0
    t.float    "cached_weighted_following_average",   default: 0.0
    t.string   "researchgate"
    t.string   "twitter"
    t.string   "facebook"
    t.string   "youtube"
    t.string   "instagram"
    t.string   "skype"
    t.string   "website"
    t.index ["cached_scoped_following_votes_down"], name: "index_users_on_cached_scoped_following_votes_down"
    t.index ["cached_scoped_following_votes_score"], name: "index_users_on_cached_scoped_following_votes_score"
    t.index ["cached_scoped_following_votes_total"], name: "index_users_on_cached_scoped_following_votes_total"
    t.index ["cached_scoped_following_votes_up"], name: "index_users_on_cached_scoped_following_votes_up"
    t.index ["cached_weighted_following_average"], name: "index_users_on_cached_weighted_following_average"
    t.index ["cached_weighted_following_score"], name: "index_users_on_cached_weighted_following_score"
    t.index ["cached_weighted_following_total"], name: "index_users_on_cached_weighted_following_total"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "votes", force: :cascade do |t|
    t.integer  "votable_id"
    t.string   "votable_type"
    t.integer  "voter_id"
    t.string   "voter_type"
    t.boolean  "vote_flag"
    t.string   "vote_scope"
    t.integer  "vote_weight"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.index ["votable_id", "votable_type", "vote_scope"], name: "index_votes_on_votable_id_and_votable_type_and_vote_scope"
    t.index ["voter_id", "voter_type", "vote_scope"], name: "index_votes_on_voter_id_and_voter_type_and_vote_scope"
  end

end
