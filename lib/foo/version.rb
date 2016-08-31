module Foo
  require 'yaml'
  contents = File.read(File.join(File.dirname(__FILE__), '..', '..', '.semver'))
  parsed = YAML.parse(contents).to_ruby
  special = parsed[:special].empty? ? '' : ".#{parsed[:special]}"

  # dynamically determine the version, from .semver
  VERSION = "#{parsed[:major]}.#{parsed[:minor]}.#{parsed[:patch]}#{special}"
end
