module ApplicationHelper
  def title
    base_title = "UW Design Show 2011"
    if @title.nil?
      base_title
    else
      "#{base_title} | #{@title}"
    end
  end
  
  def logo
    logo = image_tag("general/logo.png", :alt => "UW Design Show 2011", :class => "logo")
  end
  
end
