class ImagesController < ApplicationController
  def index
    @images = Image.all
  end

  def show
    @image = Image.find(params[:id])
  end
 
  def new
    @image = Image.new
  end
 
  def create
    @image = Image.new(params[:image])
    if @image.save
      redirect_to @image
    else
      redirect_to images_path
    end
  end
 
  def edit
    @image = Image.find(params[:id])
  end
 
  def update
    @image = Image.find(params[:id])
    if @image.update_attributes(params[:image])
      redirect_to @image
    end
  end
end
