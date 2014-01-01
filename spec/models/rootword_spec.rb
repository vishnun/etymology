require 'spec_helper'

describe Rootword do
    context 'serialization & validation' do
        it { should serialize :usages }
        it { should validate_uniqueness_of(:word) }
        it { should validate_presence_of(:word) }
    end

    context 'associations' do
        it { should have_many(:non_rootwords) }
    end
end
