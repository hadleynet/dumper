require "dumper/version"
require 'health-data-standards'

db_host = ENV['TEST_DB_HOST'] || 'localhost'

Mongoid.configure do |config|
  config.sessions = { default: { hosts: [ "#{db_host}:27017" ], database: 'monger-test' }}
end

module Dumper
  # Your code goes here...
end
