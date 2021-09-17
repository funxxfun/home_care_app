class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :cares, dependent: :destroy
  # has_many :posts, dependent: :destroy

  # validates :name,presence:true

  enum genre_name: { 利用者様: 0, 医師: 1, 看護師: 2, 薬剤師: 3, リハビリ: 4, 介護士: 5, ケアマネ: 6 }


end
