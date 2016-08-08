class Users::RegistrationsController < Devise::RegistrationsController
  
  
  private

  def sign_up_params
    params.require(:user).permit(:password, 
                                   :password_confirmation,
                                   :email, 
                                   :first_name, 
                                   :last_name,
                                   :street_address_1,
                                   :street_address_2,
                                   :city, 
                                   :state,
                                   :zip_code,                                   
                                   :office_phone,
                                   :dob,
                                   :cellphone,
                                   :registered
   
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
                                   :office_phone,
                                   :dob,
                                   :extention,
                                   :cellphone,
                                   :office_location, 
                                   :user_type, 
                                   :first_name, 
                                   :last_name,
                                   :e_contact_name,
                                   :e_contact_number,
                                   :updated_by,
                                   :dispatcher,
                                   :registered,
                                   :office,
                                   :inactive
                                  )
                              
  end
end


