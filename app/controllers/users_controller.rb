class UsersController < ApplicationController
  before_action :authenticate_user!
  before_action :set_user_id, except: [:dashboard]
 
  def dashboard
    @user = current_user
  end
  
  def edit
    
  end
  
  def update
    if params[:user][:password].blank?
      params[:user].delete(:password)
      params[:user].delete(:password_confirmation)
    end
    
    if @user.update!(user_account_update_params)
      flash[:success] = "The user was updated"
      redirect_to @user
    else
      flash[:error] = "There was a problem" 
      render :edit  
    end

  
  private
  
  def set_user_id
    @user = User.find(params[:id])
  end
  
  def user_params
    params.require(:user).permit(:email,
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
                                   :extention,
                                   :cellphone,
                                   :office_location, 
                                   :user_type
                                  )
  end
end