class Care < ApplicationRecord

  belongs_to :user
  belongs_to :patient
  
  validates :start_time,presence:true
  validates :detail,presence:true, length: { maximum: 140 }
  

  # chartkick用データ
  # def self.chart_date
  #   pluck('start_time', 'weight').to_h
  # end
end
