# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'foo/version'

Gem::Specification.new do |spec|
  spec.name          = 'foo'
  spec.version       = Foo::VERSION
  spec.authors       = ['monkeywidget']
  spec.email         = ['monkeywidget@users.noreply.github.com']

  spec.summary       = 'The smallest possible gem with tests'
  spec.description   = 'The smallest possible gem with tests'
  spec.homepage      = 'https://github.com/'

  spec.required_ruby_version = '>= 2.0.0'
  spec.license       = 'MIT'

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = 'TODO: Set to http://mygemserver.com'
  else
    fail('RubyGems 2.0 or newer is required to protect against public gem pushes.')
  end

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(/^(test|spec|features)\//) }
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(/^exe\//) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler', '~> 1.12'
  spec.add_development_dependency 'rake', '~> 10.0'

  spec.add_development_dependency('rspec', '~> 3.2.0')
  spec.add_development_dependency('rubocop', '~> 0.26.1')
  spec.add_development_dependency('simplecov', '~> 0.7')
  spec.add_development_dependency('rubycritic', '>= 2.9')

  spec.add_development_dependency('yard', '~> 0.8')

  spec.add_runtime_dependency('thor', '~> 0.19')
  spec.add_runtime_dependency('activesupport')
end
