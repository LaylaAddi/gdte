class Drivers::RegistrationsController < Devise::RegistrationsController
  
  
  private

  def sign_up_params
    params.require(:driver).permit(:password, 
                                   :password_confirmation,
                                   :email,
                                   :street_address_1,
                                   :street_address_2,
                                   :city, 
                                   :state,
                                   :zip_code,                                   
                                   :full_name,
                                   :telephone,
                                   :cellphone,
                                   :first_name,
                                   :last_name, 
                                   :dob 
                                   )
  end

  def account_update_params
    params.require(:driver).permit(:password, 
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
                                   :employment_status,
                                   :first_name,
                                   :last_name,
                                   :e_contact_name,
                                   :e_contact_number,
                                   :driver_declined,
                                   :cellphone
                                  )
                              
  end
end
  
