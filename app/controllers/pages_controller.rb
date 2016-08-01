class PagesController < ApplicationController
  before_action :authenticate_user, except: [:index ]
  before_action :disable_navigation
  
  def index 
    if current_driver
      redirect_to driver_dashboard_path
    end
    if current_user 
      redirect_to office_dashboard_path
    end  
  end
end


