class ImagesPeople < ActiveRecord::Migration
  def self.up
    create_table :images_people, :id => false do |t|
      t.references :profile_image
      t.references :person
    end
  end

  def self.down
    drop_table :images_people
  end
end