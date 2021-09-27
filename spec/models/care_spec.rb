	# frozen_string_literal: true

# require 'rails_helper'

# RSpec.describe Care, "モデルに関するテスト", type: :model do
#   describe '実際に保存してみる' do
#     it "有効な投稿の場合は保存されるか" do
#       expect(FactoryBot.build(:care)).to be_valid
#     end
#   end
#   context "空白のバリデーションチェック" do
#     it "start_timeが空白の場合にバリデーションチェックされ空白のエラーメッセージが返ってきているか" do
#       care = Care.new(start_time: '')
#       expect(care).to be_invalid
#       expect(care.errors[:start_time]).to include("can't be blank")
#     end
#   end
# end
