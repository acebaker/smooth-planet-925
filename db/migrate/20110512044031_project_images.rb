class ProjectImages < ActiveRecord::Migration
  def self.up
    create_table :project_images do |t|
      t.string :image_url
    end
  end

  def self.down
    drop_table :project_images
  end
end
  