class User < ApplicationRecord
  enum type: {registered: 0, dispatcher: 1, office: 2, admin: 3}
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  validates_presence_of :full_name
end
