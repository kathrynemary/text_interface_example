module TextInterface
  class DisplayStorage

    attr_reader :storage_contents

    def initialize
      @storage_contents = []
    end

    def add(item_to_add)
      storage_contents.push(item_to_add)
    end

    def display
      storage_contents
    end

  end
end
