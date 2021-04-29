class User < ApplicationRecord
    has_secure_password
    validates :username, presence: true, uniqueness: true
    validates :password, presence: true, confirmation: true, length: { in: 6..20 }
    validates :password_confirmation, presence: true

    has_many :albums, dependent: :destroy 
    has_one_attached :image
end
