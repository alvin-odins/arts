class PostsController < ApplicationController

  before_action :fetch_post, only: [:show, :edit, :update, :destroy]

  def show
    
    respond_to do |format|
      format.html
      format.json { render json: @post }
    end
  end

  def index
    @posts = Post.all

    # respond_to do |format|
    #   format.json { render json: @posts }
    # end
  end

  def new

  end

  def edit

  end

  def update

  end

  def destroy

  end

  private

  def fetch_post
    @post = Post.find(params[:id])
  end
end
