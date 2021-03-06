# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :question do
    sequence(:title) { |i| "Question Title #{i}" }
    sequence(:body) { |i| "Body #{i}: #{Faker::Lorem.paragraph}" }
    user
  end
end

