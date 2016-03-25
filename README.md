# easy_passwords.rb

[![Build Status](https://travis-ci.org/piotrze/easy_passwords.svg?branch=master)](https://travis-ci.org/piotrze/easy_passwords)

easy_passwords.rb is a Ruby implementation of passwdqc's easy_passwords, a random pronouncable password generator.

## Installation

```
gem install easy_passwords
```

```ruby
#Gemfile
gem 'easy_passwords'
```

## Goals
- Passwords are easily to read
- You can setup max password length in characters(useful when sending password in sms message)
- You can define separators list

## Usage

### Ruby App
You can ```require``` it within your app:

```ruby
require 'rubygems'
require 'easy_passwords'

p EasyPassword.generate             # => "employ7Royal"
p EasyPassword.generate 5           # => "Peach"
p EasyPassword.generate 7, '|'      # => "cat|eat"
p EasyPassword.generate 15          # => "soggy*Apart9Odd"
p EasyPassword.generate 2           # => raise error, min length is 3

gen = EasyPassword.new             # => #<EasyPasswords::Generator:0x9f6ec40 ...>
p gen.generate                     # => "employ7Royal"
p gen.generate 15                  # => "soggy*Apart9Odd"


my_gen = EasyPassword.new('|')  # => #<EasyPasswords::Generator:0x9f6ec40 ...>
p my_gen.generate               # => "employ|Royal"
p my_gen.generate 15            # => "soggy|Apart|Odd"
```

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b feature/my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin feature/my-new-feature`)
5. Create new Pull Request

## Credits
- Based on gem https://github.com/iphoting/pwqgen.rb
- Original Design and C implementation from <http://www.openwall.com/passwdqc/> by Solar Designer.

## Legal

[Licensed under the MIT license](http://www.opensource.org/licenses/mit-license.php)
