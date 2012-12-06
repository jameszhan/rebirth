# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :answer do
    sequence(:body) { |i| "Body #{i}: #{Faker::Lorem.paragraph}" }
    question 
    user
  end
end
