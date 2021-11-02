class PostsController < ApplicationController
  def index
    @posts = Post.all
    @post = Post.new
  end

  def create
    post_params = params.require(:post).permit(:text)
    @post = Post.new(post_params.merge(user_id: current_user.id))
    @post.save
    redirect_to '/posts'
  end
end
