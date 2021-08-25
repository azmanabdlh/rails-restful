30.times do
  # Find random user.
  user = User.all.sample

  Post.create(
    title: Faker::Lorem.sentence,
    description: Faker::Lorem.paragraph,
    user: user
  )
end
