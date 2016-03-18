module TextInterface
  class FloatParser
    def initialize(raw_string)
      @raw_string = raw_string
    end

    def result
      raise Errors::ParserError.new("This is not a float") unless float_string?
      @raw_string.to_f
    end

    def float_string?
      @raw_string =~ /\d+\.\d+/
    end
  end
end
