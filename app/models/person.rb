class Person < ActiveRecord::Base
  attr_accessible :lname, :major, :id
  
  has_and_belongs_to_many :projects
  has_one :majors
  has_one :profile_image
  
end
