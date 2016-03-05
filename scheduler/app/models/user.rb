class User < ActiveRecord::Base
  has_secure_password
  has_many :appointments
  validates :first_name, :last_name, :email, :status,presence: true
  validates_confirmation_of :password

end
