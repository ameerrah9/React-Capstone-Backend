class TeamSerializer
  include FastJsonapi::ObjectSerializer
  attributes :img_src, :city, :name, :wins, :losses, :likes, :conference_rank

end
