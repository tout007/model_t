class Order < ApplicationRecord
  belongs_to :user
  has_many :order_carts, dependent: :destroy
  has_one :payment
  has_many :carts, through: :order_carts
  
end
