# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require 'easy_passwords/version'

Gem::Specification.new do |s|
  s.name        = 'easy_passwords'
  s.version     = EasyPasswords::VERSION
  s.summary     = "Easy passwords generator in Ruby"
  s.description = "Easy password is a Ruby implementation of passwdqc's easy_passwords, a random pronouncable password generator. Probably don't use it in banks."
  s.authors     = ["Pete"]
  s.email       = 'piotr.bliszczyk@gmail.com'
  s.homepage    = 'https://github.com/piotrze/easy_passwords'

  s.files       = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ['lib']

  s.add_development_dependency 'rake'
  s.add_development_dependency 'rspec'
end
