40.times do
    # Find random entry model.
    user = User.all.sample
    post = Post.all.sample

    Reply.create(
        content: Faker::Lorem.sentence,
        post: post,
        user: user
    )
end