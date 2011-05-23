class Category < ActiveRecord::Base
  has_and_belongs_to_many :projects
  has_and_belongs_to_many :group_projects
  #default_scope order('categories.name')
  
  def self.random(options = {})
    count = self.count()
    self.find(:first, options.merge(:offset => rand(count)))
  end
  
end
