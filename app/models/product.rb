class Product < ApplicationRecord
  belongs_to :category
  has_many :carts
  has_many :ratings, as: :ratingable
  has_many :comments, as: :commentable
end
