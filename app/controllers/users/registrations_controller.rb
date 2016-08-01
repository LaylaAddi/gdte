class Users::RegistrationsController < Devise::RegistrationsController
  
  
  private

  def sign_up_params
    params.require(:user).permit(:password, 
                                   :password_confirmation,
                                   :email, :role,:full_name,
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
                                   :role, 
                                   driver_profile_attributes: [:years_of_experience]
                                        )
                              
  end
end


