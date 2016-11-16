class ProfilesController < ApplicationController

  #def index
  #  @users = User.paginate(:page => params[:page], :per_page => 9) 
  #end

  def show
    @user = User.find(params[:id])
    respond_to do |format|
      format.html
      format.json { render json: @tour }
    end  
  end

  #def new
  #end

  #def create
  #end

  #def edit
  #end

  #def update
  #end

  #def destroy
  #end

end
