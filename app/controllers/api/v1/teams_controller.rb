class Api::V1::TeamsController < ApplicationController
  before_action :set_team, only: [:show, :edit, :update, :destroy]
  before_action :redirect_if_not_logged_in
  before_action :authenticate_user!, only: [:update, :destroy]

  def new
    user = User.new
  end

  # GET /teams
  def index
      @teams = current_user.teams
      render json: @teams
    #render json: Team.all.map { |team| TeamSerializer.new(team) }
  end

  # GET /teams/1
  def show
    team = Team.find(params[:id])
    render json: TeamSerializer.new(team)
  end

  # POST /teams
  def create
    team = Team.new(team_params)

    if team.save
      render json: TeamSerializer.new(team)
    else
      render json: { errors: team.errors.full_messages }
    end
  end

  # PATCH/PUT /teams/1
  def update
    team = Team.find(params[:id])

    if team.update(team_params)
      render json: TeamSerializer.new(team)
    else
      render json: { errors: team.errors.full_messages }
    end
  end

  # DELETE /teams/1
  def destroy
    team = Team.find(params[:id])

    if team.destroy
      render json: TeamSerializer.new(team)
    else
      render json: { errors: team.errors.full_messages }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_team
      team = Team.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def team_params
      params.require(:team).permit(:img_src, :city, :name, :wins, :losses, :likes, :conference_rank)
    end
end
