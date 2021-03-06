class Post < ApplicationRecord
  has_one_attached :image
  belongs_to :user
  belongs_to :patient
  has_many :post_comments, dependent: :destroy
  has_many :favorites, dependent: :destroy

  validates :content,presence:true, length: { maximum: 140 }

  def favorited_by?(user)
    favorites.where(user_id: user.id).exists?
  end
end
