module TextInterface
  class IntegerParser
    def initialize(raw_string)
      @raw_string = raw_string
    end

    def result
      raise Errors::ParserError.new("Not an integer string") unless integer_string?
      @raw_string.to_i
    end

    private

    def integer_string?
      @raw_string.match(/\A\d+\z/)
    end
  end
end
