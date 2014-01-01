require 'spec_helper'

describe NonRootwordsController do

    context '#create' do
        admin = FactoryGirl.create(:admin)

        before(:each) do
            authenticate(admin)
        end

        after(:each) do
            sign_out admin
        end

        it 'should render all rootwords and non-rootwords' do
            pending 'Will get back to this one'
        end
    end
end