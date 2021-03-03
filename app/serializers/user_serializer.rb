class UserSerializer
  include FastJsonapi::ObjectSerializer
  attributes :firstname, :lastname, :username, :location, :email, :img_src
  has_many :favorites, serializer: FavoriteSerializer
end
