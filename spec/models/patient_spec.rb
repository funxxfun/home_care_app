	# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Patient, "モデルに関するテスト", type: :model do
  describe '実際に保存してみる' do
    it "有効な投稿の場合は保存されるか" do
      expect(FactoryBot.build(:patient)).to be_valid
    end
  end
  # context "空白のバリデーションチェック" do
  #   it "start_timeが空白の場合にバリデーションチェックされ空白のエラーメッセージが返ってきているか" do
  #     patient = Patient.new(name: '')
  #     expect(patient).to be_invalid
  #     expect(patient.errors[:name]).to include("can't be blank")
  #   end
  # end
end