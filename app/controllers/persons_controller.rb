class PersonsController < ApplicationController
  def profile
    @post = Post.new
    @posts = Post.where(:posts => { :user_id => current_user.id })
  end
end
