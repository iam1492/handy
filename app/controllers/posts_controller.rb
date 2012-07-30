class PostsController < ApplicationController
  before_filter :authenticate_user! except: [:show]
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
