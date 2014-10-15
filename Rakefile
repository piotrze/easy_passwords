#!/usr/bin/env rake
require 'rubygems'
require "bundler/gem_tasks"
require "rspec/core/rake_task"

RSpec::Core::RakeTask.new do |spec|
	spec.rspec_opts = ['-f d', '--color']
end

task :default => :test
task :test => [:spec]

