FactoryBot.define do
  factory :user do
    name { Faker::Lorem.characters(number:5) }
    email { Faker::Internet.email }
    genre_name { '医師' }
    password { 'password' }
    password_confirmation { 'password' }
  end
end