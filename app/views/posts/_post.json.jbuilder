json.extract! post, :id, :title, :description, :user_id, :created_at, :updated_at, :tags
json.replies do
  json.array! post.replies, partial: 'replies/reply', as: :reply
end
json.url post_url(post, format: :json)
