50.times do
  Tag.create!(
    name: Faker::Games::Pokemon.name
  )
end


10.times do
  post = Post.all.sample
  tag = Tag.all.sample

  post.tags << tag
end
