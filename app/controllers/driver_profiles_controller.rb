# class DriverProfilesController < ApplicationController
  
#   def new
#     @driver_profile = current_driver.driver_profile.new
#   end
  
#   def create
#       @driver_profile = current_driver.profile.new profile_params
#       if @driver_profile.save
#         redirect_to driver_path(params[:id]), notice: "Profile Created!"
#       else
#         render action: :new 
#       end
#   end
  
#   private
  
#   def profile_params 
#     params.require(:driver_profile).permit(
#                                             :street_address_1,
#                                             :street_address_2,
#                                             :city, 
#                                             :state,
#                                             :zip_code,                                   
#                                             :full_name,
#                                             :telephone,
#                                             :license_number,
#                                             :license_image,
#                                             :social_number,
#                                             :social_image,
#                                             :medical_image,
#                                             :years_of_experience,
#                                             :info,
#                                             :hazmat,         
#                                             :dryvan,
#                                             :reefer,
#                                             :flatbed,
#                                             :dob,
#                                             :pdf,
#                                             :internal_driver_status       
#                                             )
#   end
# end