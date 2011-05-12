class ImagesProjects < ActiveRecord::Migration
  def self.up
    create_table :images_projects, :id => false do |t|
      t.references :image
      t.references :project
    end
  end

  def self.down
    drop_table :images_projects
  end
end
