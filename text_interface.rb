require_relative 'text_interface/errors'
require_relative 'text_interface/integer_parser'
require_relative 'text_interface/float_parser'
require_relative 'text_interface/string_parser'
require_relative 'text_interface/storage'
require_relative 'text_interface/menu_command'
require_relative 'text_interface/menu_input_parser'
require_relative 'text_interface/input_dispatcher'
require_relative 'text_interface/input_command'

module TextInterface
  def self.set_up
    @storage = Storage.new
  end

  def self.run
    menu_selection = MenuCommand.perform
    selected_type = MenuInputParser.result(menu_selection)
    user_input = InputCommand.perform
    InputDispatcher.perform(selected_type, user_input)
    puts @storage.result_set
    # pass parsed choice to dispatcher
    # loop
  end

  def self.get_user_input
    gets.chomp
  end

  def self.result_set
    @storage.result_set
  end

  def self.store_result(parsed_data)
    @storage.add(parsed_data)
  end
end
