FactoryBot.define do
  factory :patient do
    name { Faker::Lorem.characters(number:5) }
    number { Faker::Lorem.characters(number:5) }
  end
end