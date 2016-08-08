class AdminsController < ApplicationController
  before_action :authenticate_admin!
  before_action :set_the_admin
  before_action :set_the_driver_by_id, only: [:driver_edit]
  before_action :set_the_user_by_id, only: [:user_edit]



 
  def dashboard
  end
  
  def drivers_index
    if params[:employment_status] 
      @drivers = Driver.where(employment_status: params[:employment_status]).page(params[:page]).per(15)

    else
      @drivers = Driver.all.page(params[:page]).per(15)
    end
  end
  
  def driver_edit
  end
  
  def driver_update
    @driver = Driver.find(params[:id])
    if params[:driver][:password].blank?
      params[:driver].delete(:password)
      params[:driver].delete(:password_confirmation)
    end
    
    if @driver.update(driver_params)
      flash[:success] = "The driver was updated"
      redirect_to @driver
    else
      flash[:error] = "There was a problem" 
      render :edit  
    end
  end

  def driver_show
  end
 
  def users_index
  end
  
  
  def user_edit

  end
  
  def user_update

    if params[:user][:password].blank?
      params[:user].delete(:password)
      params[:user].delete(:password_confirmation)
    end
    
    if @user.update(user_params)
      flash[:success] = "The user was updated"
      redirect_to @user
    else
      flash[:error] = "There was a problem" 
      render :edit  
    end    
  end
  

  
  def user_show
  end  
  
  
 
  def new
  end
  
  def create
  end
  
# private-----------------------------------------------------------------------  
  
  private
    def set_the_driver_by_id
      @driver = Driver.find(params[:id])
    end
    
    def set_the_user_by_id
      @user = User.find(params[:id])
    end

    def set_the_admin
      @admin = current_admin
    end    
    
  
  
    def driver_params
      params.require(:driver).permit(:password, 
                                     :password_confirmation,
                                     :current_password,
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
                                     :employment_status,
                                     :updated_by,
                                     :e_contact_name,
                                     :e_contact_number,
                                     :driver_declined 
                                      )
    end
    
   def user_params
    params.require(:user).permit(:email,
                                   :street_address_1,
                                   :street_address_2,
                                   :city, 
                                   :state,
                                   :zip_code,                                   
                                   :full_name,
                                   :office_phone,
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
                                   :extention,
                                   :cellphone,
                                   :office_location, 
                                   :e_contact_name,
                                   :e_contact_number,
                                   :employment_status,
                                   :updated_by,
                                   :dispatcher,
                                   :registered,
                                   :office,
                                   :inactive
                                  )
  end
end


    
