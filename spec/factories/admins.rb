# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
    factory :admin do
        sequence(:email) { |n| "user_#{n}@example.com" }
        password 'password'
        password_confirmation 'password'
    end
end
