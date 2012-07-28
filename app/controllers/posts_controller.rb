class PostsController < ApplicationController
  def create
  	@post = Post.new(params[:data])
  	@post.save
  end

  def show
  	@post = Post.find(params[:id])
  end

  def destroy
  end
end
