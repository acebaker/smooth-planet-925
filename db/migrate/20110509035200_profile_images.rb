class ProfileImages < ActiveRecord::Migration
  def self.up
    create_table :profile_images do |t|
      t.string :image_url
      t.string :thumb_url
    end
  end

  def self.down
    drop_table :profile_images
  end
end
