class PostsController < ApplicationController
  before_action :set_post, only: ["show", "edit", "update", "destroy"]





  def index
    @posts = Post.all
  end

  def show
    set_post
  end

  def new
    @post = Post.new
  end

  def edit
  end

  def create
    @post = Post.new(post_params)
    if @post.save
      redirect_to @post, notice: 'Created successfully!'
    else
      render :new
    end
  end

  



  private
  # Use callbacks to share common methods between actions.
  def set_post
    @post = Post.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def post_params
    params.require(:post).permit(:title, :excerpt, :body, :coverpic)
  end
end
