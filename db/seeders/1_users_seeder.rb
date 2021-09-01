20.times do

  user = User.new
  user.name = Faker::Name.name
  user.username = Faker::Internet.user_name
  user.email = Faker::Internet.safe_email
  user.password = 'password'

  file = File.open(File.join(Rails.root, 'app/assets/images', 'default-avatar.jpeg'))
  user.avatar.attach(io: file, filename: 'default-avatar.jpeg', content_type: 'image/jpeg')

  user.save!
end
