require 'thor'
require 'active_support/concern'
# require 'English'

require_relative 'concerns/bar_decorator'

module Foo
  # Basic CLI for Foo, with decorators
  class FooCLI < Thor
    check_unknown_options!

    # Note: the order of these dictates their order in "usage" messages
    include Foo::BarDecorator

    # makes exit code of "1" to be set when the CLI fails
    def self.exit_on_failure?
      true
    end

    desc 'version', 'Show foo version'.freeze

    # print the dynamically generated version from .semver
    # @note the only method to not require the 3 path parameters
    def version
      puts "foo #{Foo::VERSION}"
    end
  end
end
