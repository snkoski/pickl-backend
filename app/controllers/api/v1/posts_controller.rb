class Api::V1::PostsController < ApplicationController
  before_action :find_post, only: [:update, :show]
  def index
    @posts = Post.all
    render json: @posts
  end

  def show
    @post
    render json: @post
  end

  def update
    @post.update(post_params)
    if @post.save
      render json: @note, status: :accepted
    else
      render json: { errors: @post.errors.full_messages }, status: :unprocessible_entity
    end
  end

  private

  def post_params
    params.permit(:home_team_id, :away_team_id, :game_time, :home_likes, :away_likes, :post_likes)
  end

  def find_post
    @post = Post.find(params[:id])
  end
end
