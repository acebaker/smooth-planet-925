class GroupProjectsController < ApplicationController
  def index
    @projects = GroupProject.all
    
    #Project.where("isCapstone = 1")
  
    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @projects }
    end
  end
end