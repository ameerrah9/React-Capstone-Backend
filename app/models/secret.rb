class Secret < ApplicationRecord
    validates :content, presence: true
end
