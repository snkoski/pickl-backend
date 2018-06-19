class Api::V1::TeamsController < ApplicationController
  before_action :find_note, only: [:update]
  def index
    @teams = Team.all
    render json: @teams
  end

  def update
    @team.update(team_params)
    if @team.save
      render json: @team, status: :accepted
    else
      render json: { errors: @team.errors.full_message }, status: :unprocessible_entity
    end
  end

  private

  def team_params
    params.permit(:name, :city, :abbreviation)
  end

  def find_team
    @team = Team.find(params[:id])
  end
end
