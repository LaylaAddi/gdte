class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_filter :allow_iframe_requests

  
  def disable_navigation
    @disable_navigation = true
  end
  
  def allow_iframe_requests
    response.headers.delete('X-Frame-Options')
  end  
    

end
