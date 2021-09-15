class Genre < ApplicationRecord
  has_many :users, dependent: :destroy
  # validates :genre_name,presence:true
end
