class Image < ActiveRecord::Base
  has_and_belongs_to_many :projects
  has_and_belongs_to_many :group_projects
end
