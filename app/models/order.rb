class Order < ApplicationRecord
  belongs_to :user
  has_many :order_carts, dependent: :destroy
  has_one :payment
  has_many :carts, through: :order_carts

  #enum status: [:shipped, :being_packed, :complete, :cancelled]
  
end

#Shopkeeper.select('shopkeeper.id, shopkeeper.name, rating.rate').joins(:rating).where('rating.created_at > ?',1.day.ago)
