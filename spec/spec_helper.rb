# ensure the following is AT THE TOP of your spec_helper.rb to get test coverage stats
require 'coveralls'
require 'simplecov'

SimpleCov.formatters = [
  SimpleCov::Formatter::HTMLFormatter,
  Coveralls::SimpleCov::Formatter
]
Coveralls.wear!
# replace following line with SimpleCov.start to get coverage stats locally
SimpleCov.start
# run `open coverage/index.html` from the command line to view details

ENV['RACK_ENV'] = 'test'
require File.join(File.dirname(__FILE__), '..', './app/rps_web.rb')

require 'capybara'
#require 'capybara/spec'
require 'rspec'
require 'byebug'

Capybara.app = Rps
