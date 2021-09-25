class PostComment < ApplicationRecord
  belongs_to :user
  # belongs_to :patient
  belongs_to :post
  # has_many :favorites, dependent: :destroy
end
