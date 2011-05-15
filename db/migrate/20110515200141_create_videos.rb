class CreateVideos < ActiveRecord::Migration
  def self.up
    create_table :videos do |t|
      t.string :name
      t.string :vimeonumber
    end
    
    create_table :videos_projects, :id => false do |t|
      t.references :video_id
      t.references :project_id
    end
  end

  def self.down
    drop_table :videos
    drop_table :videos_projects
  end
end
