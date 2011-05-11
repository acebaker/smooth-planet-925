class CreateProjectsCategories < ActiveRecord::Migration
  def self.up
    create_table :projects_categories, :id => false do |t|
      t.references :project
      t.references :category
    end
  end

  def self.down
    drop_table :projects_categories
  end
end