class Patient < ApplicationRecord
  has_many :posts, dependent: :destroy
  has_many :cares, dependent: :destroy
  has_many :post_comments, dependent: :destroy
  has_many :favorites, dependent: :destroy
  has_many :topics, dependent: :destroy
  has_many :topic_comments, dependent: :destroy
  has_many :topic_favorites, dependent: :destroy
  enum gender: { 男性: 1, 女性: 2 }
  enum care_level: { 要支援１: 1, 要支援２: 2, 要介護Ⅰ: 3, 要介護Ⅱ: 4, 要介護Ⅲ: 5, 要介護Ⅳ: 6, 要介護Ⅴ: 7 }

  validates :name,presence:true
  validates :number,presence:true

  def self.search(search)
    if search
      Patient.where(['name LIKE ?', "#{search}"])
    else
      Patient.all
    end
  end

end
