class Project < ActiveRecord::Base
  attr_accessible :name
  #belongs_to :user
  has_and_belongs_to_many :categories
  has_and_belongs_to_many :people
  has_and_belongs_to_many :images
  has_and_belongs_to_many :videos
  belongs_to :group_project
  
  def self.random(options = {})
    count = self.count()
    self.find(:first, options.merge(:offset => rand(count)))
  end
  
end
