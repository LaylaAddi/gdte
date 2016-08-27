class DriversController < ApplicationController
  before_action do
    if current_admin != nil 
      authenticate_admin! 
    elsif current_driver != nil 
      authenticate_driver!
    elsif current_user != nil 
      authenticate_user!      
    end
  end

  before_action :set_the_driver_by_id, except: [:dashboard, :index]
  before_action :set_the_user
  before_action :set_the_admin  
  before_action :restrict_driver, except: [:show, :dashboard]


 
  def dashboard
    @driver = current_driver
    @user = current_user
  end
  
  def index
    @search = Driver.search(params[:q])

    if params[:employment_status] 
      @drivers = Driver.where(employment_status: params[:employment_status]).page(params[:page]).per(15)

    else
      @drivers = Driver.all.page(params[:page]).per(15)
    end
    if user_signed_in? and current_user.registered? 
      flash[:error] = "#{@user.first_name}, you are not able to perform that function."
      redirect_to root_path
    end        
  end
  
  

  def new
  end

  def show
    
  end
 

  def edit
  @driver = Driver.find(params[:id])
  @admin = current_admin 
  end
  
  def update
    @driver = Driver.find(params[:id])
    if params[:driver][:password].blank?
      params[:driver].delete(:password)
      params[:driver].delete(:password_confirmation)
    end
    
    if @driver.update(driver_params)
      flash[:success] = "The driver was updated"
      redirect_to @driver
    else
      flash[:error] = @driver.errors.full_messages.to_sentence  
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
    
    def set_the_admin
      @admin = current_admin
    end    
    
    def set_the_user
      @user = current_user
    end

    def set_the_admin
      @admin = current_admin
    end    
    
  def restrict_driver
    @driver = current_driver
      if @driver
      flash[:alert] = "#{@driver.first_name}, You are not allowed to view this resource"
      redirect_to root_path
    end
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
                                     :driver_declined,
                                     :cellphone
                                      )
    end
end