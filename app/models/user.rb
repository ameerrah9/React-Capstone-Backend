class User < ApplicationRecord
    has_secure_password
    has_secure_password :recovery_password, validations: false

    validates :firstname, :lastname, :img_src, :location presence :true
    validates :email, :username, presence: true, uniqueness: true

    has_many :teams
end
