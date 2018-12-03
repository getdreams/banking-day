# BankingDay

This gem can be used to determine whether a date is a banking day in a given country. It can also be used to find the next banking day in a given country.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'banking_day'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install banking_day

## Usage

Two classes can be called. One determines the next banking day. The other determines if a given date is a banking day or not.

```
BankingDay::NextBankingDay.next_banking_day
# returns DateTime for next banking day

BankingDay::IsBankingDay.is_banking_day('2018-01-02')
# returns true or false
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/banking_day. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the BankingDay project’s codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/[USERNAME]/banking_day/blob/master/CODE_OF_CONDUCT.md).
