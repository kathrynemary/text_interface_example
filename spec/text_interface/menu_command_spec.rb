require 'spec_helper'

describe TextInterface::MenuCommand do
  before do
    allow(TextInterface).to receive(:get_user_input) { 'some text' }
  end

  it 'prints the menu text' do
    expected_menu = TextInterface::MenuCommand::MENU_TEXT
    expect { TextInterface::MenuCommand.perform }.to output(expected_menu).to_stdout
  end
  
  it 'ask the user for command line input' do
    allow(TextInterface::MenuCommand).to receive(:display_menu_text)
    TextInterface::MenuCommand.perform
    expect(TextInterface).to have_received(:get_user_input)
  end

  it 'returns the string of text the user entered' do
    allow(TextInterface::MenuCommand).to receive(:display_menu_text)
    expect(TextInterface::MenuCommand.perform).to eq('some text')
  end
end
