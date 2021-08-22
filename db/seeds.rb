Faker::Config.locale = 'id'

20.times do
    # users
    User.create(
        name: Faker::Name.name,
        username: Faker::Internet.user_name,
        email: Faker::Internet.safe_email,
        password: 'password'
    )
end


10.times do
    user = User.all.sample
    # posts
    Post.create(
        title: Faker::Lorem.sentence,
        description: Faker::Lorem.paragraph,
        user: user
    )
end


20.times do
    user = User.all.sample
    post = Post.all.sample
    # replies
    Reply.create(
        content: Faker::Lorem.sentence,
        post: post,
        user: user
    )
end