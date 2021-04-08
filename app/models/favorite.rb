class Favorite < ApplicationRecord
    belongs_to :user
    belongs_to :team
    validates :team, uniqueness: true

end
