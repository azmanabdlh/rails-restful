class Post < ApplicationRecord
  belongs_to :user
  has_many :replies
  has_and_belongs_to_many :tags, join_table: :posts_taggables

  scope :published, -> { where(is_active: true) }
  scope :rejected, -> { where.not(is_active: true) }
end

