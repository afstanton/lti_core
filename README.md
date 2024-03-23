# LtiCore

## Installation

Install the gem and add to the application's Gemfile by executing:

    $ bundle add lti_core

If bundler is not being used to manage dependencies, install the gem by executing:

    $ gem install lti_core

## Usage

This gem is to implement as much as possible of the [LTI Core 1.3](https://www.imsglobal.org/spec/lti/v1p3/). This should make implementing an application that complies with that very simple to do.

For those of you using Rails, you'll want to use [lti_core_rails](https://github.com/afstanton/lti_core_rails). The intent of that is to be a drop-in Rails engine to make building a LTI Core 1.3 application dead simple.

The need for this project stems from the [ims-lti](https://github.com/instructure/ims-lti) gem. While that is a decent starting point, it does not appear to implement the latest standards. This is a fresh implementation which will allow developers to use some or all relevant standards as needed.

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and the created tag, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/afstanton/lti_core.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
