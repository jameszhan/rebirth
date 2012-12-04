# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :user do
    sequence(:name) {|n|"user-#{n}"}
    email           {|u|"#{u.name}@example.com"}
    password        "secret"
    admin           false

    factory :admin do
      admin true
    end

  end
end