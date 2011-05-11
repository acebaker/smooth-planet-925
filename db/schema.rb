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

ActiveRecord::Schema.define(:version => 20110511162220) do

# Could not dump table "categories" because of following StandardError
#   Unknown type '' for column 'nav_name'

  create_table "categories_projects", :id => false, :force => true do |t|
    t.decimal "project_id"
    t.decimal "category_id"
  end

  create_table "circles", :force => true do |t|
    t.string "circle_content"
  end

  create_table "images_people", :id => false, :force => true do |t|
    t.integer "profile_image_id"
    t.integer "person_id"
  end

# Could not dump table "majors" because of following StandardError
#   Unknown type '' for column 'nav_name'

  create_table "majors_people", :id => false, :force => true do |t|
    t.integer "major_id"
    t.integer "person_id"
  end

  create_table "people", :force => true do |t|
    t.text   "image_url"
    t.string "fname"
    t.string "lname"
    t.string "contact"
    t.string "about"
  end

  create_table "profile_images", :force => true do |t|
    t.string "image_url"
    t.string "thumb_url"
  end

  create_table "projects", :force => true do |t|
    t.string   "title"
    t.string   "image_url"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "projects_categories", :id => false, :force => true do |t|
    t.integer "project_id"
    t.integer "category_id"
  end

end
