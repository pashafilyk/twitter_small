class PostsController < ApplicationController
  def index
    @post = Post.all
  end

  def new

  end

  def create
    @post = Post.new(post_params)
    @post.user_id = current_user.id
    @post.save
    redirect_to user_root_path
  end

  def show
    @post = Post.find(params[:id])
  end

  def edit
    @post =Post.find(params[:id])
  end

  def update
    @post = Post.find(params[:id])

    if @post.update(post_params)
      redirect_to @post
    else
      render 'edit'
    end
  end

  def destroy
    @post = Post.find(params[:id])
    @post.destroy

    redirect_to posts_path
  end

  private

  def post_params
    params.require(:post).permit(:text)
  end
end
