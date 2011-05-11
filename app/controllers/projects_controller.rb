class ProjectsController < ApplicationController
  def index
    @title = "Work"
    @projects = Project.all
    @navs = Category.all.sort! { |a,b| a.name.downcase <=> b.name.downcase }
    @sub_image = "BestWorkPhrase"
  	
  	# every 10 projects, insert one circle from the circle table
  	
  	#@insert = Category.all
    
    
    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @projects }
    end
  end
  
  def show
    @project = Project.find(params[:id])
    
    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @projects }
    end
  end
end