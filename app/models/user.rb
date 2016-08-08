class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  include Dropdown        
  validates_presence_of :first_name, :last_name 
  has_many :office_driver_comments, dependent: :destroy
            

  
  def model_user_status
    if
      self.registered == true && self.registered.present?
      return "Registered"
    elsif
      self.office == true && self.office.present?
      return "Office"
    elsif
      self.dispatcher == true && self.dispatcher.present?
      return "Dispatcher"  
    else
      self.inactive == true && self.inactive.present?
      return "Inactive User"      
    end
  end  
  
 
  
end
