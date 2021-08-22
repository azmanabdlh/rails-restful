json.extract! user, :id, :name, :username, :email, :created_at, :updated_at
# load relationship
json.posts do
    json.array! user.posts, partial: '/posts/post', as: :post
end
json.url user_url(user, format: :json)
