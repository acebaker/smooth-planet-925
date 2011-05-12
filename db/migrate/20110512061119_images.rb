class Images < ActiveRecord::Migration
  def self.up
    create_table :images do |t|
      t.string :image_url
    end
  end

  def self.down
    drop_table :images
  end
end
