require 'spec_helper'

describe HomeController do

    context '#index' do

        it 'should render all rootwords and non-rootwords' do
            one_rootword = FactoryGirl.create(:rootword, word: 'word 1', meaning: 'meaning 1', usages: 'usage 1')

            non_rootwords = [FactoryGirl.create(:non_rootword, word: 'word 1', meaning: 'meaning 1', usages: 'usage 1', rootword: one_rootword),
                             FactoryGirl.create(:non_rootword, word: 'word 2', meaning: 'meaning 2', usages: 'usage 2', rootword: one_rootword),
                             FactoryGirl.create(:non_rootword, word: 'word 3', meaning: 'meaning 3', usages: 'usage 3', rootword: one_rootword)]

            get :index

            expect(assigns(:non_rootwords)).to eq(non_rootwords)
            expect(response).to render_template('index')
        end

    end

    context '#interested_user' do

        it 'should save email of interested user and be taken to a thank you page' do

            post :interested_user, user: { email: 'abc@mailinator.com' }

            expect(Users).to have(1).user
            expect(response).to render_template('thank_you')
        end

    end

    context "#landing_page" do
        it 'should render the landing page' do
            get :landing_page

            expect(response).to render_template('landing_page')
        end
    end

end