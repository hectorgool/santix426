FactoryGirl.define do
  factory :user do
    sequence(:email) { |n| "santo#{n}@santo.com" }
    password "password"
  end
end
