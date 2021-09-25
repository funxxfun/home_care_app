class User < ApplicationRecord

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :cares, dependent: :destroy
  has_many :posts, dependent: :destroy
  has_many :post_comments, dependent: :destroy
  has_many :favorites, dependent: :destroy
  # validates :name,presence:true
  enum genre_name: { 利用者様: 0, 医師: 1, 看護師: 2, 薬剤師: 3, リハビリ: 4, ヘルパー: 5, ケアマネ: 6 }
end
