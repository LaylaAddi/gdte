class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  include Userstamp
    devise_group :user, contains: [:driver, :dispatcher]
    before_action :authenticate_user!, except: [:index]
 
  
  def disable_navigation
    @disable_navigation = true
  end
  
  
end
