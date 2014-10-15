# easy_passwords.rb

[![Build Status](https://secure.travis-ci.org/iphoting/easy_passwords.rb.png)](http://travis-ci.org/iphoting/easy_passwords.rb) [![Dependency Status](https://gemnasium.com/iphoting/easy_passwords.rb.png)](https://gemnasium.com/iphoting/easy_passwords.rb)

easy_passwords.rb is a Ruby implementation of passwdqc's easy_passwords, a random pronouncable password generator.

## Installation

```
gem install easy_passwords
```

```
gem easy_passwords

## Goals
Passwords are easily to read
You can setup max password length in characters(usefull when sending password in sms message)

## Usage

### Ruby App
You can `require` it within your app:
```
require 'rubygems'
require 'easy_passwords'

p EasyPassword.generate             # => "Image&Both-action"
p EasyPassword.generate 5           # => "Alaska_Union9Calf=domain&ever"

pgen = EasyPassword.new             # => #<EasyPasswords::Generator:0x9f6ec40 ...>
p pgen.generate               # => "String5Rebel+horse"
p pgen.generate 2             # => "Easily2desist"
```

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b feature/my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin feature/my-new-feature`)
5. Create new Pull Request

## Credits
- Based on gem https://github.com/iphoting/easy_passwords.rb
- Original Design and C implementation from <http://www.openwall.com/passwdqc/> by Solar Designer.

