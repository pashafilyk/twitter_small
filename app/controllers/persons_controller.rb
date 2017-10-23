class PersonsController < ApplicationController
  def profile
    @post = Post.new
    @posts = Post.where(user: current_user.following)
    @my_post = Post.where(user: current_user.id)
    @all_user = User.where('id != ?', current_user.id)
  end
  
end
