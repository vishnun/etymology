# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :non_rootword do
    rootword "MyString"
    references "MyString"
  end
end
