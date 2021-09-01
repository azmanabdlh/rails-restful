seeders = Dir[File.join(Rails.root, 'db/seeders', '*_*_seeder.rb')]


puts 'Seeds running....'

seeders.sort.each do |seed|
  # load each seeders.
  load seed
end

puts 'Seeds run successfully✨'
