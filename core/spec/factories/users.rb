# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :user do
    sequence(:email) {|n|"user-#{n}@example.com"}
    password        "secret"
#    admin           false

#    factory :admin do
#      admin true
#    end

  end
end

