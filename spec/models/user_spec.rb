	# frozen_string_literal: true

require 'rails_helper'

RSpec.describe User, "モデルに関するテスト", type: :model do
  describe '実際に保存してみる' do
    it "有効な登録の場合は保存されるか" do
      expect(FactoryBot.build(:user)).to be_valid
    end
  end
  # context "空白のバリデーションチェック" do
  #   it "nameが空白の場合にバリデーションチェックされ空白のエラーメッセージが返ってきているか" do
  #     user = User.new(name: '山田花子')
  #     expect(user).to be_invalid
  #     expect(user.errors[:name]).to include("can't be blank")
  #   end
  # end
end
