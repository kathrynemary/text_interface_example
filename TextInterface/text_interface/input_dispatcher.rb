module TextInterface
  class InputDispatcher
    PARSERS = {
      integer: IntegerParser,
      float: FloatParser,
      string: StringParser
    }

    def self.perform(parser_type, user_input)
      new(parser_type, user_input).perform
    end
  
    def initialize(parser_type, user_input)
      @parser_type = parser_type
      @user_input = user_input
    end
    
    def perform
      parser = PARSERS.fetch(@parser_type).new(@user_input)
      TextInterface.store_result(parser.result)
    end
  end
end
