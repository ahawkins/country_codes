# CountryCodes

A library for looking up country codes and other meta data

## Installation

Add this line to your application's Gemfile:

    gem 'country_codes'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install country_codes

## Usage

```ruby
require 'country_codes'

# Phone number must only be this format: /^\+\d+$/

> CountryCodes.from_phone_number '+3585032139876'
=> <struct CountryCodes::Entry name="Finland", calling_code=358, code=:fi>
```

### Updating

All information is stored in `dictionary.yml`. If you see a simple
problem, please use Github's "Propose File Change" functionality to edit
the file inline and submit a pull request.

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Added some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
