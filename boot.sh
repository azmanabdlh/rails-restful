bin/bundle install
bin/rake db:migrate:reset
bin/rake db:seed
puts '='*20
bin/bundle s
puts '='*20
bin/rails s -e production
