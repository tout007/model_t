class AddReferenceUserToRatingAndComment < ActiveRecord::Migration[6.1]
  def change
    add_reference :comments, :user,  foreign_key: true
    add_reference :ratings, :user,  foreign_key: true
  end
end
