class PostsController < ApplicationController
  def index
    @posts = Post.all
    @post = Post.new
  end

  def show
    @posts=current_user.posts
  end

  def create
    post_params = params.require(:post).permit(:text)
    @post = Post.new(post_params.merge(user_id: current_user.id))
    @post.save
    redirect_to '/posts'
  end
  
  def destroy
    @post = Post.where(user_id: current_user.id).find(params[:id])
    @post.destroy
    redirect_to '/posts/:id'
  end
end
