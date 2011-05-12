class ProjectsImages < ActiveRecord::Migration
  def self.up
    create_table :projects_images, :id => false do |t|
      t.references :project
      t.references :image
    end
  end

  def self.down
    drop_table :projects_images
  end
end
  