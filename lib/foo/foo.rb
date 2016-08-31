module Foo
  # The foo class!
  class Foo
    # Makes a Foo
    def initialize
      @garply = true
    end

    attr_reader :garply

    # @return [String] hello
    def say_hello
      'hello'
    end
  end
end
