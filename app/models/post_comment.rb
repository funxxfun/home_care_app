class PostComment < ApplicationRecord
  
  belongs_to :user
  belongs_to :patient
  belongs_to :post
  
end
