[![Gem Version](https://badge.fury.io/rb/stop_watch.svg)](http://badge.fury.io/rb/stop_watch)
[![Code Climate](https://codeclimate.com/github/danielpclark/stop_watch/badges/gpa.svg)](https://codeclimate.com/github/danielpclark/stop_watch)
[![Build Status](https://travis-ci.org/danielpclark/stop_watch.svg)](https://travis-ci.org/danielpclark/stop_watch)
[![Inline docs](http://inch-ci.org/github/danielpclark/stop_watch.svg?branch=master)](http://inch-ci.org/github/danielpclark/stop_watch)
[![SayThanks.io](https://img.shields.io/badge/SayThanks.io-%E2%98%BC-1EAEDB.svg)](https://saythanks.io/to/danielpclark)

# StopWatch

A stopwatch timer where you hit `mark` to start the timer and continue to hit `mark` to mark times.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'stop_watch'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install stop_watch

## Usage

```ruby
require 'stop_watch'

watch = StopWatch::Timer.new

watch.mark
# => 2017-02-24 18:03:43 -0500

watch.time?
# => false

watch.mark
# => [44.973787791]

watch.time?
# => true

watch.mark
# => [44.973787791, 6.39862104]

watch.mark
# => [44.973787791, 6.39862104, 4.238468485]

watch.h # human total time
# => "00:00:55"

watch.ha # human average
# => "18.54 second average"

watch.times
# => [44.973787791, 6.39862104, 4.238468485]
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake test` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/danielpclark/stop_watch.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).


