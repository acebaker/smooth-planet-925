class GroupProject < ActiveRecord::Base
  has_and_belongs_to_many :people
  has_and_belongs_to_many :projects
  has_and_belongs_to_many :images
  has_and_belongs_to_many :categories
  has_and_belongs_to_many :videos
  has_and_belongs_to_many :nongraduating_people
end
