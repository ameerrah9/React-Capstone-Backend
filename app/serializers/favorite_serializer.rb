class FavoriteSerializer
  include FastJsonapi::ObjectSerializer
  attributes :team
  belongs_to :user
end
