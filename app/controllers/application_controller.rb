class ApplicationController < ActionController::Base
  protect_from_forgery
  
  before_filter :detect_iphone_request

  protected  
  def detect_iphone_request
    @request.format = :iphone if iphone_request?
  end

  def iphone_request?
    request.env["HTTP_USER_AGENT"] && request.env["HTTP_USER_AGENT"][/(Mobile\/.+Safari)/]
  end
end
