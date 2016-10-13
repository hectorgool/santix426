FactoryGirl.define do
  factory :user do
    
    sequence(:email) { |n| "user#{n}@email.com" } #santo
    password "password"
    firstname "Firstname" #santo
    lastname "Lastname"  #santo

    trait :admin do
      admin true
    end

  end
end
