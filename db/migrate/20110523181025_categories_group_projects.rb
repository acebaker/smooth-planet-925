class CategoriesGroupProjects < ActiveRecord::Migration
  def self.up
    create_table :categories_group_projects, :id => false do |t|
      t.references :categories
      t.references :group_projects
    end
  end

  def self.down
    drop_table :categories_group_projects
  end
end
