class User < ActiveRecord::Base
  has_many :appointments
  validates :first_name, :last_name, :email, :status,presence: true

end
