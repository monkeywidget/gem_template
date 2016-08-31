require 'simplecov'

SimpleCov.start do
  coverage_dir 'tmp/coverage/unit'
  add_filter 'tmp/'
  add_filter 'spec/'
end

require 'foo'
require_relative 'support/util_shared'
require_relative 'support/fatal_error'

# set AWS SDK into test mode
# Aws.config[:stub_responses] = true

RSpec.configure do |config|
  # Only accept expect syntax do not allow old should syntax
  config.expect_with :rspec do |c|
    c.syntax = :expect
  end
end

minimum_acceptable_coverage = 66 # set this % to your desired level of coverage
SimpleCov.at_exit do
  SimpleCov.result.format!
  if SimpleCov.result.covered_percent < minimum_acceptable_coverage
    LOG.fatal('not enough code coverage!')
    exit(1)
  end
end
