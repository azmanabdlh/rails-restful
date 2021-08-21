# Load the Rails application.
require_relative "application"

# Initialize the Rails application.
Rails.application.initialize!

ENV['RAILS_DB_NAME'] = ''
ENV['RAILS_DB_USERNAME'] = ''
ENV['RAILS_DB_PASSWORD'] = ''
ENV['RAILS_DB_SOCKET'] = '/tmp/mysql.sock'