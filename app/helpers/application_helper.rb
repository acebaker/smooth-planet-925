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
  
  # Checks UserAgent
  def is_iphone?
    ua = request.user_agent
    return false if ua.nil?
    return true if ua =~ /Mobile|webOS/

    # Must be something else!
    false
  end
  
end
