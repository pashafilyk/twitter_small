class PersonsController < ApplicationController
  def profile
    @post = Post.new
    @posts = Post.where(user: current_user.following)
    @my_post = Post.where(user: current_user.id)
    @users = User.all
  end
  
end
