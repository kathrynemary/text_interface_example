module TextInterface
  class InputCommand
    INPUT_PROMPT = "Please enter in the thing: "

    def self.perform
      display_input_prompt
      TextInterface.get_user_input
    end

    def self.display_input_prompt
      print INPUT_PROMPT
    end
  end
end
