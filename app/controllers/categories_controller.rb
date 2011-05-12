class CategoriesController < ApplicationController
  def index
    @nav = Category.all
    
    @categories = Category.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @categories }
    end
  end

end