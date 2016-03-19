require 'spec_helper'

describe TextInterface::Storage do
  it 'starts with an empty result set' do
    storage = TextInterface::Storage.new
    expect(storage.result_set).to be_empty
  end

  it 'returns a nonempty result set when fed a result' do
    storage = TextInterface::Storage.new
    storage.add('this is some data')
    expect(storage.result_set).to eq(['this is some data'])
  end

  it 'accumulates multiple results, in the order given' do
    storage = TextInterface::Storage.new
    storage.add('result1')
    storage.add('result2')
    storage.add('result3')
    expected_set = ['result1', 'result2', 'result3']

    expect(storage.result_set).to eq(expected_set)
  end
end
