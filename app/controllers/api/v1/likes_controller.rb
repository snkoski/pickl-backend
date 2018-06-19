class Api::V1::LikesController < ApplicationController
before_action :find_like, only: [:update]
  def index
    @likes = Like.all
    render json: @likes
  end

  def update
    @like.update(like_params)
    if @like.save
      render json: @like, status: :accepted
    else
      render json: { errors: @like.errors.full_messages }, status: :unprocessible_entity
    end
  end

  private

  def like_params
    params.permit(:team_id)
  end

  def find_like
    @like = Like.find(params[:id])
  end

end
