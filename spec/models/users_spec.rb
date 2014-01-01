require 'spec_helper'

describe Users do
    context 'validations' do
        it { should validate_uniqueness_of(:email) }
    end
end
