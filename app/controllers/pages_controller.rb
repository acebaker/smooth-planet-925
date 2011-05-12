class PagesController < ApplicationController
  def home
    @title = "Home"
  end
  
  def about_uw_design
    @title = "About UW Design"
    @active_nav = "about_uw_design"
  end
  
  def show_information
    @title = "Show Information"
    @active_nav = "show_info"
  end
end
