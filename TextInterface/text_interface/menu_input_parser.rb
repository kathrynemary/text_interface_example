module TextInterface
  class MenuInputParser
    CHOICES = {
      1 => :string,
      2 => :integer,
      3 => :float
    }

    def self.result(user_input)
      new(user_input).result
    end
  
    def initialize(user_input)
      @user_input = user_input
    end

    def result
      raise Errors::ParserError.new("Invalid choice") unless valid_choice?
      CHOICES[@user_input.to_i]
    end

    private

    def valid_choice?
      @user_input.match(/1|2|3/)
    end
  end
end

