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
  	
  	@brand  = (Category.find_by_name('Brand').projects + Category.find_by_name('Brand').group_projects).sort! { |a,b| a.name.downcase <=> b.name.downcase }
  	@exhibition  = (Category.find_by_name('Exhibition').projects + Category.find_by_name('Exhibition').group_projects).sort! { |a,b| a.name.downcase <=> b.name.downcase }
  	@information  = (Category.find_by_name('Information').projects + Category.find_by_name('Information').group_projects).sort! { |a,b| a.name.downcase <=> b.name.downcase }
  	@interaction  = (Category.find_by_name('Interaction').projects + Category.find_by_name('Interaction').group_projects).sort! { |a,b| a.name.downcase <=> b.name.downcase }
  	@motion  = (Category.find_by_name('Motion').projects + Category.find_by_name('Motion').group_projects).sort! { |a,b| a.name.downcase <=> b.name.downcase }
  	@packaging  = (Category.find_by_name('Packaging').projects + Category.find_by_name('Packaging').group_projects).sort! { |a,b| a.name.downcase <=> b.name.downcase }
  	@print  = (Category.find_by_name('Print').projects + Category.find_by_name('Print').group_projects).sort! { |a,b| a.name.downcase <=> b.name.downcase }
  	@product  = (Category.find_by_name('Product').projects + Category.find_by_name('Product').group_projects).sort! { |a,b| a.name.downcase <=> b.name.downcase }
  	@service  = (Category.find_by_name('Service').projects + Category.find_by_name('Service').group_projects).sort! { |a,b| a.name.downcase <=> b.name.downcase }
  	@web  = (Category.find_by_name('Web').projects + Category.find_by_name('Web').group_projects).sort! { |a,b| a.name.downcase <=> b.name.downcase }
    
    
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