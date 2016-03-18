require 'spec_helper'

describe TextInterface::StringParser do
  it 'returns the original, unaltered string' do
    parser = TextInterface::StringParser.new('abc123')
    expect(parser.result).to eq('abc123')
  end

  it 'does not return anything if you do not put anything in' do
    parser = TextInterface::StringParser.new('')
    expect { parser.result }.to raise_error(TextInterface::Errors::ParserError)
  end 
end
