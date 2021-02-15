class Api::V1::TeamsController < ApplicationController

  # GET /teams
  def index
    @teams = Team.all

    render json: TeamSerializer.new(@teams)
  end

  # GET /teams/1
  def show
    @team = Team.find(params[:id])
    render json: TeamSerializer.new(@team)
  end

  private
  
    # Only allow a trusted parameter "white list" through.
    def team_params
      params.require(:team).permit(:logo_url, :city, :name, :wins, :losses, :conference_rank)
    end
end
