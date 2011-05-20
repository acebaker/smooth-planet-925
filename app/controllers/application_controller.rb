class ApplicationController < ActionController::Base
  protect_from_forgery
  
  before_filter :headers_iso
  
  def headers_iso
    headers["content-type"]= "text/html; charset=UTF-8"
  end
  
end
