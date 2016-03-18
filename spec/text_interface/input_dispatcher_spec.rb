require 'spec_helper'

describe TextInterface::InputDispatcher do
  context "when given a choice of :integer and '12345'" do
    it "stores the Fixnum value 12345" do
      allow(TextInterface).to receive(:store_result)
      dispatcher = TextInterface::InputDispatcher.new(:integer, '12345')
      dispatcher.perform

      expect(TextInterface).to have_received(:store_result).with(12345)
    end
  end
  
  context "when given a choice of :integer and '783'" do
    it "stores the Fixnum value 783" do
      allow(TextInterface).to receive(:store_result)
      dispatcher = TextInterface::InputDispatcher.new(:integer, '783')
      dispatcher.perform

      expect(TextInterface).to have_received(:store_result).with(783)
    end
  end
  
  context "when given a choice of :float and '1234.5'" do
    it "stores the Float value 1234.5" do
      allow(TextInterface).to receive(:store_result)
      dispatcher = TextInterface::InputDispatcher.new(:float, '1234.5')
      dispatcher.perform

      expect(TextInterface).to have_received(:store_result).with(1234.5)
    end
  end

  context "when given a choice of :float and '783.29'" do
    it "stores the Float value 783.29" do
      allow(TextInterface).to receive(:store_result)
      dispatcher = TextInterface::InputDispatcher.new(:float, '783.29')
      dispatcher.perform

      expect(TextInterface).to have_received(:store_result).with(783.29)
    end
  end

  context "when given a choice of :string and 'abcdef'" do
    it "stores the String value 'abcdef'" do
      allow(TextInterface).to receive(:store_result)
      dispatcher = TextInterface::InputDispatcher.new(:string, 'abcdef')
      dispatcher.perform

      expect(TextInterface).to have_received(:store_result).with('abcdef')
    end
  end

  context "when given a choice of :string and ''" do
    it "stores the String value ''" do
      allow(TextInterface).to receive(:store_result)
      dispatcher = TextInterface::InputDispatcher.new(:string, '') 

      expect { dispatcher.perform }.
        to raise_error(TextInterface::Errors::ParserError)
    end
  end
end
