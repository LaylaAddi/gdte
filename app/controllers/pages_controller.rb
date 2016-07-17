class PagesController < ApplicationController
  before_filter :disable_navigation
  
  def index
    if current_driver
      redirect_to driver_profiles_path
    else
      redirect_to root_path
    end
  end
end


