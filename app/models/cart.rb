class Cart < ApplicationRecord
  belongs_to :product
  belongs_to :user
  has_one :order_cart
  has_one :order, through: :order_cart
end
