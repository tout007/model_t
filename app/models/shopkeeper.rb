class Shopkeeper < ApplicationRecord
  has_many :products
  has_many :ratings, as: :ratingable
  has_many :comments, as: :commentable
end
