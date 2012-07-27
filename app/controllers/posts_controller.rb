class PostsController < ApplicationController
  def create
  	@post = Post.new(params[:post])
  	if @post.save
        format.json {render json: @post}
      else
        format.json {render json: @post.errors}
      end
  end

  def show
  	@post = Post.find(params[:id])
  end

  def destroy
  end
end
