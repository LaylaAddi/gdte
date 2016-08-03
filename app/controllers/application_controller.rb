class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

    devise_group :user, contains: [:driver, :user]
    before_action :authenticate_user!, except: [:index]
 
  
  def disable_navigation
    @disable_navigation = true
  end
  
  
end
