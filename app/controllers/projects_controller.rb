class ProjectsController < ApplicationController
  def index
    @title = "Work"
    @solo_projects = Project.all
    @group_projects = GroupProject.all
    @projects = @solo_projects + @group_projects
    @navs = Category.all.sort! { |a,b| a.name.downcase <=> b.name.downcase }
    @navs2 = "yes"
    @sub_image = "BestWorkPhrase"
  	
  	@active_nav = "work"
  	
  	@brand  = Category.find_by_name('Brand').projects.sort! { |a,b| a.name.downcase <=> b.name.downcase }
  	@exhibition  = Category.find_by_name('Exhibition').projects.sort! { |a,b| a.name.downcase <=> b.name.downcase }
  	@information  = Category.find_by_name('Information').projects.sort! { |a,b| a.name.downcase <=> b.name.downcase }
  	@interaction  = Category.find_by_name('Interaction').projects.sort! { |a,b| a.name.downcase <=> b.name.downcase }
  	@motion  = Category.find_by_name('Motion').projects.sort! { |a,b| a.name.downcase <=> b.name.downcase }
  	@packaging  = Category.find_by_name('Packaging').projects.sort! { |a,b| a.name.downcase <=> b.name.downcase }
  	@print  = Category.find_by_name('Print').projects.sort! { |a,b| a.name.downcase <=> b.name.downcase }
  	@product  = Category.find_by_name('Product').projects.sort! { |a,b| a.name.downcase <=> b.name.downcase }
  	@service  = Category.find_by_name('Service').projects.sort! { |a,b| a.name.downcase <=> b.name.downcase }
  	@web  = Category.find_by_name('Web').projects.sort! { |a,b| a.name.downcase <=> b.name.downcase }
    
    
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