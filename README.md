The Foo Gem
===========

Tools Dependencies
------------------

- thor
- semver
- [YARD](http://yardoc.org/)
- rspec
- rubocop
- rubycritic
  - flay
  - flog
  - reek
  - complexity
  - attributes
  - churn

# Developing

## Build and deploy your gem

    $ gem build splunk_freezer.gemspec

...creates a file called `foo-X.X.X.gem` where `X.X.X` is the version

### Uploading

Could be done in many ways. For example:

    $ gem nexus foo-*.gem

...uploads your gem to the Nexus repo, whatever it is set to!

## Rake

See what rake commands are available

    $ bundle exec rake -T

<a name="generate-doc"></a>
## Generate docs

    $ bundle exec yard

- Learn about what formats YARD supports at [yardoc.org](http://www.yardoc.org/)

To see the undocumented methods use

    $ bundle exec yard --list-undoc

<a name="run-tests"></a>
## Run tests

### `rspec` for unit tests

    $ bundle exec rspec

The results will be under `tmp/coverage` as created with `SimpleCov`

### `rubocop` and `reek` for formatting
To help with code formatting, this project supports `rubocop` and `reek`

    $ bundle exec rubocop
    $ bundle exec reek

### `rubycritic` for Code Analysis graphs

    $ bundle exec rubycritic lib

- generates some nifty HTML-formatted charts
- which open automatically in a browser!
- this command excludes tests

This project uses `[rubycritic](https://github.com/whitesmith/rubycritic)`, which is a combination of:
- `reek` (as above)
- `flay`
- `flog`

#### running flog by itself

...is a little nonintuitive

    $ find lib -name \*.rb | xargs bundle exec flog

<a name="contributing"></a>
## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
