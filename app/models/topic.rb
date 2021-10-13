class Topic < ApplicationRecord
  has_one_attached :image
  belongs_to :user
  belongs_to :patient
  has_many :topic_comments, dependent: :destroy
  has_many :topic_favorites, dependent: :destroy

  validates :content,presence:true, length: { maximum: 140 }
end
