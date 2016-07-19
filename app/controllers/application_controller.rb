class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  
  def disable_navigation
    @disable_navigation = true
  end
  
  
end
