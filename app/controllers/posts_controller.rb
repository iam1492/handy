class PostsController < ApplicationController
  before_filter :authenticate_user!, :except => [:show]
  def create
  	@post = current_user.posts.build(params[:post])
  	@post.save
  end

  def show
  	@post = Post.find(params[:id])
  end

  def destroy
  end
end
