class Users::RegistrationsController < Devise::RegistrationsController
  
  
  private

  def sign_up_params
    params.require(:user).permit(:password, 
                                   :password_confirmation,
                                   :email, 
                                   :user_type, 
                                   :first_name, 
                                   :last_name,
                                   :street_address_1,
                                   :street_address_2,
                                   :city, 
                                   :state,
                                   :zip_code,                                   
                                   :homephone,
                                   :dob,
                                   :cellphone
   
                                   )
  end

  def account_update_params
    params.require(:user).permit(:password, 
                                   :password_confirmation,
                                   :current_password,
                                   :email,
                                   :street_address_1,
                                   :street_address_2,
                                   :city, 
                                   :state,
                                   :zip_code,                                   
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
                                   :officephone,
                                   :homephone,
                                   :extention,
                                   :cellphone,
                                   :office_location, 
                                   :user_type, 
                                   :first_name, 
                                   :last_name
                                  )
                              
  end
end


