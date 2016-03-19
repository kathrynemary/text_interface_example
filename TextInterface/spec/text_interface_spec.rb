require 'spec_helper'

describe TextInterface do
  describe '.store_result' do
    before do
      TextInterface.set_up
    end

    it 'adds an object to the result set' do
      expect { TextInterface.store_result('abc123') }.
        to change { TextInterface.result_set }.from([]).to(['abc123'])
    end
  end
end
