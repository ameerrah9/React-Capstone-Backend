class TeamSerializer
  include FastJsonapi::ObjectSerializer
  attributes :id, :logo_url, :city, :name, :wins, :losses, :conference_rank

end
