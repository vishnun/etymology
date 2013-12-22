require 'spec_helper'

describe Rootword do
  context 'serialization' do
    it { should serialize :usages }
  end
end
