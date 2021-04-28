class Login < ApplicationRecord
  validates :username, presence: true, uniqueness: true, formate: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i}

end
