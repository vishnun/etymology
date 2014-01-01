# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
    factory :non_rootword do
        rootword { FactoryGirl.build(:rootword) }
        word 'word'
        meaning 'meaning'
        usages 'usage1, usage2'
    end
end
