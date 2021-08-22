20.times do
    User.create(
        name: Faker::Name.name,
        username: Faker::Internet.user_name,
        email: Faker::Internet.safe_email,
        password: 'password'
    )
end
