class ProjectsPeople < ActiveRecord::Migration
  def self.up
    create_table :projects_people, :id => false do |t|
      t.references :project
      t.references :person
    end
  end

  def self.down
    drop_table :projects_people
  end
end
