class Admin::UsersController < ApplicationController

  before_action :set_user, only: [:show, :edit, :update, :destroy]

  def set_user
    @user = User.find(params[:id])
  end

  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      flash[:notice] = "User has been created."
      redirect_to @user
    else
      flash.now[:alert] = "User has not been created."
      render "new"
    end
  end

  #def edit
    #@user = User.find(params[:id])
  #end

  def update
    #@user = User.find(params[:id])
    if @user.update(user_params)
      flash[:notice] = "User has been updated."
      redirect_to admin_users_url
    else
      flash.now[:alert] = "User has not been updated."
      render "edit"
    end
  end

  def destroy
    #@user = User.find(params[:id])
    @user.destroy
    flash[:notice] = "User has been deleted."
    redirect_to admin_users_path
  end

  private

  def user_params
    params.require(:user).permit(:firstname, :lastname)
  end

end
