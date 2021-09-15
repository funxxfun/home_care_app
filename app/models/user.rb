class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  
  # belongs_to :genre
  has_many :cares, dependent: :destroy
  
  # validates :genre_id,presence:true
  # validates :name,presence:true
 
         
  enum genre_name: { 利用者様: 0, ご家族様: 1, 医師: 2, ケアマネ: 3, 薬剤師: 4 }
  
  
end
