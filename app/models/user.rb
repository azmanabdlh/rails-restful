class User < ApplicationRecord
  has_secure_password
  has_many :posts
  has_one_attached :avatar, dependent: true

  # validations
  validates :name, presence: true
  validates :username, presence: true, uniqueness: true
  validates :email, presence: true, uniqueness: true
  validates :password, presence: true
  validates :avatar, attached: true, content_type: %i[png jpg], size: { less_than: 200.kilobytes }

end
