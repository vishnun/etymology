require 'spec_helper'

describe RootwordsController do

    context '#create' do
        admin = FactoryGirl.create(:admin)

        before(:each) do
            authenticate(admin)
        end

        after(:each) do
            sign_out admin
            Admin.delete_all
        end

        it 'should create a new non_rootword with the given params' do
            post :create, root_word: { word: 'Word', meaning: 'Meaning', usages: 'usages' }

            expect(Rootword).to have(1).rootword
            expect(Rootword.first.word).to eq 'Word'
        end
    end
end