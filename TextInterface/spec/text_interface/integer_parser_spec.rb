require 'spec_helper'

describe TextInterface::IntegerParser do
  it 'produces a Fixnum value from an integer string' do
    parser = TextInterface::IntegerParser.new('12345')
    expect(parser.result).to eq(12345)
  end

  it 'produces an error if fed a noninteger string' do
    parser = TextInterface::IntegerParser.new('tjeaklfjdksla')
    expect { parser.result }.to raise_error(TextInterface::Errors::ParserError)
  end

  it 'produces an error if fed a string with mixed input' do
    parser = TextInterface::IntegerParser.new('tjeak45678sla')
    expect { parser.result }.to raise_error(TextInterface::Errors::ParserError)
  end

  it 'produces an error if fed a decimal number' do
    parser = TextInterface::IntegerParser.new('3.14159')
    expect { parser.result }.to raise_error(TextInterface::Errors::ParserError)
  end

  it 'produces an error if fed empty input' do
    parser = TextInterface::IntegerParser.new('')
    expect { parser.result }.to raise_error(TextInterface::Errors::ParserError)
  end
end
