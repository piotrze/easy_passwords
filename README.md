# easy_passwords.rb

easy_passwords.rb is a Ruby implementation of passwdqc's easy_passwords, a random pronouncable password generator.

## Installation

```
gem install easy_passwords
```

```
gem easy_passwords
```

## Goals
Passwords are easily to read
You can setup max password length in characters(useful when sending password in sms message)

## Usage

### Ruby App
You can `require` it within your app:
```
require 'rubygems'
require 'easy_passwords'

p EasyPassword.generate             # => "employ7Royal"
p EasyPassword.generate 5           # => "Peach"
p EasyPassword.generate 15          # => "soggy*Apart9Odd"
p EasyPassword.generate 2           # => raise error, min length is 3

gen = EasyPassword.new             # => #<EasyPasswords::Generator:0x9f6ec40 ...>
p gen.generate               # => "employ7Royal"
p gen.generate 15             # => "soggy*Apart9Odd"
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

