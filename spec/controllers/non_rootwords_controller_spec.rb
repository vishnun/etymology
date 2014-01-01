require 'spec_helper'

describe NonRootwordsController do

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
            rootword = FactoryGirl.create(:rootword)

            post :create, non_root_word: { word: 'Word', meaning: 'Meaning', id: rootword.id, usages: 'usages' }

            expect(NonRootword).to have(1).non_rootword
            expect(NonRootword.first.word).to eq 'Word'
            expect(NonRootword.first.rootword).to eq rootword
        end
    end

    context '#index' do
        it 'should return json of all the non_rootwords' do
            get :index

            expect(response.body).to eq(NonRootword.all.to_json)
        end
    end
end