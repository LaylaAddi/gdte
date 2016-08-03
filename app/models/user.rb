class User < ApplicationRecord
  enum user_type: {registered: 0, dispatcher: 1, office: 2, admin: 3}
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  validates_presence_of :full_name
  
  
  def registered
    self.user_type == "registered" 
  end
  
  def dispatcher
    self.user_type == "dispatcher"
  end
  
  def office
    self.user_type == "office"
  end  
  
  def admin
    self.user_type == "admin"
  end    
  
end
