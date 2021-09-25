class Care < ApplicationRecord

  belongs_to :user
  belongs_to :patient

  # chartkick用データ
  # def self.chart_date
  #   pluck('start_time', 'weight').to_h
  # end
end
