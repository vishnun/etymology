require 'spec_helper'

describe AdminController do

    admin = FactoryGirl.create(:admin)
    before(:each) do
        authenticate(admin)
    end

    after(:each) do
        sign_out admin
    end

    context '#index' do
        it 'should render all rootwords and non-rootwords' do
            one_rootword = FactoryGirl.create(:rootword, word: 'word 1', meaning: 'meaning 1', usages: 'usage 1')
            rootwords = [one_rootword,
                         FactoryGirl.create(:rootword, word: 'word 2', meaning: 'meaning 2', usages: 'usage 2'),
                         FactoryGirl.create(:rootword, word: 'word 3', meaning: 'meaning 3', usages: 'usage 3')]

            non_rootwords = [FactoryGirl.create(:non_rootword, word: 'word 1', meaning: 'meaning 1', usages: 'usage 1', rootword: one_rootword),
                             FactoryGirl.create(:non_rootword, word: 'word 2', meaning: 'meaning 2', usages: 'usage 2', rootword: one_rootword),
                             FactoryGirl.create(:non_rootword, word: 'word 3', meaning: 'meaning 3', usages: 'usage 3', rootword: one_rootword)]

            get :index

            expect(assigns(:rootwords)).to eq(rootwords)
            expect(assigns(:non_rootwords)).to eq(non_rootwords)
            expect(response).to render_template('index')
        end
    end
end