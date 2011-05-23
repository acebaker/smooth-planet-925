class GroupProjectsController < ApplicationController
  def index
    @projects = GroupProject.all.sort! { |a,b| a.name.downcase <=> b.name.downcase }
    @navs = GroupProject.all.sort! { |a,b| a.name.downcase <=> b.name.downcase }
    
    @group = 1
    
    @active_nav = "work"
    #Project.where("isCapstone = 1")
  
    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @projects }
    end
  end
end