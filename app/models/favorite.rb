class Favorite < ApplicationRecord
  
  belongs_to :user
  belongs_to :patient
  belongs_to :post
  # belongs_to :post_comment
end
