module TextInterface
  class Storage
    attr_reader :result_set

    def initialize
      @result_set = []
    end

    def add(new_result)
      result_set.push(new_result)
    end
  end
end
