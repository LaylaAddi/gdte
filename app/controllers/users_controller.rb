class UsersController < ApplicationController
  before_action :set_user_id, except: [:dashboard, :index]
  before_action :restrict_driver, except: [:show]
  before_action :authenticate_user! 
  
  
  def dashboard
    @user = current_user
  end
  
  def index
    if params[:employment_status]
      @users = User.where(employment_status: params[:employment_status]).page(params[:page]).per(15)
    elsif params[:user_type]
      @users = User.where(user_type: params[:user_type]).page(params[:page]).per(15)
    else
      @users = User.all.page(params[:page]).per(15)
    end    
  end
    
  
  def edit
  end

  
  def update
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
                                   :user_type,
                                   :e_contact_name,
                                   :e_contact_number,
                                   :employment_status,
                                   :updated_by
                                  )
  end
end