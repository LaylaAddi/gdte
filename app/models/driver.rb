class Driver < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  include Dropdown 
  has_many :office_driver_comments, dependent: :destroy
  # validates_presence_of :first_name, :last_name, :cellphone, :street_address_1,
  # :city, :state, :zip_code, :dob

  mount_uploader :license_image, ImageUploader 
  mount_uploader :social_image, ImageUploader 
  mount_uploader :medical_image, ImageUploader
  mount_uploader :green_image, ImageUploader 
  mount_uploader :pdf, ImageUploader 

  


  def hazmat_model    
    if self.hazmat == "true"
      return "Yes"
    else
      return "No"
    end
  end
  
  def hazmat_model    
    if self.hazmat == true
      return "Yes"
    else
      return "No"
    end
  end
    
  def dryvan_model    
    if self.dryvan == true
      return "Yes"
    else
      return "No"
    end
  end
  
  def reefer_model    
    if self.reefer == true
      return "Yes"
    else
      return "No"
    end
  end
  
  def flatbed_model    
    if self.flatbed == true
      return "Yes"
    else
      return "No"
    end
  end  
  

  

    
  
  
end            

