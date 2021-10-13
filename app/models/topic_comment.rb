class TopicComment < ApplicationRecord
  has_one_attached :image
  belongs_to :user
  belongs_to :topic
  # has_many :topic_favorites, dependent: :destroy
  validates :comment,presence:true, length: { maximum: 140 }
end
