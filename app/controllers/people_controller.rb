class PeopleController < ApplicationController
  def index
    @title = "People"
    @people = Person.all.sort!{ |a,b| a.lname.downcase <=> b.lname.downcase }
    @navs = Major.all.sort! { |a,b| a.name.downcase <=> b.name.downcase }
    
    @ds  = Major.find_by_name('Design Studies').people.sort! { |a,b| a.lname.downcase <=> b.lname.downcase }
    @id  = Major.find_by_name('Industrial Design').people.sort! { |a,b| a.lname.downcase <=> b.lname.downcase }
    @mfa = Major.find_by_name('Master of Fine Arts').people.sort! { |a,b| a.lname.downcase <=> b.lname.downcase }
    @vcd = Major.find_by_name('Visual Communication Design').people.sort! { |a,b| a.lname.downcase <=> b.lname.downcase }
    
    @active_nav = "people"
    
    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @people }
    end
  end
  
  def show
    
    @person = Person.find(params[:id])
    @title = @person.fname + " " + @person.lname
    
    @active_nav = "people"
    
    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @people }
    end
  end
end
