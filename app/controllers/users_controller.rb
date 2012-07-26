class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    respond_to do |format|
      format.json {render json: @user}
    end
  end

  def index
    @users = User.all
    respond_to do |format|
      format.json  {render json: @users}
    end
  end

  def create
    @user = User.new(params[:user])

    respond_to do |format|
      if @user.save
        format.json {render json: @user}
      else
        format.json {render json: @user.errors}
      end
    end
  end
end
