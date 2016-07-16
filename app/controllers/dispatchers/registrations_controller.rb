class Dispatchers::RegistrationsController < Devise::RegistrationsController
  
  
  private

  def sign_up_params
    params.require(:dispatcher).permit(:username,
                                       :office,
                                       :telephone,
                                       :extention, 
                                       :password, 
                                       :password_confirmation,
                                       :email
                                       )
  end

  def account_update_params
    params.require(:dispatcher).permit(:username,
                                       :office,
                                       :telephone,
                                       :extention, 
                                       :password,
                                       :current_password,
                                       :password_confirmation,
                                       :email 
                                       )
  end
end
  
