require 'spec_helper'

describe TextInterface::DisplayStorage do
  it 'does not display anything if storage is empty' do
    example = TextInterface::DisplayStorage.new
    expect(example.storage_contents).to be_empty 
  end

  it 'displays the results when it contains something' do
    example = TextInterface::DisplayStorage.new
    example.add('string of text') 
    expect(example.display).to eq(['string of text'])
  end

  it 'displays the results of two additions' do
    example = TextInterface::DisplayStorage.new
    example.add('string of text') 
    example.add('another string of text')
    expect(example.display).to eq(['string of text', 'another string of text']) 
  end
  
  it 'displays additions of integers and floats' do
    example = TextInterface::DisplayStorage.new
    example.add(11) 
    example.add(3.141)
    expect(example.display).to eq([11, 3.141])
  end

end
 
