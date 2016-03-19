require 'spec_helper'

describe TextInterface::FloatParser do
  it 'produces a float value from a float string' do
    parser = TextInterface::FloatParser.new('3.140')
    expect(parser.result).to eq(3.140)
  end

  it 'produces an error when fed a text string' do
    parser = TextInterface::FloatParser.new('dsakjlhgkjfdghhga')
    expect { parser.result }.to raise_error(TextInterface::Errors::ParserError)
  end

  it 'produces an error when fed an integer' do
    parser = TextInterface::FloatParser.new('44')
    expect { parser.result }.to raise_error(TextInterface::Errors::ParserError)
  end

  it 'produces an error when fed a mixed input string' do
    parser = TextInterface::FloatParser.new('44.abc')
    expect { parser.result }.to raise_error(TextInterface::Errors::ParserError)
  end

  it 'produces an error if fed empty input' do
    parser = TextInterface::FloatParser.new('')
    expect { parser.result }.to raise_error(TextInterface::Errors::ParserError)
  end
end
