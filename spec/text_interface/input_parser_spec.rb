require 'spec_helper'

describe TextInterface::MenuInputParser do
  it "returns a :integer for an input of the String '1'" do
    parser = TextInterface::MenuInputParser.new('1')
    expect(parser.result).to eq(:integer)
  end

  it "returns a :float for an input of the String '2'" do
    parser = TextInterface::MenuInputParser.new('2')
    expect(parser.result).to eq(:float)
  end
  
  it "returns a :string of 3 for an input of the String '3'" do
    parser = TextInterface::MenuInputParser.new('3')
    expect(parser.result).to eq(:string)
  end

  it "returns an error for an non-numeric response" do
    parser = TextInterface::MenuInputParser.new('p')
    expect { parser.result }.to raise_error(TextInterface::Errors::ParserError)
  end

  it "returns an error for a numeric choice that is out of bounds" do
    parser = TextInterface::MenuInputParser.new('5')
    expect { parser.result }.to raise_error(TextInterface::Errors::ParserError)
  end
end
