class User < ApplicationRecord
    has_secure_password

    validates :firstname, :lastname, :img_src, :location, presence: true
    validates :email, :username, presence: true, uniqueness: true

    has_many :teams
    has_many :secrets
end
