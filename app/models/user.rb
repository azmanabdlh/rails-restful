class User < ApplicationRecord
    has_secure_password
    has_many :posts

    # validations
    validates :name, presence: true
    validates :username, presence: true, uniqueness: true, length: { minimum: 5 }
    validates :email, presence: true, uniqueness: true
    validates :password, presence: true

end
