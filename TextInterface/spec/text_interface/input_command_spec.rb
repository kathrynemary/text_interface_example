require 'spec_helper'

describe TextInterface::InputCommand do
  before do
    allow(TextInterface).to receive(:get_user_input) { 'some text' }
  end

  it 'prints the menu text' do
    expected_menu = TextInterface::InputCommand::INPUT_PROMPT
    expect { TextInterface::InputCommand.perform }.to output(expected_menu).to_stdout
  end
  
  it 'ask the user for command line input' do
    allow(TextInterface::InputCommand).to receive(:display_input_prompt)
    TextInterface::InputCommand.perform
    expect(TextInterface).to have_received(:get_user_input)
  end

  it 'returns the string of text the user entered' do
    allow(TextInterface::InputCommand).to receive(:display_input_prompt)
    expect(TextInterface::InputCommand.perform).to eq('some text')
  end
end
