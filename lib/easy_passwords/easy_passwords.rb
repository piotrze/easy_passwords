require 'easy_passwords/wordlist'
require 'securerandom'

# Public: EasyPasswords is a Ruby implementation of passwdqc's easy_passwords password
# generator.
#
# Examples
#
#   EasyPasswords.generate
#   # => "merger4Hick"
#
#   EasyPasswords.new.generate
#   # => "employ-Royal"
#
# 	EasyPasswords::Generator.new.generate
# 	# => "Beige7Jacob2"
#
# 	EasyPasswords::Generator.new.generate 4
# 	# => "min5"
#
module EasyPasswords
  DEFAULT_MAX_LENGTH = 12
  MIN_WORD_LENGTH = 3
  MAX_WORD_LENGTH = 6
  SEPARATORS = '-123456789'.freeze

  # Public: Returns a random generated password string.
  #
  # max_length - max number of characters used in password, it could generate password shorter by 3 characters.
  # separators - list of separators as a String
  #
  # Example
  #
  # 	generate 8
  # 	# => "Fun-Crop"
  #
  # 	generate 8, '01'
  # 	# => "Fun0Crop"
  #
  # 	generate
  # 	# => "spate7Coup"
  #
  # Returns a password string.
  def self.generate(max_length = DEFAULT_MAX_LENGTH, separators = SEPARATORS)
    self::Generator.new(separators).generate max_length
  end

  def self.new
    self::Generator.new
  end

  class Generator
    def initialize(separators = EasyPasswords::SEPARATORS)
      @@wordlist_size = @@wordlist.length
      @@separators = separators
      @@separators_size = @@separators.length
      @rand = SecureRandom
    end

    # Public: Returns a random generated password string.
    #
    # max_length - max number of characters used in password, it could generate password shorter by 3 characters.
    #
    # Example
    #
    # 	generate 8
    # 	# => "Fun_Crop"
    #
    # 	generate
    # 	# => "spate7Coup"
    #
    # Returns a password string.
    def generate(max_length = EasyPasswords::DEFAULT_MAX_LENGTH)
      fail "Password minimal length is #{EasyPasswords::MIN_WORD_LENGTH}" if max_length < EasyPasswords::MIN_WORD_LENGTH
      output = ''
      while output.size < (max_length - (EasyPasswords::MIN_WORD_LENGTH - 1))
        add_part(output, max_length)
      end
      output
    end

    private

    def choose_word_length(max_length, pass_size)
      if pass_size == 0
        if max_length < (EasyPasswords::MIN_WORD_LENGTH * 2 + 1)
          max_length
        else
          max_length / 2
        end
      else
        max_length - pass_size
      end
    end

    def random_word(maxsize = EasyPasswords::MAX_WORD_LENGTH)
      list = if maxsize < EasyPasswords::MAX_WORD_LENGTH
               @@wordlist.select { |w| w.size <= maxsize }
             else
               @@wordlist
             end
      word = list[@rand.random_number(list.size)]
      @rand.random_number(2) == 0 ? word.capitalize : word
    end

    def add_part(output, max_length)
      output << random_word(choose_word_length(max_length, output.size))
      output << @@separators[@rand.random_number(@@separators_size)] if output.size < max_length
    end
  end
end
