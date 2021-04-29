class Login < ApplicationRecord
  
  #has_secure_password
  
  has_many :registrations

  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i

  validates :username, presence: true, uniqueness: true, format: { with: VALID_EMAIL_REGEX}

  validates :password, presence: true, length: {minimum: 6} 

  def authenticate(param_password)
    password == param_password
  end  
  
end
