
DEFAULT_AVATAR = Rails.root.join('app/assets/images', 'default-avatar.jpeg').freeze

10.times do

  user = User.new
  user.name = Faker::Name.name
  user.username = Faker::Internet.user_name
  user.email = Faker::Internet.safe_email
  user.password = 'password'

  file = File.open(DEFAULT_AVATAR)
  user.avatar.attach(io: file, filename: 'default-avatar.jpeg')

  user.save!
end
