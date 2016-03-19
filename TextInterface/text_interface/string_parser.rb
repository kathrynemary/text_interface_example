module TextInterface
  class StringParser
    def initialize(raw_string)
      @raw_string = raw_string
    end

    def result
      raise Errors::ParserError.new("Empty input given") if @raw_string.empty?
      @raw_string.to_s
    end
  end
end
