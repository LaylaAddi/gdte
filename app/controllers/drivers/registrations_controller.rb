class Drivers::RegistrationsController < Devise::RegistrationsController
  
  
  private

  def sign_up_params
    params.require(:driver).permit(:password, 
                                   :password_confirmation,
                                   :email
                                   )
  end

  def account_update_params
    params.require(:driver).permit(:password, 
                                   :password_confirmation,
                                   :current_password,
                                   :email,
                                    driver_profiles_attibutes:[:street_address_1,
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
                                        :internal_driver_status 
                                        ]
                                        )
                              
  end
end
  
