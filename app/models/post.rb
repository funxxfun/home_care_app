class Post < ApplicationRecord

   has_one_attached :image
   belongs_to :user
   belongs_to :patient
   has_many :post_comments, dependent: :destroy
end
