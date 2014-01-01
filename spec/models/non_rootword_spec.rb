require 'spec_helper'

describe NonRootword do
    context 'validations and serializations' do
        it { should validate_uniqueness_of(:word) }
        it { should validate_presence_of(:word) }
        it { should serialize(:usages) }
        it { should serialize(:meaning) }
    end

    context 'associations' do
        it { should belong_to(:rootword) }
    end
end
