class DriverApplicationsController < ApplicationController
  before_action :find_id, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_dispatcher!, except: [:new, :create]
  
  
  def index
    @driver_applications = DriverApplication.all
  end

  
  def new
    @driver_application = DriverApplication.new
  end 
  
  def show
    
  end
  
  def create
    @driver_application = DriverApplication.new(the_driver_application_parameters)
    if @driver_application.save
    redirect_to root_url
    flash[:notice] = "Your Application has been sent!"
    else
      flash[:alert] = "There was a problem saving your application"
      render :new
    end
  end
  
  def edit

  end
  
  def update
    if @driver_application.update(the_driver_application_parameters)
    redirect_to @driver_application
    flash[:notice] = "The driver application has been updated"
    else
      flash[:alert] = "there was an problem updating your driver application."
      render :edit
    end
  end
  
    def destroy
      if @driver_application.destroy
      redirect_to root_url
      flash[:notice] = "The driver application has been deleted"
    end
  end
  
  def search

  end
  
  
  private 
  
  def find_id
    @driver_application = DriverApplication.find(params[:id])
  end
  
  
  def the_driver_application_parameters
    params.require(:driver_application).permit(:full_name,
                                               :street_address,
                                               :town_city,
                                               :state,
                                               :zip_code,
                                               :license_number,
                                               :license_image,
                                               :social_number,
                                               :social_image,
                                               :medical_image,
                                               :years_of_experience,
                                               :info,
                                               :hazmat,         
                                               :dryvan,
                                               :reefer,
                                               :flatbed,
                                               :telephone,
                                               :email,
                                               :dob,
                                               :pdf
                                               
                                               )
                                     
  end
end
