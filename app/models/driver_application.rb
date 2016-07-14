class DriverApplication < ApplicationRecord
  
  
   mount_uploader :license_image, ImageUploader 
   mount_uploader :social_image, ImageUploader 
   mount_uploader :medical_image, ImageUploader
   mount_uploader :green_image, ImageUploader 
end