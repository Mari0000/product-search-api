FactoryBot.define do
    factory :product do
      arabic_name { Faker::Lorem.word }
      english_name { Faker::Lorem.word }
    end
  end