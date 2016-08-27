class Driver < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  include Dropdown 
  has_many :office_driver_comments, dependent: :destroy  

  validates :first_name, presence: true, on: :create 
  validates :last_name, presence: true, on: :create 
  validates :street_address_1, presence: true, on: :create 
  validates :cellphone, presence: true, on: :create 
  validates :city, presence: true, on: :create 
  validates :state, presence: true, on: :create 
  validates :zip_code, presence: true, on: :create 
  validates :dob, presence: true, on: :create 
  

  validates :first_name, presence: true, on: :update
  validates :last_name, presence: true, on: :update 
  validates :street_address_1, presence: true, on: :update 
  validates :cellphone, presence: true, on: :update 
  validates :city, presence: true, on: :update 
  validates :state, presence: true, on: :update 
  validates :zip_code, presence: true, on: :update 
  validates :dob, presence: true, on: :update 
  validates :years_of_experience, presence: true, on: :update
  validates :license_number, presence: true, on: :update
  validates :social_number, presence: true, on: :update
  
  validates :years_of_experience, presence: false, on: :update, if: :office_present?
  validates :license_number, presence: false, on: :update, if: :office_present?
  validates :social_number, presence: false, on: :update, if: :office_present?
  
  def office_present?
    current_user == user.office?
  end

  
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

