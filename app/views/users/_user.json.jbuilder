json.extract! user, :id, :name, :username, :email, :created_at, :updated_at
# load relationship
json.posts do
  json.array! user.posts, partial: '/posts/post', as: :post
end
json.url user_url(user, format: :json)
json.avatar do
  if user.avatar.attached?
    json.merge! url_for(user.avatar)
  else
    json.null!
  end
end
