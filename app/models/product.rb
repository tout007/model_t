class Product < ApplicationRecord
  belongs_to :category
  has_many :carts
  has_many :ratings, as: :ratingable
  has_many :comments, as: :commentable

  #scope :minors, -> {where(quantity_in_stock 10..50)}
  scope :actived, -> (id) { where(active: true) } 

  def self.actived(id)   
    where(active: true)
  end
end

# Product.where(active: true)
# Product.actived(1)