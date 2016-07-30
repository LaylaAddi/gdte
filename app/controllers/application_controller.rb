class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_filter :set_paper_trail_whodunnit
    devise_group :user, contains: [:driver, :dispatcher]
    before_action :authenticate_user!, except: [:index]
 
  
  def disable_navigation
    @disable_navigation = true
  end
  
  protected

  def user_for_paper_trail
    dispatcher_signed_in? ? current_dispatcher.try(:id) : 'Unknown user'
  end
 
  
  
end
