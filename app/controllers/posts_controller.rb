class PostsController < ApplicationController
  before_action :load_post_and_comment, only: :show
  before_action :authenticate_user!

  def index
    @posts = Post.page(params[:page]).per 5
  end

  def show
    @comment = @post.comments.new
  end

  def new
    @new_post = Post.new
  end

  def create
    return if Post.create post_params
    flash.now[:danger] = t "post.create.error"
  end

  private

  def load_post_and_comment
    @post = Post.find_by id: params[:id]
    @comments = @post.comments.ordered_by_created_at
    return if @post
    flash[:danger] = t "load.not_find.post"
    render :index
  end

  def post_params
    params.require(:post).permit :title, :content, :user_id
  end
end
