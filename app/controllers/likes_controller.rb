class LikesController < ApplicationController
  def index
     @like = Like.all
     counter = Like.where(user_id: like_params[:user_id]).count
  end

  def new
  end

  def create
    # user = User.find(secret_params[:id].to_i)
    @like = Like.create(secret_id: like_params[:secret_id], user_id: like_params[:user_id])
    redirect_to '/secrets'
  end

  # def counter
  #   counter Like.where(user_id: 1).count
  # end

  def show
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private
    def like_params
      params.require(:like).permit(:secret_id, :user_id)
    end
end
