class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_filter :set_paper_trail_whodunnit
  
    devise_group :user, contains: [:driver, :user]
    before_action :authenticate_user!, except: [:index]
 
  
  def disable_navigation
    @disable_navigation = true
  end
  
  
end
