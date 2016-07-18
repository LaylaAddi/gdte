class DriversController < ApplicationController
  before_action :set_the_driver_by_id, only: [:show, :edit, :update, :destroy]

 
  def dashboard
    @driver = Driver.find(current_driver.id)
  end
  
  def index
    @drivers = Driver.all
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
      params.require(:driver).permit(:username,
                                     :password, 
                                     :password_confirmation,
                                     :email,
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
                                     :ids
                                     )
    end

end