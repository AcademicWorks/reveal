# encoding: utf-8

require 'rubygems'
require 'bundler'
begin
  Bundler.setup(:default, :development)
rescue Bundler::BundlerError => e
  $stderr.puts e.message
  $stderr.puts "Run `bundle install` to install missing gems"
  exit e.status_code
end
require 'rake'

require 'jeweler'
Jeweler::Tasks.new do |gem|
  # gem is a Gem::Specification... see http://docs.rubygems.org/read/chapter/20 for more options
  gem.name = "reveal"
  gem.homepage = "http://github.com/AcademicWorks/reveal"
  gem.license = "MIT"
  gem.summary = %Q{Reads files and doesn't let compression get in the way}
  gem.description = %Q{It will unzip files if necessary, but you give it a file at it will give you the contents back}
  gem.email = "ascruggs@academicworks.com"
  gem.authors = ["Aaron Scruggs"]
  # dependencies defined in Gemfile
end
Jeweler::RubygemsDotOrgTasks.new

require 'rake/testtask'
Rake::TestTask.new(:test) do |test|
  test.libs << 'lib' << 'test'
  test.pattern = 'test/**/test_*.rb'
  test.verbose = true
end

task :default => :test