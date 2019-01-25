# ConvNumWords
Converter of numbers to English.
This gem converts integers to English words from 0 to 999999.
However, "and" between words is excluded.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'conv_num_words'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install conv_num_words

## Usage

```ruby
0.to_w
# => "zero"

10.to_w
# => "ten"

123.to_w
# => "one hundred twenty-three"

1234.to_w
# => "one thousand two hundred thirty-four"

12345.to_w
# => "twelve thousand three hundred forty-five"

123456.to_w
# => "one hundred twenty-three thousand four hundred fifty-six"

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/mistyrinth/conv_num_words. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the ConvNumWords project’s codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/[USERNAME]/conv_num_words/blob/master/CODE_OF_CONDUCT.md).