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

ActiveRecord::Schema.define(:version => 20110523181025) do

  create_table "categories", :force => true do |t|
    t.text   "nav_name"
    t.string "name"
  end

  create_table "categories_group_projects", :id => false, :force => true do |t|
    t.integer "categories_id"
    t.integer "group_projects_id"
  end

# Could not dump table "categories_group_projects_old" because of following StandardError
#   Unknown type '' for column 'group_project_id'

  create_table "categories_projects", :id => false, :force => true do |t|
    t.integer "project_id"
    t.integer "category_id"
  end

  create_table "circles", :force => true do |t|
    t.string "circle_content"
  end

  create_table "group_projects", :id => false, :force => true do |t|
    t.integer "id"
    t.text    "name"
    t.text    "description"
    t.text    "nav_name"
    t.text    "img"
  end

  create_table "group_projects_images", :id => false, :force => true do |t|
    t.integer "group_project_id"
    t.integer "image_id"
  end

  create_table "group_projects_people", :id => false, :force => true do |t|
    t.integer "group_project_id"
    t.integer "person_id"
  end

  create_table "group_projects_projects", :id => false, :force => true do |t|
    t.integer "group_project_id"
    t.integer "project_id"
  end

  create_table "group_projects_videos", :id => false, :force => true do |t|
    t.integer "video_id"
    t.integer "group_project_id"
  end

  create_table "images", :force => true do |t|
    t.string "image_url"
  end

  create_table "images_projects", :id => false, :force => true do |t|
    t.integer "project_id"
    t.integer "image_id"
  end

  create_table "links", :id => false, :force => true do |t|
    t.integer "id"
    t.text    "project_link"
  end

  create_table "majors", :force => true do |t|
    t.text "nav_name"
    t.text "name"
    t.text "short_name"
  end

  create_table "majors_people", :id => false, :force => true do |t|
    t.integer "major_id"
    t.integer "person_id"
  end

  create_table "people", :force => true do |t|
    t.string "fname"
    t.string "lname"
    t.string "contact"
    t.string "about"
  end

  create_table "people_projects", :id => false, :force => true do |t|
    t.integer "project_id"
    t.integer "person_id"
  end

  create_table "projects", :id => false, :force => true do |t|
    t.integer "id"
    t.text    "name"
    t.integer "isCapstone"
    t.text    "description"
    t.text    "name_nav"
    t.integer "isGroup"
    t.text    "img"
  end

  create_table "projects_links", :id => false, :force => true do |t|
    t.integer "link_id"
    t.integer "project_id"
  end

  create_table "projects_videos", :id => false, :force => true do |t|
    t.integer "video_id"
    t.integer "project_id"
  end

  create_table "videos", :id => false, :force => true do |t|
    t.integer "id"
    t.integer "vimeonumber"
  end

end
