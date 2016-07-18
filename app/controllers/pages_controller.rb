class PagesController < ApplicationController
  before_filter :disable_navigation
  
  def index
    if current_driver
      redirect_to drivers_dashboard_path 

    end
  end
end


