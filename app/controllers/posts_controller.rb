class PostsController < ApplicationController

  before_action :fetch_post, only: [:show, :edit, :update, :destroy]

  def index
    @posts = Post.all.order("created_at DESC")
  end

  def show
    respond_to do |format|
      format.html
      format.json { render json: @post }
    end
  end

  def new
    @post = Post.new
  end

  def create
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def post_params
    params.require(:posts).permit()
  end
  def fetch_post
    @post = Post.find(params[:id])
  end
end
