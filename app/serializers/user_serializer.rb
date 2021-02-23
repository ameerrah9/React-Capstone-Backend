class UserSerializer
  include FastJsonapi::ObjectSerializer
  attributes :id, :firstname, :lastname, :username, :location, :email, :img_src, :favorites, :password_digest
end
