class Driver < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_one :driver_profile 
  before_create :build_driver_profile
  accepts_nested_attributes_for :driver_profile 
  
  # validates_presence_of  :street_address_1,
  #                       :city, 
  #                       :state,
  #                       :zip_code,                                   
  #                       :full_name,
  #                       :telephone, on: :create
                         
  # validates_presence_of  :dob,
  #                       :city, 
  #                       :state,
  #                       :zip_code,                                   
  #                       :full_name,
  #                       :telephone,
  #                       :license_number,
  #                       :social_number, on: :update

       
         


      
end
