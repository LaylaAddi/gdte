class UsersController < ApplicationController
  before_action do
    if current_admin != nil 
      :authenticate_admin! 
    else 
      :authenticate_user!
    end
  end
  before_action :restrict_driver, except: [:show] 
  before_action :set_user_id, except: [:dashboard] 

  
  
  def dashboard
    @user = current_user
  end
  
  
  
  def index

    if params[:registered]
      @users = User.where(registered: true).page(params[:page]).per(15)
    elsif
       params[:dispatcher]
        @users = User.where(dispatcher: true).page(params[:page]).per(15)
    elsif
       params[:office]
        @users = User.where(office: true).page(params[:page]).per(15)
    elsif
       params[:inactive]
        @users = User.where(inactive: true).page(params[:page]).per(15)          
    else      
      @users = User.all.page(params[:page]).per(15)  
    end
    
    if user_signed_in? and current_user.registered? 
      flash[:error] = "#{@user.first_name}, you are not able to perform that function."
      redirect_to root_path
    end      
  end
    
  
  def edit
    @user = User.find(params[:id])
  end
    


  
  def update
    @user = User.find(params[:id])
    if params[:user][:password].blank?
      params[:user].delete(:password)
      params[:user].delete(:password_confirmation)
    end
    
    if @user.update!(user_params)
      flash[:success] = "The user was updated"
      redirect_to @user
    else
      flash[:error] = "There was a problem" 
      render :edit  
    end
  end
  
  def show
    @user = User.find(params[:id])
  end

  
  private
  

  
  def restrict_driver
    @driver = current_driver
      if @driver
      flash[:alert] = "#{@driver.first_name}, You are not allowed to view this resource"
      redirect_to root_path
    end
  end
  
  def set_user_id
    @user = current_user
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