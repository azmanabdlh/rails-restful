# Load the Rails application.
require_relative "application"

# Initialize the Rails application.
Rails.application.initialize!

ENV['RAILS_DB_NAME'] = 'blog_app'
ENV['RAILS_DB_USERNAME'] = 'azmanabdlh'
ENV['RAILS_DB_PASSWORD'] = 'root'
ENV['RAILS_DB_SOCKET'] = '/tmp/mysql.sock'