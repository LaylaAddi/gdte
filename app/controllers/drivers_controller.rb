class DriversController < ApplicationController
  before_action :authenticate_driver!
  before_action :set_the_driver_by_id, only: [:show, :edit, :update, :destroy]

 
  def dashboard
    @driver_profile = DriverProfile.find(current_driver.id)
    @driver = Driver.find(current_driver.id)
  end
  
  def index
    if params[:internal_driver_status]
      @drivers = Driver.where(internal_driver_status: params[:internal_driver_status]).page(params[:page]).per(15)
    else
      @drivers = Driver.all.page(params[:page]).per(15)
    end
  end
  

  def new
  end

  def show
  end
 

  def edit
  end
  
  def update
    if params[:driver][:password].blank?
      params[:driver].delete(:password)
      params[:driver].delete(:password_confirmation)
    end
    
    if @driver.update!(driver_account_update_params)
      flash[:success] = "The driver was updated"
      redirect_to @driver
    else
      flash[:error] = "There was a problem" 
      render :edit  
    end


  end
 

  def destroy
  end
 

  def create
  end
  
  private
    def set_the_driver_by_id
      @driver = Driver.find(params[:id])
    end
  
    def driver_account_update_params
      params.require(:driver).permit(:password_confirmation,
                                     :current_password,
                                     :email, driver_profile_attributes:[
                                        :street_address_1,
                                        :street_address_2,
                                        :city, 
                                        :state,
                                        :zip_code,                                   
                                        :full_name,
                                        :telephone,
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
                                        :dob,
                                        :pdf,
                                        :internal_driver_status, 
                                        :id, 
                                        :driver_id 
                                        ]
                                        )
    end

end